package u.utils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;

public class XMLUtils {

	private static final Logger logger = LogManager.getLogger(XMLUtils.class);
	
	/**
	 * 获取节点信息
	 * @param xml
	 * @return
	 */
	public static Element getRootElement(String xml) {
		Document doc = null;
		Element root = null;
		try{
			doc = DocumentHelper.parseText(xml);
			root = doc.getRootElement();
		}catch(Exception e){
			logger.error(e.getMessage(),e);
		}
		return root;
	}
	
	/**
	 * 获取指定元素下所有节点属性
	 * @param element
	 * @return
	 */
	public static Map getNodeValues(Element element) {
		Element root = null;
		Map map = new HashMap();
		try{
			List list = element.elements();
			Element e = null;
			for(int i = 0;i < list.size();i++) {
				e = (Element)list.get(i);
				map.put(e.getName(), e.getText());
			}
		}catch(Exception e) {
			logger.error(e.getMessage(),e);
		}
		return map;
	}
	
	/**
	 * 获取指定节点属性值
	 * @param element
	 * @param attributeName
	 * @return
	 */
	public static String getElementAttributeValue(Element element,String attributeName) {
		String value = "";
		try{
			value = element.attributeValue("attributeName");
		}catch(Exception e) {
			logger.error(e.getMessage(),e);
		}
		return value;
	}
}
