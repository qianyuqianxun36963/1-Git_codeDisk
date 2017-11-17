package u.utils;

import java.io.UnsupportedEncodingException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.dao.DataAccessException;
import org.springframework.data.redis.connection.RedisConnection;
import org.springframework.data.redis.core.BoundHashOperations;
import org.springframework.data.redis.core.BoundListOperations;
import org.springframework.data.redis.core.ListOperations;
import org.springframework.data.redis.core.RedisCallback;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.core.ValueOperations;
import org.springframework.stereotype.Component;

/**
 * Redis 缓存操作类
 * @author thinkpad
 *
 */
@Component(value="RedisUtil")
public class RedisUtil {

	/**
	 * Redis 模板注入
	 */
	@Resource
	private RedisTemplate<String,Object> redisTemplate;

	/***
	 * 日志工具
	 */
	public static Logger logger = Logger.getLogger(RedisUtil.class);
	
	public long deleteByKeyPattern(String pattern)
	{
	    Set<String> keys = redisTemplate.keys(pattern+"*");
	    for (String key : keys)
        {
	    	redisTemplate.delete(key);
        }
	    return 1l;
	}
	/**
	 * 功能描述：key value添加元素
	 * @param key
	 * @param value
	 * @throws UnsupportedEncodingException
	 */
	public void put(String key, String value) throws UnsupportedEncodingException 
	{
		//获取jedis操作String 类
		ValueOperations<String, Object> ops = redisTemplate.opsForValue();
		//调用api添加元素
		ops.set(key, value.toString());
	}
	
	/**
	 * 功能描述：这种可以设置缓存过期时间 暂未使用
	 * @param key
	 * @param value
	 * @param liveTime
	 */
	public void set(final byte[] key, final byte[] value, final long liveTime) {
	        
	        redisTemplate.execute(new RedisCallback<Object>() {
	            public Long doInRedis(RedisConnection connection) throws DataAccessException {
	                connection.set(key, value);
	                if (liveTime > 0) {
	                    connection.expire(key, liveTime);
	                }
	                return 1L;
	            }
	        });
	   }
	
	/**
	 * 功能描述：加入map集合
	 * @param key
	 * @param map
	 */
	public void put(String key , Map<String, String> map){
	    //获取jedis操作String 类  加入db库
	    BoundHashOperations<String, String, String> ops = redisTemplate.boundHashOps(key);
	    for(Map.Entry<String, String> entry : map.entrySet())
	    {
	        ops.put(entry.getKey().toString(), entry.getValue().toString());
	    }
	}
	
	/**
	 * 功能描述：加入list集合
	 * @param key
	 * @param list
	 */
	public void put(String key,List<Object> list){
        redisTemplate.opsForList().leftPushAll(key, list);
    }
	
	/**
	 * 功能描述：向Map中添加元素，覆盖式添加
	 * @param key
	 * @param mapKey
	 * @param value
	 */
	 public void putAsMapValue(String key,String mapKey , String value){
	      //可以理解成在库下面进行key  value操作
	      BoundHashOperations<String, String, String> ops = redisTemplate.boundHashOps(key);
	      ops.put(mapKey, value);
	  }
	 
	 /**
	  * 功能描述：向list中添加元素，覆盖式添加
	  * @param key
	  * @param value
	  */
	 public void putAsListValue(String key,String value){
         //list 操作类
         ListOperations<String, Object> opsForList = redisTemplate.opsForList();
         //先获取 判断是否数据存在
         List<Object> data = getDataFromList(key);
         //存在标识符
         boolean flag=false;
         for (Object object : data){
             if(value.equals(object.toString())){
                flag=true;
             }
         }
         if(!flag){
            opsForList.leftPush(key, value);
         }
	  }
	 
	 /**
	  * 功能描述：删除key  传多key
	  * @param keys
	  * @return
	  */
	public long del(final String... keys){
		 for (int i = 0; i < keys.length; i++) {
		     //删除数据
		     redisTemplate.delete(keys[i]);
         }
		 return 1l;
	 }
	
	 /**
	  * 功能描述：批量删除key 传list
	  * @param list
	  * @return
	  */
	 public long del(final List<String> list) {
         for (int i = 0; i < list.size(); i++) {
             redisTemplate.delete(list.get(i));
         }
         return 1l;
     }
	
	 /**
	  * 功能描述：删除map中指定的key值
	  * @param tableName
	  * @param keys
	  * @return
	  */
	 public long delDataFromMap(String tableName,final String... keys){
	     BoundHashOperations<String, String, String> ops = redisTemplate.boundHashOps(tableName);
	     for (int i = 0; i < keys.length; i++) {
//	         System.out.println(ops.entries().get(keys[i]));
	         if(ops.hasKey(keys[i])){
	             ops.delete(keys[i]);
	         }
         }
	     return 1l;
	 }
	 
	 /**
	  * 功能描述：删除map中指定的数据
	  * @param key
	  * @param values
	  * @return
	  */
     public long delDataFromList(String key,final String... values){
         ListOperations<String, Object> opsForList = redisTemplate.opsForList();
         for (String value : values){
             opsForList.remove(key, 1l, value);
         }
         return 1l;
     }
	
     /**
      * 功能描述：Redis获取对象的方法
      * @param key
      * @return
      */
 	public Object get(String key) {
 		ValueOperations<String, Object> ops = redisTemplate.opsForValue();
 		Object object=ops.get(key);   
 		return object;
 	}
 	
 	/**
 	 * 功能描述：通过map名称回去map数据
 	 * @param tableName
 	 * @return
 	 */
	public Map<String, String> getMapData(String tableName){
	    BoundHashOperations<String, String, String> ops = redisTemplate.boundHashOps(tableName);
	    Map<String, String> resultMap=new HashMap<String,String>();
	    resultMap=ops.entries();
	    return resultMap;
	}
	
	/**
	 * 功能描述：获取list数据
	 * @param key
	 * @return
	 */
	public List<Object> getDataFromList(String key){
        BoundListOperations<String,Object> listOps = redisTemplate.boundListOps(key);
        List<Object> list = listOps.range(0, listOps.size());
        return list;
    }
	
	/**
	 * 功能描述：根据Key设置过期时间
	 * @param key
	 * @param timeoutValue
	 * @param unitTime
	 */
    public void setExpire4Key(final String key,Long timeoutValue,TimeUnit unitTime){
    	redisTemplate.expire(key, timeoutValue, unitTime);
    }
}
