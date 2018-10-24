package com.ulearning.onlineexam.base.utils;

import freemarker.core.ParseException;
import freemarker.template.Configuration;
import freemarker.template.MalformedTemplateNameException;
import freemarker.template.Template;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

/**
 * @Desc：word操作工具类
 * 
 * */
public class WordUtils {
	private static Logger log = LogManager.getLogger(WordUtils.class);

	/**
	 * @Desc：生成word文件
	 * @paramdataMap word中需要展示的动态数据，用map集合来保存
	 * @paramtemplateName word模板名称，例如：test.ftl
	 * @paramfilePath文件生成的目标路径，例如：D:/wordFile/
	 * @paramfileName生成的文件名称，例如：test.doc
	 * */
	public static void createWord(Map<String, Object> dataMap,
			String templateName, String filePath, String fileName) {
		try {
			// 创建配置实例
			Configuration configuration = new Configuration(Configuration.VERSION_2_3_23);
			// 设置编码
			configuration.setDefaultEncoding("UTF-8");
			// ftl模板文件
			File file = new File(filePath);
			configuration.setDirectoryForTemplateLoading(file);
			// 获取模板
			Template template = configuration.getTemplate(templateName);
			// 输出文件
			File outFile = new File(filePath + File.separator + fileName + ".doc");
			// 如果输出目标文件夹不存在，则创建
			if (!outFile.getParentFile().exists()) {
				outFile.getParentFile().mkdirs();
			}
			// 将模板和数据模型合并生成文件
			Writer out = new BufferedWriter(new OutputStreamWriter(
					new FileOutputStream(outFile), "UTF-8"));
			// 生成文件
			template.process(dataMap, out);
			// 关闭流
			out.flush();
			out.close();
		} catch (Exception e) {
			log.error("生成 word文档(WordUtil)出错：【msg：" + e.getMessage()
					+ "】 ,文件名：" + fileName);
			e.printStackTrace();
		}
	}

	/**
	 * 文件下载
	 * 
	 * @param path
	 *            文件路径全路径，包含文件名
	 * @param response 
	 * @return
	 * */
	public static HttpServletResponse downFile(String path, String fileName,
                                               HttpServletResponse response) {
		path += ".doc";
		try {
			// path是指欲下载的文件的路径。
			File file = new File(path);
			// 以流的形式下载文件。
			InputStream fis = new BufferedInputStream(new FileInputStream(file));
			byte[] buffer = new byte[fis.available()];
			fis.read(buffer);
			fis.close();
			// 清空response
			response.reset();
			// 设置response的Header
			String showFileName = URLEncoder.encode(fileName, "UTF-8");
			showFileName = new String(fileName.getBytes("GBK"), "ISO-8859-1");
			response.addHeader("Content-Disposition", "attachment;filename="
					+ showFileName);
			response.addHeader("Content-Length", "" + file.length());
			OutputStream outs = new BufferedOutputStream(
					response.getOutputStream());
			response.setContentType("application/octet-stream");
			outs.write(buffer);
			outs.flush();
			outs.close();
			file.delete();
		} catch (IOException e) {
			log.error("下载文档(WordUtil)出错：【msg：" + e.getMessage() + "】 ");
			e.printStackTrace();
		}
		return response;
	}
	

//	public static void main(String[] args) throws Exception {
//		HashMap<String, Object> data = new HashMap<String, Object>();
//
//		StringBuilder sb = new StringBuilder();
//		sb.append("<div>");
//		sb.append("</br><span>中国梦，幸福梦！</span>");
//		sb.append("</div>");
//		RichHtmlHandler handler = new RichHtmlHandler(sb.toString());
//
//		handler.setDocSrcLocationPrex("file:///C:/8595226D");
//		handler.setDocSrcParent("file3405.files");
//		handler.setNextPartId("01D214BC.6A592540");
//		handler.setShapeidPrex("_x56fe__x7247__x0020");
//		handler.setSpidPrex("_x0000_i");
//		handler.setTypeid("#_x0000_t75");
//
//		handler.handledHtml(false);
//
//		String bodyBlock = handler.getHandledDocBodyBlock();
//		System.out.println("bodyBlock:\n"+bodyBlock);
//
//		String handledBase64Block = "";
//		if (handler.getDocBase64BlockResults() != null
//				&& handler.getDocBase64BlockResults().size() > 0) {
//			for (String item : handler.getDocBase64BlockResults()) {
//				handledBase64Block += item + "\n";
//			}
//		}
//		data.put("imagesBase64String", handledBase64Block);
//
//		String xmlimaHref = "";
//		if (handler.getXmlImgRefs() != null
//				&& handler.getXmlImgRefs().size() > 0) {
//			for (String item : handler.getXmlImgRefs()) {
//				xmlimaHref += item + "\n";
//			}
//		}
//		data.put("imagesXmlHrefString", xmlimaHref);
//		data.put("name", "张三");
//		data.put("content", bodyBlock);
//
//		String docFilePath = "d:\\temp.doc";
//		System.out.println(docFilePath);
//		File f = new File(docFilePath);
//		OutputStream out;
//		try {
//			out = new FileOutputStream(f);
//			WordGeneratorWithFreemarker.createDoc(data, "programWordModel.ftl", out);
//
//		} catch (FileNotFoundException e) {
//
//		} catch (MalformedTemplateNameException e) {
//			e.printStackTrace();
//		} catch (ParseException e) {
//			e.printStackTrace();
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
//
//	}
}
