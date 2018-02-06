package u.utils;

import java.io.ByteArrayOutputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.xhtmlrenderer.pdf.ITextRenderer;

import com.lowagie.text.pdf.BaseFont;

public class PDFUtils {

	/**
	 * 生成pdf文件，
	 * @param ftlPath 模板文件路径，不包含文件名
	 * @param ftlName 文件名，不包含路径
	 * @param imageDiskPath 图片磁盘路径
	 * @param data 模板数据
	 * @param outputFile 模板文件 全路径名称
	 * @throws Exception
	 */
	public static void generatePDFToFile(HttpServletRequest request,String ftlPath,String ftlName,String imageDiskPath,Map<String,Object> data,String outputFile) throws Exception{
		String basePath = request.getSession().getServletContext().getRealPath("/");
		String basePath2=basePath.replaceAll("\\\\", "/");
		String html = FreemarkerUtils.renderTemplate(ftlPath, ftlName, data);
		OutputStream out = new FileOutputStream(outputFile);
		ITextRenderer render = new ITextRenderer();
		//添加字体支持中文
		render.getFontResolver().addFont(basePath2 + "static/res/font/ARIALUNI.TTF", BaseFont.IDENTITY_H,BaseFont.NOT_EMBEDDED);
		render.getFontResolver().addFont(basePath2 + "static/res/font/SIMSUN.TTC", BaseFont.IDENTITY_H,BaseFont.NOT_EMBEDDED);
		render.setDocumentFromString(html);
		
		if(StringUtils.isNotBlank(imageDiskPath)) {
			//html中如果有图片，图片的路径使用这里设置的相对路径，这个作为根路径
			render.getSharedContext().setBaseURL("file:/"+imageDiskPath);
		}
		render.layout();
		render.createPDF(out);
		render.finishPDF();
		render = null;
		out.close();
	}
	
	/**
	 * 生成pdf文件，输出到response输出流中，并支持下载
	 * @param request
	 * @param response
     * @param ftlPath 模板文件路径，不包含文件名
	 * @param ftlName 文件名，不包含路径
	 * @param imageDiskPath 图片磁盘路径
	 * @param data 模板数据
	 * @throws Exception
	 */
	public static ByteArrayOutputStream generatePDFToOutputStream(HttpServletRequest request,HttpServletResponse response,String ftlPath,String ftlName,String imageDiskPath,Map<String,Object> data) throws Exception{
		String basePath = request.getSession().getServletContext().getRealPath("/");
		String basePath2=basePath.replaceAll("\\\\", "/");
		
		String html = FreemarkerUtils.renderTemplate(ftlPath, ftlName, data);
		ByteArrayOutputStream out = new ByteArrayOutputStream();
		ITextRenderer render = new ITextRenderer();
		//添加字体支持中文
		render.getFontResolver().addFont(basePath2 + "static/res/font/ARIALUNI.TTF", BaseFont.IDENTITY_H,BaseFont.NOT_EMBEDDED);
		render.getFontResolver().addFont(basePath2 + "static/res/font/SIMSUN.TTC", BaseFont.IDENTITY_H,BaseFont.NOT_EMBEDDED);
		render.setDocumentFromString(html);
		
		if(StringUtils.isNotBlank(imageDiskPath)) {
			//html中如果有图片，图片的路径使用这里设置的相对路径，这个作为根路径
			render.getSharedContext().setBaseURL("file:/"+imageDiskPath);
		}
		render.layout();
		render.createPDF(out);
		render.finishPDF();
		render = null;
		out.close();
		return out;
	}
	
	/**
	 * 设置让浏览器弹出下载对话框的header
	 * @param response
	 * @param fileName 文件名称
	 * @param fileType 文件后缀名 如：.pdf
	 */
	public static void setPdfDownloadHeader(HttpServletResponse response,String fileName,String fileType) {
		try{
			response.setCharacterEncoding("UTF-8"); 
			response.setContentType("multipart/form-data;charset="+ "UTF-8");
			String encodedFileName = new String(fileName.getBytes(System.setProperty("sun.jnu.encoding","utf-8")), "ISO8859-1" );
			response.setHeader("Content-Disposition", "attachment;filename=\"" + encodedFileName + fileType + "\"");
		}catch(UnsupportedEncodingException  e){
			
		}
	}
	
	/**
	 * 下载pdf生成的pdf文件
	 * @param response
	 * @param fileName
	 */
	public static void downloadPdf(HttpServletResponse response,final byte[] bytes,String fileName) {
		try {
		    setPdfDownloadHeader(response,fileName,".pdf");
		    response.getOutputStream().write(bytes);
			response.getOutputStream().flush();
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
}
