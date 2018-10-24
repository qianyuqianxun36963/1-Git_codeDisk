package com.wh.eas.manage.base.utils;

import java.awt.image.BufferedImage;
import java.awt.image.WritableRaster;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.math.BigDecimal;
import java.text.DecimalFormat;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFCellStyle;
import org.apache.poi.hssf.usermodel.HSSFFont;
import org.apache.poi.hssf.usermodel.HSSFPatriarch;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.hssf.util.HSSFColor;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.usermodel.XSSFClientAnchor;
import org.apache.poi.xssf.usermodel.XSSFDrawing;
import org.apache.poi.xssf.usermodel.XSSFFont;
import org.apache.poi.xssf.usermodel.XSSFRichTextString;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.shiro.util.CollectionUtils;
import org.bouncycastle.asn1.x509.qualified.TypeOfBiometricData;

import com.mchange.v1.cachedstore.WritableCachedStore;
@SuppressWarnings("all")
public class ExcelView extends ExcelBaseView {

	@Override
	protected void buildExcelDocument(Map<String, Object> model,
			Workbook workbook, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Date date = new Date();
		String fileName = model.get("fileName") == null ? "": (String)model.get("fileName");
		fileName += DateUtils.dateToString(date, "yyyyMMddHHmmss");
		//Sheet sheet = workbook.createSheet("sheet1");
		
        //处理中文文件名
        String reqCharset = request.getCharacterEncoding(); /*根据request的getCharacterEncoding得到请求时的编码*/  
        fileName = new String(fileName.getBytes(reqCharset), "ISO8859-1");   
        response.setCharacterEncoding(reqCharset);
        
		response.setContentType("application/octet-stream");
		response.setHeader("Content-disposition", "attachment;filename="+fileName+".xlsx");
		createSheetData(workbook,model);
	}
	
	/**
	 * 根据文件路径，文件名，导出的数据，生成exce文件
	 * @param filePath 生成excel文件的根目录
	 * @param fileName 生成excel文件的名称加后缀如a.xlsx
	 * @param data
	 * @throws Exception 
	 * @throws FileNotFoundException 
	 */
	public static void createExcelFile(String filePath,String fileName,Map<String,Object> data) throws Exception{
		if(StringUtils.isEmpty(filePath)) {
			throw new Exception("生成Excel文件 目录"+filePath+" 不存在！");
		}
		if(StringUtils.isEmpty(fileName)){
			throw new Exception("生成Excel文件 文件名不能为空");
		}
		File fileDir = new File(filePath);
		if(!fileDir.exists() || !fileDir.isDirectory()) {
			throw new Exception("生成Exel文件失败,目录 " + filePath + " 不存在！");
		}
		
		String dirPath = fileDir.getAbsolutePath();
		File excelFile = new File(dirPath,fileName);
		
		FileOutputStream fos = new FileOutputStream(excelFile);
		XSSFWorkbook workbook =  new XSSFWorkbook();
		createSheetData(workbook,data);
		workbook.write(fos);
	   	fos.flush();
		workbook.close();
	}
	
