package utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import org.springframework.beans.factory.InitializingBean;
import org.springframework.core.io.Resource;
import org.springframework.stereotype.Service;


/**
 * 初始化Properties加载配置
 * @author 15010866
 * @see [相关类/方法]（可选）
 * @since [产品/模块版本] （可选）
 */
public class PropertyUtil 
{
	/**
	 * 日志
	 */
    
	/**
	 * 参数map
	 */
    public static Map<String,String> fileParams = new HashMap<String,String>();
    
    /**
     * properties文件路径
     */
    private Resource[] filePaths;
    
	public Resource[] getFilePaths() 
	{
		return filePaths;
	}

	public void setFilePaths(Resource[] filePaths)
	{
		this.filePaths = filePaths;
	}

	public void afterPropertiesSet()
	{
		InputStream in  = null;
		try
		{
			if (this.filePaths != null) 
			{
				for (Resource filePath : filePaths)
				{
				    // 定义Properties property = new Properties();   
					Properties property = new Properties();  
					in  = filePath.getInputStream();
					//加载属性列表
					property.load(in);   
					Iterator<String> it=property.stringPropertyNames().iterator();
					while(it.hasNext())
					{
					    String key=it.next();
					    fileParams.put(key, property.getProperty(key));
					}
				} 
			}
		}
		catch (IOException e)
		{
//			logger.error("afterPropertiesSet", e.toString());
		}
		finally
		{
			if (in != null)
			{
				try 
				{
					in.close();
				}
				catch (IOException e) 
				{
//					logger.error("afterPropertiesSet", e.toString());
				}
			}
		}
	}

}
