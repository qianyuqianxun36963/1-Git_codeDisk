package u.utils;

import java.util.UUID;


/**
 * 类描述：	Java UUID 工具类<br/>
 * 
 * 功能描述: 根据要求生成唯一的UUID<br/>
 * 
 * @author 	[zhangChao]
 * 
 * @see 	[java.util.UUID]
 * 
 * @since 	[JDK 1.7] 
 * 
 * @version [1.0]
 * 
 * @Date    [2017-2-21 11:53:21]
 */
public class UUIDTool 
{
	
	/**
	 * UUID 生成静态方法
	 * 
	 * @return uuid [String] String类型的UUID
	 */
	public static synchronized String randomUUID()
	{
		String uuid = UUID.randomUUID().toString();
		uuid = uuid.replaceAll("-", "");
		return uuid;
	}
}
