package com.wh.eas.manage.base.utils;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.springframework.web.servlet.view.document.AbstractXlsxStreamingView;

public class ExcelBaseView extends AbstractXlsxStreamingView{

	@Override
	protected void buildExcelDocument(Map<String, Object> model,
			Workbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {	
	}
	
	/** 
    *  
    * @param workbook 
    * @param fontsize 
    * @return 单元格样式 
    */  
   protected static CellStyle createCellStyle(Workbook workbook, short fontsize,boolean flag,boolean flag1) {  
       // TODO Auto-generated method stub  
       CellStyle style = workbook.createCellStyle();  
       //是否水平居中  
       if(flag1){  
           style.setAlignment(CellStyle.ALIGN_CENTER);//水平居中  
       }  
       
       style.setVerticalAlignment(CellStyle.VERTICAL_CENTER);//垂直居中  
       style.setBorderBottom(CellStyle.BORDER_THIN); //下边框  
       style.setBorderLeft(CellStyle.BORDER_THIN);//左边框  
       style.setBorderTop(CellStyle.BORDER_THIN);//上边框  
       style.setBorderRight(CellStyle.BORDER_THIN);//右边框  
       //创建字体  
       Font font = workbook.createFont();  
       //是否加粗字体  
       if(flag){  
           font.setBoldweight(Font.BOLDWEIGHT_BOLD);  
       }  
       font.setFontHeightInPoints(fontsize);
       //加载字体  
       style.setFont(font);  
       return style;  
   }
   
   //设置title背景色
   protected static CellStyle createCellTitleStyle(Workbook workbook, short fontsize, boolean flag, boolean flag1, boolean flag2) {  
       // TODO Auto-generated method stub  
       CellStyle style = workbook.createCellStyle();  
       //是否水平居中  
       if(flag1){  
           style.setAlignment(CellStyle.ALIGN_CENTER);//水平居中  
       }  
       
       if(flag2) {
    	   //设置背景色
    	   style.setFillForegroundColor(HSSFColor.SKY_BLUE.index);
    	   style.setFillPattern(HSSFCellStyle.SOLID_FOREGROUND);
    	   style.setFillBackgroundColor(HSSFColor.SKY_BLUE.index);
       }
       
       style.setVerticalAlignment(CellStyle.VERTICAL_CENTER);//垂直居中  
       style.setBorderBottom(CellStyle.BORDER_THIN); //下边框  
       style.setBorderLeft(CellStyle.BORDER_THIN);//左边框  
       style.setBorderTop(CellStyle.BORDER_THIN);//上边框  
       style.setBorderRight(CellStyle.BORDER_THIN);//右边框  
       //创建字体  
       Font font = workbook.createFont();  
       //是否加粗字体  
       if(flag){  
           font.setBoldweight(Font.BOLDWEIGHT_BOLD);  
       }  
       font.setFontHeightInPoints(fontsize);
       font.setFontName("宋体");
       //加载字体  
       style.setFont(font);  
       return style;  
   }
   
   //设置下划线
   protected static CellStyle createCellUnderlineStyle(Workbook workbook, short fontsize, boolean flag) {  
       CellStyle style = workbook.createCellStyle();  
       
       style.setVerticalAlignment(CellStyle.VERTICAL_CENTER);//垂直居中  
       style.setBorderBottom(CellStyle.BORDER_THIN); //下边框  
       style.setBorderLeft(CellStyle.BORDER_THIN);//左边框  
       style.setBorderTop(CellStyle.BORDER_THIN);//上边框  
       style.setBorderRight(CellStyle.BORDER_THIN);//右边框  
       
       if(flag) {
			XSSFFont font = (XSSFFont) workbook.createFont();//设置下划线
			font.setUnderline(HSSFFont.U_DOUBLE);
			font.setUnderline((byte)1);
			font.setColor(XSSFFont.COLOR_NORMAL);
			font.setFontName(HSSFFont.FONT_ARIAL);
			font.setFontHeightInPoints(fontsize);
			style.setFont(font);  
      }
       return style;  
   }

}
