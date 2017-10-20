package java语言.e_对接.数据库;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class PropertiesUtils {
private static Properties file = null;
	
	/**
	 * <p>Description: 获取文件上传属性文件</p>
	 * @param key
	 * @return
	 * @throws IOException
	 */

	//使用方式:PropertiesUtils.getFileConfigValue("ftp_file_url")

	public static String getFileConfigValue(String key){
		if(null!=file) return file.getProperty(key);
		try {
			file = loadProperties("config.properties");
			return file.getProperty(key);
		} catch (IOException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	static Properties loadProperties(String fileName) throws IOException{
		InputStream in = null;
		try {
			in = PropertiesUtils.class.getResourceAsStream(fileName);
			Properties properties = new Properties();
			properties.load(in);
			return properties;
		} catch (IOException e) {
			e.printStackTrace();
			throw new IOException(e);
		} finally{
			if(null!=in) in.close();
		}
	}
}
