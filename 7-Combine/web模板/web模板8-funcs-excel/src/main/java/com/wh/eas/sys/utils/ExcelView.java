package com.wh.eas.sys.utils;

import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Font;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.springframework.web.servlet.view.document.AbstractXlsxStreamingView;

public class ExcelView extends AbstractXlsxStreamingView {

    @Override
    protected void buildExcelDocument(Map<String, Object> model,
            Workbook workbook, HttpServletRequest request,
            HttpServletResponse response) throws Exception {
        Date date = new Date();
        String fileName = model.get("fileName") == null ? "": (String)model.get("fileName");
        fileName += DateUtils.dateToString(date, "yyyyMMddHHmmss");
        Sheet sheet = workbook.createSheet("sheet1");
        
        //处理中文文件名
        String reqCharset = request.getCharacterEncoding(); /*根据request的getCharacterEncoding得到请求时的编码*/  
        fileName = new String(fileName.getBytes(reqCharset), "ISO8859-1");   
        response.setCharacterEncoding(reqCharset);
        
        response.setContentType("application/octet-stream");
        response.setHeader("Content-disposition", "attachment;filename="+fileName+".xlsx");
        
        List<String> titles = (List<String>)model.get("titles");
        if(titles == null) {
            throw new Exception("标题不能为空！");
        }
        int len = titles.size();
        //标题样式
        CellStyle headerStyle = workbook.createCellStyle();
           Font headerFont = workbook.createFont();
           headerFont.setBold(true);
           headerFont.setFontName("黑体");
           headerFont.setFontHeightInPoints((short)14);
           headerStyle.setFont(headerFont);
           headerStyle.setBorderBottom(CellStyle.BORDER_THIN);;//底边框
           headerStyle.setBorderLeft(CellStyle.BORDER_THIN);//左边框
           headerStyle.setBorderTop(CellStyle.BORDER_THIN);//上边框
           headerStyle.setBorderRight(CellStyle.BORDER_THIN);//右边框
           headerStyle.setAlignment(CellStyle.ALIGN_CENTER);;//居中
           headerStyle.setVerticalAlignment(CellStyle.VERTICAL_CENTER);;//垂直居中
           
        short width = 20,height = 25 * 20;
        int initRow = 0;
        Row row = sheet.createRow(initRow);
        Cell cell = null;
        sheet.setDefaultColumnWidth(width);
        for(int i = 0; i < len; i++) {
            String title = titles.get(i);
            cell = row.createCell(i);
            cell.setCellType(Cell.CELL_TYPE_STRING);
            cell.setCellStyle(headerStyle);
            cell.setCellValue(title);
        }
        
        sheet.getRow(0).setHeight(height);
        
        initRow++;
        //内容样式
        CellStyle contentStyle = workbook.createCellStyle();
           Font contentFont = workbook.createFont();
           contentFont.setFontName("宋体");
           contentFont.setFontHeightInPoints((short)14);
/*           contentStyle.setBorderBottom(CellStyle.BORDER_THIN);;//底边框
           contentStyle.setBorderLeft(CellStyle.BORDER_THIN);//左边框
           contentStyle.setBorderTop(CellStyle.BORDER_THIN);//上边框
           contentStyle.setBorderRight(CellStyle.BORDER_THIN);//右边框
*/           contentStyle.setAlignment(CellStyle.ALIGN_CENTER);;//居中
           contentStyle.setFont(contentFont);
           
           List<Map<String,Object>> contentList = (List<Map<String, Object>>) model.get("contentList");
           if(contentList == null) {
               return;
           }
           Map<String,Object> contentMap = null; 
           for(int i = initRow;i < contentList.size() + initRow;i++) {
               row = sheet.createRow(i);
               contentMap = contentList.get(i-initRow);
               for(int col = 0;col < len;col++) {
                   Object rtn = contentMap.get("content"+(col+1));
               // 如果是日期类型 进行 转换  
                   String contentStr = "";
                if (rtn != null) {  
                    if (rtn instanceof Date) {  
                        contentStr = DateUtils.dateToString((Date) rtn,"yyyy-MM-dd");  
                    } else if(rtn instanceof BigDecimal){  
                        NumberFormat nf = new DecimalFormat("#,##0.00");  
                        contentStr=nf.format((BigDecimal)rtn).toString();  
                    } else if((rtn instanceof Integer) && (Integer.valueOf(rtn.toString())<0 )){  
                        contentStr="--";  
                    }else {  
                        contentStr = rtn.toString();  
                    }  
                }  
                   cell = row.createCell(col);
                   cell.setCellType(Cell.CELL_TYPE_STRING);
                cell.setCellStyle(contentStyle);
                cell.setCellValue(contentStr);
               }
               
           }
    }

}
