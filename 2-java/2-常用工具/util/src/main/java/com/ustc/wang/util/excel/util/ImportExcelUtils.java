package com.ustc.wang.util.excel.util;

import com.ustc.wang.util.excel.util.StringUtils;
import lombok.extern.slf4j.Slf4j;
import org.apache.poi.hssf.usermodel.*;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.xssf.usermodel.XSSFCell;
import org.apache.poi.xssf.usermodel.XSSFRow;
import org.apache.poi.xssf.usermodel.XSSFSheet;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.apache.shiro.util.CollectionUtils;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Slf4j
public class ImportExcelUtils {
    //2003- 版本的excel
    private final static String excel2003L = ".xls";
    //2007+ 版本的excel
    private final static String excel2007L = ".xlsx";

    public static final String DEFAULT_NUM_FORMAT = "#.##";

    public static final String DEFAULT_DATE_FORMAT = "yyyy-MM-dd HH:mm:ss";


    /**
     * 根据注解返回excel导入实例bean列表
     * @param tClass 导出数据类型
     * @param file 上传文件
     * @param fileName 文件名
     * @param startRow 开始行 excel 最上角第一个cell坐标为，（0,0）
     * @param startCol 开始列
     * @param sheetNum 读取是sheet页号 从0开始
     * @param <T>
     * @return
     * @throws Exception
     */
    public static <T> List<T> readExcel(Class<T> tClass, MultipartFile file, String fileName, int startRow, int startCol, int sheetNum) throws Exception{
        //获取注解列表
        List<Object[]> annotationList = ExcelAnnontationUtils.getGetAnnotationList(tClass);
        List<T> contentList = new ArrayList<>();

        List<Map<String,String>> varList;

        try {
            InputStream fi = file.getInputStream();
            String fileType = fileName.substring(fileName.lastIndexOf("."));
            if(excel2003L.equals(fileType)) {
                varList = (List)readXlsFile(fi,startRow,startCol,sheetNum);
            }else if(excel2007L.equals(fileType)){
                varList = (List)readXlsxFile(fi,startRow,startCol,sheetNum);
            }else{
                throw new Exception("解析的Excel文件格式有误！");
            }
        }catch(Exception e){
            throw new Exception("解析Excel文件失败",e);
        }
        if(CollectionUtils.isEmpty(varList)){
            return null;
        }

        //将从excel中读取出来的列表，格式为conent+i
        for(Map<String,String> tempMap : varList){
            //声明一个tClass类型的实例
            T entity = tClass.newInstance();
            for(int i = 0;i < annotationList.size();i++){
                //根据注解orderNum排序，然后和导入的excel文件中的类顺序进行一一对应，并获取该行该列的值
                String cellValue = tempMap.get("content"+i) == null?"":tempMap.get("content"+i).trim();

                //获取注解
                Object[] annotationObject = annotationList.get(i);
                Field field = (Field)annotationObject[1];
                String fieldName = field.getName();

                //设置set方面名称
                String methodName = "set" + StringUtils.capitalize(fieldName);
                Method setMethod = tClass.getMethod(methodName,new Class[]{ field.getType()});

                //将字符串类型转换成实例的对应类型
                Object value = ExcelAnnontationUtils.str2TargetClass(cellValue,field.getType());
                //执行setXxx方法
                 setMethod.invoke(entity,new Object[]{value});
            }
            contentList.add(entity);
        }
        return contentList;

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
    private static List<Object> readXlsFile(InputStream is, int startrow, int startcol, int sheetnum) {
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
                                    cellValue = String.valueOf((long) cell.getNumericCellValue());
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
                                    cellValue = String.valueOf((long) cell.getNumericCellValue());
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
    public static List<Object> readExcel(String filepath, String filename, int startrow, int startcol, int sheetnum, String[] titles) throws Exception {
        List<Object> varList;

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
        List<Object> varList = new ArrayList<>();
        try{
            HSSFWorkbook wb = new HSSFWorkbook(is);
            HSSFSheet sheet = wb.getSheetAt(sheetnum);                  //sheet 从0开始
            int rowNum = sheet.getLastRowNum();                     //取得最后一行的行号

            for (int i = startrow; i <= rowNum; i++) {                   //行循环开始

                Map<String,String> varpd = new HashMap<>();
                HSSFRow row = sheet.getRow(i);                          //行
                int cellNum = row.getLastCellNum();                     //每行的最后一个单元格位置

                for (int j = 0 ; j < cellNum - startcol; j++) {              //列循环开始

                    HSSFCell cell = row.getCell(Short.parseShort(j + ""));
                    String cellValue = null;
                    if (null != cell) {
                        switch (cell.getCellType()) {                   // 判断excel单元格内容的格式，并对其进行转换，以便插入数据库
                            case Cell.CELL_TYPE_NUMERIC:
                                if (HSSFDateUtil.isCellDateFormatted(cell)) {
                                    cellValue = new SimpleDateFormat(DEFAULT_DATE_FORMAT).format(HSSFDateUtil.getJavaDate(cell.getNumericCellValue()));
                                }else{
                                    cellValue = String.valueOf((long) cell.getNumericCellValue());
                                }
                                break;
                            case Cell.CELL_TYPE_STRING:
                                cellValue = cell.getStringCellValue();
                                break;
                            case Cell.CELL_TYPE_FORMULA:
                                cellValue = cell.getCellFormula();
                                // cellValue = String.valueOf(cell.getDateCellValue());
                                break;
                            case Cell.CELL_TYPE_BLANK:
                                cellValue = "";
                                break;
                            case Cell.CELL_TYPE_BOOLEAN:
                                cellValue = String.valueOf(cell.getBooleanCellValue());
                                break;
                            case Cell.CELL_TYPE_ERROR:
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
           // log.error("读取excel文件失败",e);
        }
        return varList;
    }


    private static List<Object> readXlsxFile(InputStream is,int startrow, int startcol, int sheetnum, String[] titles) {
        List<Object> varList = new ArrayList<>();
        try{
            XSSFWorkbook wb = new XSSFWorkbook(is);
            XSSFSheet sheet = wb.getSheetAt(sheetnum);                  //sheet 从0开始
            int rowNum = sheet.getLastRowNum();                     //取得最后一行的行号

            for (int i = startrow; i <= rowNum; i++) {                   //行循环开始

                Map<String,String> varpd = new HashMap<>();
                XSSFRow row = sheet.getRow(i);                          //行
                int cellNum = row.getLastCellNum();                     //每行的最后一个单元格位置

                for (int j = startcol; j < cellNum ; j++) {              //列循环开始

                    XSSFCell cell = row.getCell(Short.parseShort(j + ""));
                    String cellValue = null;
                    if (null != cell) {
                        switch (cell.getCellType()) {                   // 判断excel单元格内容的格式，并对其进行转换，以便插入数据库
                            case Cell.CELL_TYPE_NUMERIC:
                                if (XSSFDateUtil.isCellDateFormatted(cell)) {
                                    //  如果是date类型则 ，获取该cell的date值
                                    cellValue = new SimpleDateFormat(DEFAULT_DATE_FORMAT).format(XSSFDateUtil.getJavaDate(cell.getNumericCellValue()));
                                } else {
                                    cellValue = String.valueOf((long) cell.getNumericCellValue());
                                }
                                break;
                            case Cell.CELL_TYPE_STRING:
                                cellValue = cell.getStringCellValue();
                                break;
                            case Cell.CELL_TYPE_FORMULA:
                                cellValue = cell.getCellFormula();
                                // cellValue = String.valueOf(cell.getDateCellValue());
                                break;
                            case Cell.CELL_TYPE_BLANK:
                                cellValue = "";
                                break;
                            case Cell.CELL_TYPE_BOOLEAN:
                                cellValue = String.valueOf(cell.getBooleanCellValue());
                                break;
                            case Cell.CELL_TYPE_ERROR:
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
           // log.error("读取excel文件失败，",e);
        }

        return varList;
    }
}
