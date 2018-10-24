package freemark.fileModel.ExportHtmlWithXml;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Properties;

public class PropertiesUtils {
	
//配置文件的路径名
private static String profilepath;
	
//最核心的类，在这里用他定义了一个实体，做属性。	
private static Properties file = null;
	
	/**
	 * <p>Description: 获取文件上传属性文件</p>
	 * @param key
	 * @return
	 * @throws IOException
	 */
	
	PropertiesUtils(String profilepath){
		PropertiesUtils.profilepath = profilepath;
	}

	public static String getFileConfigValue(String key){
		if(null!=file) return file.getProperty(key);
		try {
			file = loadProperties(profilepath);
			return file.getProperty(key);
		} catch (IOException e) {
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	
	public static void setFileConfigValue(String parameterName,String parameterValue){
		if(null!=file) {file.setProperty(parameterName, parameterValue);}
		else{
			try {
				file = loadProperties(profilepath);
				file.setProperty(parameterName, parameterValue);
				OutputStream fos = new FileOutputStream(profilepath);
				file.store(fos, "Update '" + parameterName + "' value");
			} catch (IOException e) {
				e.printStackTrace();
				throw new RuntimeException(e);
			}
		}
	}
	
	static Properties loadProperties(String fileName) throws IOException{
		InputStream in = null;
		try {
			//正真代码就是下面三句。
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

	public String getProfilepath() {
		return profilepath;
	}

	public static void setProfilepath(String profilepath) {
		PropertiesUtils.profilepath = profilepath;
	}

}