	/**
	 * 根据导出信息写入workbook
	 * @param workbook
	 * @param model
	 * @throws Exception 
	 */
	private static void createSheetData(Workbook workbook,Map<String, Object> model) throws Exception{
	   	//如果有多个sheet的话，需要封装成sheetList对象
	   	List<Map<String,Object>> sheetList = (List<Map<String, Object>>) model.get("sheetList");
	   	if(CollectionUtils.isEmpty(sheetList)){
	   		//正文起始行
		   	int contentFirstRowNum = model.get("contentFirstRowNum")==null?0:(int)model.get("contentFirstRowNum");
		   	//正文起始列
		    int contentFirstColNum = model.get("contentFirstColNum")==null?0:(int)model.get("contentFirstColNum");
		    //标题起始行
		   	int titleFirstRowNum = model.get("titleFirstRowNum")==null?0:(int)model.get("titleFirstRowNum");
		   	//标题起始列
		    int titleFirstColNum = model.get("titleFirstColNum")==null?0:(int)model.get("titleFirstColNum");
	   		String sheetName = "sheet1";
			List<String> titles = (List<String>)model.get("titles");
			if(titles == null) {
				throw new Exception("标题不能为空！");
			}
			List<Map<String,Object>> titleList = new ArrayList<Map<String,Object>>();
			for(int i = 0;i< titles.size();i++){
				Map<String,Object> tempTitle = new HashMap<String,Object>();
				tempTitle.put("firstRow", titleFirstRowNum);
				tempTitle.put("lastRow", titleFirstRowNum);
				tempTitle.put("firstCol", i+titleFirstColNum);
				tempTitle.put("lastCol", i+titleFirstColNum);
				tempTitle.put("cellValue", titles.get(i));
				titleList.add(tempTitle);
			}
			contentFirstRowNum++;
			List<Map<String,Object>> contentList = (List<Map<String, Object>>) model.get("contentList");
		   	if(contentList == null) {
		   		return;
		   	}
		   	createOneSheetData(workbook,sheetName,titleList,contentList,contentFirstRowNum,contentFirstColNum);
	   	}else{
	   		int sheetIndex = 0;
	   		for(Map<String,Object> tempSheetMap:sheetList){
	   			String sheetName = tempSheetMap.get("sheetName")==null?("sheet"+sheetIndex):(String) tempSheetMap.get("sheetName");
	   			List<Map<String,Object>> titleList = (List<Map<String, Object>>) tempSheetMap.get("titleList");
	   			List<Map<String,Object>> contentList = (List<Map<String, Object>>) tempSheetMap.get("contentList");
	   		    //正文起始行
	   			int contentFirstRowNum = tempSheetMap.get("contentFirstRowNum")==null?1:(int)tempSheetMap.get("contentFirstRowNum");
	   			//正文起始列
			    int contentFirstColNum = tempSheetMap.get("contentFirstColNum")==null?0:(int)tempSheetMap.get("contentFirstColNum");
			    createOneSheetData(workbook,sheetName,titleList,contentList,contentFirstRowNum,contentFirstColNum);
			    sheetIndex++;
	   		}
	   	}
	}
	/**
	 * firstRow Index of first row
	   lastRow Index of last row (inclusive), must be equal to or larger than firstRow
	   firstCol Index of first column
	   lastCol Index of last column (inclusive), must be equal to or larger than firstCol
	 * @param workbook
	 * @param sheetName
	 * @param titles
	 * @param contentList
	 * @throws UnsupportedEncodingException 
	 */
	private static void createOneSheetData(Workbook workbook,String sheetName,List<Map<String,Object>> titles,List<Map<String,Object>> contentList,int contentFirstRowNum,int contentFirstColNum) throws UnsupportedEncodingException{
		Sheet sheet = workbook.createSheet(sheetName);
		List<Map<String,Object>> hasCreatedRowList = new ArrayList<Map<String,Object>>();
		int minColNum = 0;
		int maxColNum = 0;
		//文字距离两边的间距
		int spaceWidth = 1;
		BufferedImage bufferImg = null;
		int num = 0;
		int minLength = 40;
		//创建标题
		for(Map<String,Object> tempTitle : titles){
			String titleStr = tempTitle.get("cellValue") + "";
			int titleLength = titleStr.getBytes("GBK").length;
			int titleLength1 = titleStr.length();
			if(minLength > titleLength) {
				minLength = titleLength;
			}
			//该cell起始行
			int firstRow = (int) tempTitle.get("firstRow");
			//该cell结束行，垂直方向合并，如果跨行则该值大于起始行值
			int lastRow = (int) tempTitle.get("lastRow");
			//该cell起始列
			int firstCol = (int)tempTitle.get("firstCol");
			//获取最小列
			if(firstCol < minColNum){
				minColNum = firstCol;
			}
			//该cell结束列，水平方向合并，如果跨列，则该值大于起始列
			int lastCol = (int)tempTitle.get("lastCol");
			//获取最大列
			if(lastCol > maxColNum){
				maxColNum = lastCol;
			}
			
			//判断是否有合并单元格
			if(firstRow < lastRow || firstCol < lastCol){
				//创建合并单元格对象
				CellRangeAddress cellRangeAddressTitle = new CellRangeAddress(firstRow,lastRow,firstCol,lastCol);
				//加载合并单元格对象
				sheet.addMergedRegion(cellRangeAddressTitle);
			}
			if (firstCol == lastCol) {
  				 int tColWidth = sheet.getColumnWidth(firstCol);
  				 int tColWidthLength = (titleLength+spaceWidth)*256;
  				 if (tColWidthLength > tColWidth) {
  	                 sheet.setColumnWidth(firstCol, tColWidthLength < 3000 ? 3000 : tColWidthLength); 
  				 }
			}
			String cellValue = tempTitle.get("cellValue")==null?"":(String)tempTitle.get("cellValue");
			boolean hasCreated = false;
			Row rowObject = null;
			for(Map<String,Object> tempRowMap : hasCreatedRowList){
				int rowNum = (int)tempRowMap.get("rowNum");
				if(rowNum == firstRow){
					rowObject = (Row)tempRowMap.get("rowObject");
					hasCreated = true;
					break;
				}
			}
			//如果没有创建该行，则新建行
			if(hasCreated == false){
				rowObject = sheet.createRow(firstRow);
				Map<String,Object> newRowMap = new HashMap<String,Object>();
				newRowMap.put("rowNum", firstRow);
				newRowMap.put("rowObject", rowObject);
				hasCreatedRowList.add(newRowMap);
			}
			//表头标题
			CellStyle headStyle = null;
			if(tempTitle.containsKey("ifSide")) {
				headStyle = createCellStyle(workbook,(short)10,false,false);//文字不居中
			} else {
				headStyle = createCellStyle(workbook,(short)10,false,true);//文字居中
			}
			//设置标题背景色
			CellStyle titleStyle = createCellTitleStyle(workbook,(short)10,false,true,true);
			//在原有行上进行新增cell
			for(int i=firstCol;i<=lastCol;i++){
				if(i==firstCol){
					for (int j = firstRow; j <= lastRow; j++) {
						if(contentFirstRowNum-1 == firstRow || tempTitle.containsKey("addColor")) {
							Cell cell1 = rowObject.createCell(i);
							cell1.setCellStyle(titleStyle);
							cell1.setCellValue(cellValue);
						} else if(tempTitle.containsKey("underline")) {
							//设置下划线
							CellStyle underlineStyle = createCellUnderlineStyle(workbook,(short)10,true);
							Cell cell1 = rowObject.createCell(i);
							cell1.setCellStyle(underlineStyle);
							cell1.setCellValue(cellValue);
						} else {
							Cell cell1 = rowObject.createCell(i);
							cell1.setCellStyle(headStyle);
							cell1.setCellValue(cellValue);
						}
					}
				}else{
					for (int j = firstRow; j <= lastRow; j++) {
						if(contentFirstRowNum-1 == firstRow || tempTitle.containsKey("addColor")) {
							Cell cell2 = rowObject.createCell(i);
							cell2.setCellStyle(titleStyle);
							cell2.setCellValue("");
						} else if(tempTitle.containsKey("underline")) {
							//设置下划线
							CellStyle underlineStyle = createCellUnderlineStyle(workbook,(short)10,true);
							Cell cell1 = rowObject.createCell(i);
							cell1.setCellStyle(underlineStyle);
							cell1.setCellValue(cellValue);
						} else {
							//占位符，水平方向
							Cell cell2 = rowObject.createCell(i);
							cell2.setCellStyle(headStyle);
							cell2.setCellValue("");
						}
					}
				}
			}
			
			//补全行合并后的样式，垂直方向
			for(int i=firstRow+1;i<= lastRow;i++){
				Row tempRow = null;
				boolean tempRowHasCreated = false;
				for(Map<String,Object> tempRowMap : hasCreatedRowList){
					int rowNum = (int)tempRowMap.get("rowNum");
					if(rowNum == i){
						tempRow = (Row)tempRowMap.get("rowObject");
						tempRowHasCreated = true;
						break;
					}
				}
				
				if(tempRowHasCreated == false){
					tempRow = sheet.createRow(i);
					Map<String,Object> newRowMap = new HashMap<String,Object>();
					newRowMap.put("rowNum", i);
					newRowMap.put("rowObject", tempRow);
					hasCreatedRowList.add(newRowMap);
				}
				
				//在原有行上进行新增cell
				for(int j=firstCol;j<=lastCol;j++){
					//占位符
					Cell cell2 = tempRow.createCell(j);
					cell2.setCellStyle(headStyle);
					cell2.setCellValue("");
					}
			}
			num++;
		}
		
		 //内容样式  
        CellStyle cellStyle = createCellStyle(workbook,(short)10,false,true);  
        int len = maxColNum - minColNum + 1;
		Map<String,Object> contentMap = null; 
		Map<String, Object> tempMap = null;
		Row row = null;
		int index = contentFirstRowNum + 2;
	   	for(int i = contentFirstRowNum;i < contentList.size() + contentFirstRowNum;i++) {
	   		if(contentList.get(i - contentFirstRowNum).containsKey("skipCol")) {//判断创建单元格是否需要跳格
	   			if(i == contentFirstRowNum) {
	   				row = sheet.createRow(i);//创建单元格
	   			} else {
	   				row = sheet.createRow(index + 3);
	   				index = index + 5;
	   			}
	   		} else {
	   			row = sheet.createRow(i);//创建单元格
	   		}
	   		contentMap = contentList.get(i-contentFirstRowNum);
	   		for(int col = 0;col < len;col++) {
	   			XSSFFont font = null;
	   			String contentString = contentMap.get("content" + (col  + 1)) + "";
	   			int contentLength = contentString.getBytes("GBK").length;
	   			int contentLength1 = contentString.length();
	   			int colWidth = (contentLength+spaceWidth)*256;
				if (!contentString.endsWith(".jpg") && colWidth > sheet.getColumnWidth(col)) {
					if (colWidth < 255 * 256) {
	   	                sheet.setColumnWidth(col, colWidth < 3000 ? 3000 : colWidth); 
					} else {
						sheet.setColumnWidth(col, 6000);
					}
				}
	   			Object rtn = contentMap.get("content"+(col+1));
	   			// 如果是日期类型 进行 转换  
	   			String contentStr = "";
                if (rtn != null) {  
                    if (rtn instanceof Date) {  
                    	contentStr = DateUtils.dateToString((Date) rtn,"yyyy-MM-dd");  
                    } else if(rtn instanceof BigDecimal){
                    	if(contentList.get(i - contentFirstRowNum).containsKey("forBigdecimal")) {
                    		NumberFormat nf = new DecimalFormat();  
                    		contentStr=nf.format((BigDecimal)rtn).toString();  
                    	} else {
                    		NumberFormat nf = new DecimalFormat("#,##0.00");  
                    		contentStr=nf.format((BigDecimal)rtn).toString(); 
                    	}
                    } else if((rtn instanceof Integer) && (Integer.valueOf(rtn.toString())<0 )){  
                    	contentStr="--";  
                    } else if(rtn.toString().endsWith(".jpg")) {
                    	//判断是否要显示为图片的标记(显示为图片)
                    	if(contentList.get(i-contentFirstRowNum).containsKey("photoTag")) {
                    		sheet.getRow(i).setHeight((short) (80*20));//设置指定行的高度
                    		sheet.setColumnWidth(i, 10*256);
                        	String resourcePath = PropertiesUtil.fileParams.get("uploadFilePath");//图片地址前缀
                        	resourcePath = resourcePath.substring(0, resourcePath.lastIndexOf("/"));
                        	resourcePath = resourcePath.substring(0, resourcePath.lastIndexOf("/")) + rtn.toString();
                        	ByteArrayOutputStream byteArrayOut = new ByteArrayOutputStream();
                        	try {
                        		bufferImg = ImageIO.read(new File(resourcePath));//读取文件服务器上面的图片
    							ImageIO.write(bufferImg, "jpg", byteArrayOut);
    							XSSFDrawing patriarch = (XSSFDrawing) sheet.createDrawingPatriarch();
    							//导出图片到单元格中
    							XSSFClientAnchor anchor = new XSSFClientAnchor(0, 0, 255, 255, (short) 1, i, (short) 2, i + 1);
    							anchor.setAnchorType(2);
    							//插入图片
    							patriarch.createPicture(anchor, workbook.addPicture(byteArrayOut.toByteArray(), HSSFWorkbook.PICTURE_TYPE_JPEG));
    						} catch (IOException e) {
    							e.printStackTrace();
    						}
                    	} else {//显示为图片地址字符串
                    		contentStr = rtn.toString();
                    	}
                    	
                    } else {  
                    	contentStr = rtn.toString();  
                    }  
                }  
               
	   			Cell cell = row.createCell(col+contentFirstColNum);
		   		cell.setCellType(Cell.CELL_TYPE_STRING);
				cell.setCellStyle(cellStyle);
				cell.setCellValue(contentStr);
	   		}
	   		
	   	}
	}
	
	
	public static void main(String[] args) throws Exception {
		//String tempPath = request.getSession().getServletContext().getRealPath("temp/");
		//String excelsTempPath = tempPath + StringUtils.getUUId();
		String tempPath = "D://excelTemp//";
		String excelsTempPath = tempPath + StringUtils.getUUId();
		//目录文件
		File excelsTempFile = new File(excelsTempPath);
		if(!excelsTempFile.exists()) {
			excelsTempFile.mkdirs();
		}
		
		Map<String,Object> model = new HashMap<String,Object>();
		List<String> titles = new ArrayList<String>();
		titles.add("测试1");
		titles.add("测试2");
		titles.add("测试3");
		List<Map<String,Object>> contentList = new ArrayList<Map<String,Object>>();
		Map<String,Object> tempMap = new HashMap<String,Object>();
		tempMap.put("content1", 123);
		tempMap.put("content2", "测试是是是");
		tempMap.put("content3", "测试测绘和");
		contentList.add(tempMap);
		model.put("titles", titles);
		model.put("contentList",contentList);
		String fileName = "abc.xlsx";
		
		createExcelFile(excelsTempPath,fileName,model);
		
		String excelZipFileName = DateUtils.dateToString(new Date(), "yyyyMMddHHmmss") + ".zip";
		String excelZipFilePath = tempPath + excelZipFileName;
		try {
			//压缩为zip文件
			ZIPUtils.zipFiles(excelsTempPath, "*", excelZipFilePath);
			//File zipFile = new File(excelZipFilePath.replace("\\", "//"));
			//FileUtils.downloadFile(zipFile, excelZipFileName, response);
		} catch (Exception e) {
			throw new Exception("失败");
		} finally {
			//FileUtils.delFileOrDirectroy(excelsTempPath);
			//FileUtils.delFileOrDirectroy(excelZipFilePath.replace("\\", "//"));
		}
	}

}
