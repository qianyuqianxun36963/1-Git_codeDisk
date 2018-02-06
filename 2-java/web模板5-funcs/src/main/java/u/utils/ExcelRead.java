package u.utils;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.log4j.Logger;
import org.apache.poi.hssf.usermodel.HSSFCell;
import org.apache.poi.hssf.usermodel.HSSFDateUtil;
import org.apache.poi.hssf.usermodel.HSSFRow;
import org.apache.poi.hssf.usermodel.HSSFSheet;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;

public class ExcelRead {
	private static final Logger logger = Logger.getLogger(ExcelRead.class);
	//2003- 版本的excel
    private final static String excel2003L = ".xls";
    //2007+ 版本的excel
    private final static String excel2007L = ".xlsx";
	
	public static final String DEFAULT_NUM_FORMAT = "#.##";
	
	public static final String DEFAULT_DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";

	/**
	 * @param filepath //文件路径
	 * @param filename //文件名
	 * @param startrow //开始行号
	 * @param startcol //开始列号
	 * @param sheetnum //sheet
	 * @return list
	 * @throws Exception 
	 */
	@SuppressWarnings("deprecation")
	public static List<Object> readExcel(String filepath, String filename, int startrow, int startcol, int sheetnum) throws Exception {
		List<Object> varList = new ArrayList<Object>();

		try {

			File target = new File(filepath, filename);
			FileInputStream fi = new FileInputStream(target);
			String fileType = filename.substring(filename.lastIndexOf("."));
			if(excel2003L.equals(fileType)) {
				varList = readXlsFile(fi,startrow,startcol,sheetnum);
			}else if(excel2007L.equals(fileType)){
				varList = readXlsxFile(fi,startrow,startcol,sheetnum);
			}else{
			    throw new Exception("解析的Excel文件格式有误！");
			}
		}catch(Exception e){
			throw new Exception("解析Excel文件失败",e);
		}

		return varList;
	}
	
	
	@SuppressWarnings("deprecation")
	private static List<Object> readXlsFile(InputStream is,int startrow, int startcol, int sheetnum) {
		List<Object> varList = new ArrayList<Object>();
		try{
			HSSFWorkbook wb = new HSSFWorkbook(is);
			HSSFSheet sheet = wb.getSheetAt(sheetnum); 					//sheet 从0开始
			int rowNum = sheet.getLastRowNum() + 1; 					//取得最后一行的行号
	
			for (int i = startrow; i < rowNum; i++) {					//行循环开始
				
				Map<String,String> varpd = new HashMap<String,String>();
				HSSFRow row = sheet.getRow(i); 							//行
				int cellNum = row.getLastCellNum(); 					//每行的最后一个单元格位置
	
				for (int j = startcol; j < cellNum; j++) {				//列循环开始
					
					HSSFCell cell = row.getCell(Short.parseShort(j + ""));
					String cellValue = null;
					if (null != cell) {
						switch (cell.getCellType()) { 					// 判断excel单元格内容的格式，并对其进行转换，以便插入数据库
						case 0:
							if (HSSFDateUtil.isCellDateFormatted(cell)) {
								cellValue = new SimpleDateFormat(DEFAULT_DATE_FORMAT).format(HSSFDateUtil.getJavaDate(cell.getNumericCellValue())); 
							}else{
							  cellValue = String.valueOf((int) cell.getNumericCellValue());
							}
							break;
						case 1:
							cellValue = cell.getStringCellValue();
							break;
						case 2:
							cellValue = cell.getNumericCellValue() + "";
							// cellValue = String.valueOf(cell.getDateCellValue());
							break;
						case 3:
							cellValue = "";
							break;
						case 4:
							cellValue = String.valueOf(cell.getBooleanCellValue());
							break;
						case 5:
							cellValue = String.valueOf(cell.getErrorCellValue());
							break;
						}
					} else {
						cellValue = "";
					}
					
					varpd.put("content"+j, cellValue);
					
				}
				varList.add(varpd);
			}
	
		} catch (Exception e) {
			System.out.println(e);
		}
		return varList;
	}
	
