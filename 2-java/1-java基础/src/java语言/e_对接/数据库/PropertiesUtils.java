package java����.e_�Խ�.���ݿ�;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class PropertiesUtils {
private static Properties file = null;
	
	/**
	 * <p>Description: ��ȡ�ļ��ϴ������ļ�</p>
	 * @param key
	 * @return
	 * @throws IOException
	 */

	//ʹ�÷�ʽ:PropertiesUtils.getFileConfigValue("ftp_file_url")

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
