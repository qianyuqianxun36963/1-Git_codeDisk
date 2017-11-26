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
 * ��ʼ��Properties��������
 * @author 15010866
 * @see [�����/����]����ѡ��
 * @since [��Ʒ/ģ��汾] ����ѡ��
 */
public class PropertyUtil 
{
	/**
	 * ��־
	 */
    
	/**
	 * ����map
	 */
    public static Map<String,String> fileParams = new HashMap<String,String>();
    
    /**
     * properties�ļ�·��
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
				    // ����Properties property = new Properties();   
					Properties property = new Properties();  
					in  = filePath.getInputStream();
					//���������б�
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
