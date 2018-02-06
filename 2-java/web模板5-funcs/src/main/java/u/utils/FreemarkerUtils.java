package u.utils;

import java.io.File;
import java.io.StringWriter;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.poi.Version;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import freemarker.template.Configuration;
import freemarker.template.Template;

public class FreemarkerUtils {
	private static Logger logger = LogManager.getLogger(FreemarkerUtils.class);
	
	/**
	 * 通过文件名加载模板
	 * @param request
	 * @param ftlName
	 * @param ftlPath
	 * @return
	 * @throws Exception
	 */
	public static Template getTemplate(String ftlName,String ftlPath) throws Exception{
		try{
			
			Configuration cfg = new Configuration(Configuration.VERSION_2_3_0);
			cfg.setEncoding(Locale.CHINA, "utf-8");
			cfg.setDirectoryForTemplateLoading(new File(ftlPath));
			Template temp = cfg.getTemplate(ftlName);
			return temp;
		}catch(Exception e){
			logger.error("加载模板失败,"+ftlName+",",e);
			throw e;
		}
	}
	
	/**
	 * 根据入参渲染指定的模板文件，并返回渲染结果
	 * @param ftlName 模板名称，不包含路径
	 * @param ftlPath 模板路径名，不包含模板名
	 * @param root
	 * @return
	 * @throws Exception
	 */
	public static String  renderTemplate(String ftlPath,String ftlName,Map<String,Object> root) throws Exception{
		try{
			StringWriter result = new StringWriter();
			Template t = getTemplate(ftlName,ftlPath);
			t.process(root, result);
			return result.toString();
		}catch(Exception e){
			logger.error("渲染模板失败，"+ e);
			throw e;
		}
	}

	public static void main(String[] args) {
		Map<String,Object> data = new HashMap<String,Object>();
		/*HttpServletRequest request = ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes()).getRequest();
		String ftlPath = request.getSession().getServletContext().getRealPath("template/ftl/");*/
		//System.out.println(FreemarkerUtils.class.getResource("/com").getPath().substring(1));
		String ftlPath = "E:/WorkSpace/educationalManage/src/main/webapp/template/ftl/";
		String ftlName = "tpl.ftl";
		data.put("name", "徐宾宾");
		try {
			System.out.println(renderTemplate(ftlPath,ftlName,data));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