	private static List<Object> readXlsxFile(InputStream is,int startrow, int startcol, int sheetnum) {
		List<Object> varList = new ArrayList<Object>();
		try{
			XSSFWorkbook wb = new XSSFWorkbook(is);
			XSSFSheet sheet = wb.getSheetAt(sheetnum); 					//sheet 从0开始
			int rowNum = sheet.getLastRowNum() + 1; 					//取得最后一行的行号
	
			for (int i = startrow; i < rowNum; i++) {					//行循环开始
				
				Map<String,String> varpd = new HashMap<String,String>();
				XSSFRow row = sheet.getRow(i); 							//行
				int cellNum = row.getLastCellNum(); 					//每行的最后一个单元格位置
	
				for (int j = startcol; j < cellNum; j++) {				//列循环开始
					
					XSSFCell cell = row.getCell(Short.parseShort(j + ""));
					String cellValue = null;
					if (null != cell) {
						switch (cell.getCellType()) { 					// 判断excel单元格内容的格式，并对其进行转换，以便插入数据库
						case 0:
							if (XSSFDateUtil.isCellDateFormatted(cell)) {  
			                    //  如果是date类型则 ，获取该cell的date值  
								cellValue = new SimpleDateFormat(DEFAULT_DATE_FORMAT).format(XSSFDateUtil.getJavaDate(cell.getNumericCellValue()));  
			                } else {
							    cellValue = String.valueOf((int) cell.getNumericCellValue());
							}
							break;
						case 1:
							cellValue = cell.getStringCellValue();
							break;
						case 2:
							cellValue = cell.getNumericCellValue() + "";
							// cellValue = String.valueOf(cell.getDateCellValue());
							break;
						case 3:
							cellValue = "";
							break;
						case 4:
							cellValue = String.valueOf(cell.getBooleanCellValue());
							break;
						case 5:
							cellValue = String.valueOf(cell.getErrorCellValue());
							break;
						}
					} else {
						cellValue = "";
					}
					
					varpd.put("content"+j, cellValue);
					
				}
				varList.add(varpd);
			}
		
		} catch (Exception e) {
			System.out.println(e);
		}
		
		return varList;
	}
	
	
	
	
	
	
	/**
     * @param filepath //文件路径
     * @param filename //文件名
     * @param startrow //开始行号
     * @param startcol //开始列号
     * @param sheetnum //sheet
     * @return list
     * @throws Exception 
     */
    @SuppressWarnings("deprecation")
    public static List<Object> readExcel(String filepath, String filename, int startrow, int startcol, int sheetnum, String[] titles) throws Exception {
        List<Object> varList = new ArrayList<Object>();

        try {
            File target = new File(filepath, filename);
            FileInputStream fi = new FileInputStream(target);
            String fileType = filename.substring(filename.lastIndexOf("."));
            if(excel2003L.equals(fileType)) {
                varList = readXlsFile(fi,startrow,startcol,sheetnum,titles);
            }else if(excel2007L.equals(fileType)){
                varList = readXlsxFile(fi,startrow,startcol,sheetnum,titles);
            }else{
                throw new Exception("解析的Excel文件格式有误！");
            }
        }catch(Exception e){
            throw new Exception("解析Excel文件失败",e);
        }

        return varList;
    }
    
    
    @SuppressWarnings("deprecation")
    private static List<Object> readXlsFile(InputStream is,int startrow, int startcol, int sheetnum, String[] titles) {
        List<Object> varList = new ArrayList<Object>();
        try{
            HSSFWorkbook wb = new HSSFWorkbook(is);
            HSSFSheet sheet = wb.getSheetAt(sheetnum);                  //sheet 从0开始
            int rowNum = sheet.getLastRowNum();                     //取得最后一行的行号
    
            for (int i = startrow; i <= rowNum; i++) {                   //行循环开始
                
                Map<String,String> varpd = new HashMap<String,String>();
                HSSFRow row = sheet.getRow(i);                          //行
                int cellNum = row.getLastCellNum();                     //每行的最后一个单元格位置
    
                for (int j = 0 ; j < cellNum - startcol; j++) {              //列循环开始
                    
                    HSSFCell cell = row.getCell(Short.parseShort(j + ""));
                    String cellValue = null;
                    if (null != cell) {
                        switch (cell.getCellType()) {                   // 判断excel单元格内容的格式，并对其进行转换，以便插入数据库
                        case 0:
                        	if (HSSFDateUtil.isCellDateFormatted(cell)) {
								cellValue = new SimpleDateFormat(DEFAULT_DATE_FORMAT).format(HSSFDateUtil.getJavaDate(cell.getNumericCellValue())); 
							}else{
							  cellValue = String.valueOf((int) cell.getNumericCellValue());
							}
                            break;
                        case 1:
                            cellValue = cell.getStringCellValue();
                            break;
                        case 2:
                            cellValue = cell.getNumericCellValue() + "";
                            // cellValue = String.valueOf(cell.getDateCellValue());
                            break;
                        case 3:
                            cellValue = "";
                            break;
                        case 4:
                            cellValue = String.valueOf(cell.getBooleanCellValue());
                            break;
                        case 5:
                            cellValue = String.valueOf(cell.getErrorCellValue());
                            break;
                        }
                    } else {
                        cellValue = "";
                    }
                    
                    varpd.put(titles[j], cellValue);
                    
                }
                varList.add(varpd);
            }
    
        } catch (Exception e) {
            System.out.println(e);
        }
        return varList;
    }
    
    
    private static List<Object> readXlsxFile(InputStream is,int startrow, int startcol, int sheetnum, String[] titles) {
        List<Object> varList = new ArrayList<Object>();
        try{
            XSSFWorkbook wb = new XSSFWorkbook(is);
            XSSFSheet sheet = wb.getSheetAt(sheetnum);                  //sheet 从0开始
            int rowNum = sheet.getLastRowNum();                     //取得最后一行的行号
    
            for (int i = startrow; i <= rowNum; i++) {                   //行循环开始
                
                Map<String,String> varpd = new HashMap<String,String>();
                XSSFRow row = sheet.getRow(i);                          //行
                int cellNum = row.getLastCellNum();                     //每行的最后一个单元格位置
    
                for (int j = startcol; j < cellNum ; j++) {              //列循环开始
                    
                    XSSFCell cell = row.getCell(Short.parseShort(j + ""));
                    String cellValue = null;
                    if (null != cell) {
                        switch (cell.getCellType()) {                   // 判断excel单元格内容的格式，并对其进行转换，以便插入数据库
                        case 0:
                        	if (XSSFDateUtil.isCellDateFormatted(cell)) {  
			                    //  如果是date类型则 ，获取该cell的date值  
								cellValue = new SimpleDateFormat(DEFAULT_DATE_FORMAT).format(XSSFDateUtil.getJavaDate(cell.getNumericCellValue()));  
			                } else {
							    cellValue = String.valueOf((int) cell.getNumericCellValue());
							}
                            break;
                        case 1:
                            cellValue = cell.getStringCellValue();
                            break;
                        case 2:
                            cellValue = cell.getNumericCellValue() + "";
                            // cellValue = String.valueOf(cell.getDateCellValue());
                            break;
                        case 3:
                            cellValue = "";
                            break;
                        case 4:
                            cellValue = String.valueOf(cell.getBooleanCellValue());
                            break;
                        case 5:
                            cellValue = String.valueOf(cell.getErrorCellValue());
                            break;
                        }
                    } else {
                        cellValue = "";
                    }
                    
                    varpd.put(titles[j-startcol], cellValue);
                    
                }
                varList.add(varpd);
            }
        
        } catch (Exception e) {
            System.out.println(e);
        }
        
        return varList;
    }
}
