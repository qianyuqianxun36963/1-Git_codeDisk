package com.ustc.wang.util.excel.util;

import com.google.common.base.Preconditions;
import lombok.extern.slf4j.Slf4j;
import org.apache.poi.ss.usermodel.*;
import org.apache.poi.ss.util.CellRangeAddress;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.apache.poi.xssf.usermodel.*;
import org.apache.shiro.util.CollectionUtils;
import org.springframework.beans.factory.annotation.Value;
import com.ustc.wang.util.excel.util.TitleEntity;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.File;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.*;
import org.springframework.stereotype.Service;

@Slf4j
@Service
public class ExportExcelUtils {

    private static String uploadFilePath;

    private static String readPath;

    public  String getReadPath() {
        return readPath;
    }

    @Value("${onlineexam.web.resourceServerUrl}")
    public  void setReadPath(String readPath) {
        this.readPath = readPath;
    }

    public  String getUploadFilePath() {
        return uploadFilePath;
    }
    @Value("${onlineexam.web.resourceRealPath}")
    public void setUploadFilePath(String uploadFilePath) {
        this.uploadFilePath = uploadFilePath;
    }

        /**
         * 导出excel
         * @param clazz 导出数据实体类型
         * @param dataMap 额外参数集合，
         *                 fileName 输出文件名称
         *                 title，表格标题，如果没有，可以不传
         *                 titleList标识自定义标题 类型为List<TitleEntity>，
         *                 contentFirstRowNum 开始行号，正文
         *                 contentFirstColNum 开始列号，正文
         *                 titleFirstRowNum 标题起始行
         *                 titleFirstColNum 标题起始列
         *                 sheetList 多个sheet页输出，每个sheet中包含title，titleLsit，contentFirstRowNum，contentFirstColNum,titleFirstRowNum,titleFirstColNum,contentList
         *                 contentList 正文内容列表
         * @throws Exception
         */
    public static <T> void  exportExcel(Class<T> clazz, Map<String,Object> dataMap , HttpServletRequest request, HttpServletResponse response) throws Exception{
        Preconditions.checkArgument(clazz != null,"导出数据实体类型不能为空");
        Preconditions.checkArgument(dataMap != null,"入参不能为空");

        //获取导出文件名称
        String fileName = dataMap.get("fileName") == null?"":(String) dataMap.get("fileName");
        Date date = new Date();
        fileName += MyDateUtils.dateToString(date, "yyyyMMddHHmmss");
        //处理中文文件名
        String reqCharset = request.getCharacterEncoding(); /*根据request的getCharacterEncoding得到请求时的编码*/
        fileName = new String(fileName.getBytes(reqCharset), "ISO8859-1");
        response.setCharacterEncoding(reqCharset);

        response.setContentType("application/octet-stream");
        response.setHeader("Content-disposition", "attachment;filename="+fileName+".xlsx");

        //标题列表
        List<TitleEntity> titleEntities = new ArrayList<>();
        SXSSFWorkbook workbook = new SXSSFWorkbook();
        //判断是否是多sheet页输出
        List<Map<String,Object>> sheetList = (List<Map<String,Object>>) dataMap.get("sheetList");
        if(CollectionUtils.isEmpty(sheetList)){
            createOneSheetData(workbook,"sheet1",dataMap,clazz);
        }else{
            int sheetIndex = 0;
            for(Map<String,Object> tempSheetMap:sheetList){
                String sheetName = tempSheetMap.get("sheetName")==null?("sheet"+sheetIndex):(String) tempSheetMap.get("sheetName");
                createOneSheetData(workbook,sheetName,tempSheetMap,clazz);
                sheetIndex++;
            }
        }

        workbook.write(response.getOutputStream());
        // Closeable only implemented as of POI 3.10
        if (workbook instanceof Closeable) {
            ((Closeable) workbook).close();
        }
        ((SXSSFWorkbook) workbook).dispose();
        return;

    }

    /**
     * 根据入参获取单个sheet页数据
     * @param workbook 工作簿对象
     * @param sheetName sheet页名称
     * @param dataMap 入参数据
     * @throws Exception
     */
    private static <T> void createOneSheetData(SXSSFWorkbook workbook,String sheetName,Map<String,Object> dataMap, Class<T> clazz )throws  Exception{
        //正文起始行
        int contentFirstRowNum = dataMap.get("contentFirstRowNum")==null?0:(int)dataMap.get("contentFirstRowNum");
        //正文起始列
        int contentFirstColNum = dataMap.get("contentFirstColNum")==null?0:(int)dataMap.get("contentFirstColNum");
        //标题起始行
        int titleFirstRowNum = dataMap.get("titleFirstRowNum")==null?0:(int)dataMap.get("titleFirstRowNum");
        //标题起始列
        int titleFirstColNum = dataMap.get("titleFirstColNum")==null?0:(int)dataMap.get("titleFirstColNum");

        List<T> contentList = (List<T>) dataMap.get("contentList");
        //获取注解列表
        List<Object[]> annotationList = ExcelAnnontationUtils.getGetAnnotationList(clazz);
        //根据注解获取标题列表
        List<TitleEntity> titleEntitiesFromField = getTitleListFromField(clazz,titleFirstRowNum,titleFirstColNum);
        List<TitleEntity> titleEntities = (List<TitleEntity>)dataMap.get("titleList");
        if(CollectionUtils.isEmpty(titleEntities)){
            titleEntities = titleEntitiesFromField;
        }else{
            //根据orderNum进行排序
            Collections.sort(titleEntities, Comparator.comparingInt(TitleEntity::getOrderNum));
        }
        Sheet sheet = workbook.createSheet(sheetName);
        createTitleRows(workbook,sheet,titleEntities);
        createContentRows(workbook,sheet,contentList,annotationList,contentFirstRowNum,contentFirstColNum,clazz);
    }

    /**
     * 根据表头列表，创建表头
     * @param workbook
     * @param sheet
     * @param titleEntities
     * @return 返回列数
     * @throws Exception
     */
    private static int createTitleRows(SXSSFWorkbook workbook,Sheet sheet,List<TitleEntity> titleEntities)throws Exception{
        //垂直合并单元格会存在已经创建的行，所以需要排除
        List<Map<String,Object>> hasCreatedRowList = new ArrayList<Map<String,Object>>();
        int minColNum = 0;
        int maxColNum = 0;
        //文字距离两边的间距
        int spaceWidth = 1;
        BufferedImage bufferImage = null;
        int num = 0;
        int minLength = 40;
        //创建标题
        for(TitleEntity titleEntity : titleEntities){
            String titleStr = titleEntity.getTitle();
            int titleLength = titleStr.getBytes("GBK").length;
            int width = titleEntity.getWidth();
            if(width > titleLength){
                titleLength = width;
            }

            //获取最小列宽
            if(minLength > titleLength){
                minLength = titleLength;
            }

            //该cell起始行
            int firstRow = titleEntity.getStartRowNum();
            //该cell结束行，垂直方向合并，如果跨行则该值大于起始行值
            int lastRow = titleEntity.getEndRowNum();
            //该cell起始列
            int firstCol = titleEntity.getStartColNum();
            //获取最小列
            if(firstCol < minColNum){
                minColNum = firstCol;
            }
            //该cell结束列，水平方向合并，如果跨列，则该值大于起始列
            int lastCol = titleEntity.getEndColNum();
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

            //设置列宽，单个单元格
            if (firstCol == lastCol) {
                int tColWidth = sheet.getColumnWidth(firstCol);
                int tColWidthLength = (titleLength+spaceWidth)*256;
                if (tColWidthLength > tColWidth) {
                    sheet.setColumnWidth(firstCol, tColWidthLength < 3000 ? 3000 : tColWidthLength);
                }
            }
            boolean hasCreated = false;
            Row rowObject = null;
            for(Map<String,Object> tempRowMap : hasCreatedRowList){
                //获取已经创建的行号，和当前行进行比较，如果相等，则不需用创建
                int rowNum = (int) tempRowMap.get("rowNum");
                if(rowNum == firstRow){
                    rowObject = (Row) tempRowMap.get("rowObject");
                    hasCreated = true;
                    break;
                }
            }
            //如果没有创建该行，则新建该行
            if(hasCreated == false){
                rowObject = sheet.createRow(firstRow);
                Map<String,Object> newRowMap = new HashMap<>();
                newRowMap.put("rowNum",firstRow);
                newRowMap.put("rowObject",rowObject);
                hasCreatedRowList.add(newRowMap);
            }
            //设置表头样式
            CellStyle headStyle = createCellStyle(workbook,(short)10,
                                                  titleEntity.getBackgroundFlag(), titleEntity.getAlign(),
                                                  titleEntity.getBlodFlag(), titleEntity.getUnderlineFlag());
            //在当前行上初始化cell
            for(int i= firstCol;i<= lastCol;i++){
                Cell cell = rowObject.createCell(i);
                cell.setCellStyle(headStyle);
                //填充单元格内容
                if(i == firstCol){
                    cell.setCellValue(titleStr);
                }else{
                    //占位符，水平方向
                    cell.setCellValue("");
                }
            }
            //补全行合并后的样式，垂直方向
            for(int i = firstRow + 1; i <= lastRow; i++){
                Row tempRow = null;
                boolean temRowHasCreated = false;
                for(Map<String,Object> tempRowMap : hasCreatedRowList){
                    int rowNum = (int) tempRowMap.get("rowNum");
                    if(rowNum == i){
                        tempRow = (Row) tempRowMap.get("rowObject");
                        temRowHasCreated = true;
                        break;
                    }
                }

                if(temRowHasCreated == false){
                    tempRow = sheet.createRow(i);
                    Map<String,Object> newRowMap = new HashMap<>();
                    newRowMap.put("rowNum",i);
                    newRowMap.put("rowObject",tempRow);
                    hasCreatedRowList.add(newRowMap);
                    }
                 //在原行上进行新增cell
                for(int j = firstCol; j <= lastCol;j++){
                    //占位符
                    Cell cell = tempRow.createCell(j);
                    cell.setCellStyle(headStyle);
                    cell.setCellValue("");
                }
            }
            num++;
        }
        return maxColNum - minColNum + 1;
    }

    /**
     * 从正文列表中获取数据写入单元格
     * @param workbook
     * @param sheet
     * @param contentList
     * @param annotationList
     * @param contentFirstRowNum
     * @param contentFirstColNum
     * @param tClass
     * @param <T>
     * @throws Exception
     */
    private static <T> void createContentRows(SXSSFWorkbook workbook,Sheet sheet,List<T> contentList,
                                              List<Object[]> annotationList, int contentFirstRowNum,int contentFirstColNum,Class<T> tClass)throws Exception{
        if(CollectionUtils.isEmpty(contentList)){
            return;
        }
        for(int i = contentFirstRowNum; i < contentList.size() + contentFirstRowNum;i++){
            T entity = contentList.get(i - contentFirstRowNum);
            CellStyle cellStyle = createCellStyle(workbook,(short)10,false,2,false,false);
            Method getThisSpaceRow = tClass.getMethod("getThisSpaceRow",new Class[]{});
            Object thisSpaceRow = getThisSpaceRow.invoke(entity,new Object[]{});
            //如果是空行，直接跳过
            if((boolean)thisSpaceRow){
                continue;
            }
            Row row = sheet.createRow(i);
            //多少列，根据导出的实例对象中的属性值数量进行导出
            for(int j = 0; j < annotationList.size();j++){
                Object[] annotationObject = annotationList.get(j);
                ExcelConfig excelConfig = (ExcelConfig)annotationObject[0];
                //获取列注解,是否是图片
                Boolean isImg = excelConfig.isImage();
                //获取字段getXxx方法
                Field field = (Field)annotationObject[1];
                String fieldName = field.getName();
                String methodName = "get" + StringUtils.capitalize(fieldName);
                Method getMethod = tClass.getMethod(methodName,new Class[]{});
                //执行getXxx方法
                Object value = getMethod.invoke(entity,new Object[]{});
                String cellFormatString = "@";
                XSSFDataFormat format =  (XSSFDataFormat) workbook.createDataFormat();
                Cell cell = row.createCell(j + contentFirstColNum);
                if(value == null){
                    cell.setCellValue("");
                } else if(value instanceof String){
                    if(isImg){
                        //设置指定行的高度
                        row.setHeight((short) (80*20));
                        //设置指定行的宽度
                        sheet.setColumnWidth(i,10*256);
                        String resourcePath = uploadFilePath.substring(0, uploadFilePath.lastIndexOf("/"));
                        //因为绝对路径，所以去掉前面
                        int index=((String) value).indexOf("commonfile");
                        value=((String) value).substring(index,((String) value).length());
                        if(uploadFilePath.startsWith("file:")){
                            uploadFilePath=uploadFilePath.substring(5,uploadFilePath.length());
                        }
                        resourcePath = uploadFilePath + value.toString();
                        try {
                            ByteArrayOutputStream byteArrayOut = new ByteArrayOutputStream();
                            File file=new File(resourcePath);
                            if(file.exists()){
                                BufferedImage bufferImg = ImageIO.read(new File(resourcePath));//读取文件服务器上面的图片
                                ImageIO.write(bufferImg, resourcePath.substring(resourcePath.lastIndexOf(".") + 1,resourcePath.length()), byteArrayOut);
                                XSSFDrawing patriarch = (XSSFDrawing) sheet.createDrawingPatriarch();
                                //导出图片到单元格中
                                XSSFClientAnchor anchor = new XSSFClientAnchor(0, 0, 255, 255, (short) 1, i, (short) 2, i + 1);
                                anchor.setAnchorType(2);
                                //插入图片
                                patriarch.createPicture(anchor, workbook.addPicture(byteArrayOut.toByteArray(),getImageType(byteArrayOut.toByteArray())));
                            }
                        }catch (Exception e){
                            //log.error("导出插入图片异常"+e);
                        }
                    }else{
                        cell.setCellValue((String)value);
                    }

                } else if(value instanceof Integer){
                    cell.setCellValue((Integer)value);
                    cellFormatString = "0";
                    cellStyle.setDataFormat(format.getFormat(cellFormatString));
                } else if(value instanceof Long){
                    cell.setCellValue((Long) value);
                    cellFormatString = "0";
                    cellStyle.setDataFormat(format.getFormat(cellFormatString));
                } else if(value instanceof Double){
                    cell.setCellValue((Double) value);
                    cellFormatString = "0.00";
                    cellStyle.setDataFormat(format.getFormat(cellFormatString));
                } else if(value instanceof Float){
                    cell.setCellValue((Float) value);
                    cellFormatString = "0.00";
                    cellStyle.setDataFormat(format.getFormat(cellFormatString));
                } else if(value instanceof Date){
                    cell.setCellValue((Date) value);
                    cellFormatString = "yyyy-MM-dd";
                    cellStyle.setDataFormat(format.getFormat(cellFormatString));
                } else {

                }
                cell.setCellStyle(cellStyle);
            }
        }

    }
    /**
     * 设置单元格样式
     * @param workbook
     * @param fontSize
     * @param hasBackground
     * @param alignFlag
     * @param boldFlag
     * @param underlineFlag
     * @return
     */
    private static CellStyle createCellStyle(SXSSFWorkbook workbook,short fontSize,boolean hasBackground,
                                                  int alignFlag,boolean boldFlag,boolean underlineFlag)throws Exception{
        CellStyle style = workbook.createCellStyle();
        switch (alignFlag){
            case 0:
                //自适应
                style.setAlignment(CellStyle.ALIGN_GENERAL);
                break;
            case 1:
                //左对齐
                style.setAlignment(CellStyle.ALIGN_LEFT);
                break;
            case 2:
                //居中
                style.setAlignment(CellStyle.ALIGN_CENTER);
                break;
            case 3:
                //右对齐
                style.setAlignment(CellStyle.ALIGN_RIGHT);
                break;
            default:
                //自适应
                style.setAlignment(CellStyle.ALIGN_GENERAL);
                break;
        }
        //设置背景样式为天蓝色
        if(hasBackground){
            style.setFillPattern(XSSFCellStyle.SOLID_FOREGROUND);
            style.setFillForegroundColor(IndexedColors.SKY_BLUE.index);
        }

        style.setVerticalAlignment(CellStyle.VERTICAL_CENTER);// 垂直居中
        style.setBorderBottom(CellStyle.BORDER_THIN); // 下边框
        style.setBorderLeft(CellStyle.BORDER_THIN);// 左边框
        style.setBorderTop(CellStyle.BORDER_THIN);// 上边框
        style.setBorderRight(CellStyle.BORDER_THIN);// 右边框
        // 创建字体
        XSSFFont font = (XSSFFont)workbook.createFont();

        if(boldFlag){
            font.setBoldweight(Font.BOLDWEIGHT_BOLD);
        }

        if(underlineFlag){
            font.setUnderline(XSSFFont.U_DOUBLE);
            font.setUnderline((byte) 1);
        }
        font.setFontHeightInPoints(fontSize);
        font.setFontName("宋体");
        style.setFont(font);
        return style;
    }

    /**
     * 根据注解获取标题列表
     * @param tClass
     * @param <T>
     * @return
     * @throws Exception
     */
    private static <T> List<TitleEntity> getTitleListFromField(Class<T> tClass,int titleFirstRowNum,int titleFirstColNum) throws Exception{
        List<TitleEntity> titleEntities = new ArrayList<>();
        //从导出实体类中获取表列名
        Field[] fields = tClass.getDeclaredFields();
        for(int i = 0; i < fields.length; i++){
            Field field = fields[i];
            TitleEntity titleEntity = new TitleEntity();
            ExcelConfig excelConfig = field.getAnnotation(ExcelConfig.class);
            //如果设置了excelConfig注解
            if(excelConfig != null){
                titleEntity.setTitle(excelConfig.title());
                titleEntity.setOrderNum(excelConfig.orderNum());
                titleEntity.setAlign(excelConfig.align());
                titleEntity.setBlodFlag(excelConfig.blodFlag());
                titleEntity.setUnderlineFlag(excelConfig.underlineFlag());
                titleEntity.setWidth(excelConfig.width());
                titleEntity.setStartRowNum(excelConfig.startRowNum());
                titleEntity.setEndRowNum(excelConfig.endRowNum());
                titleEntity.setStartColNum(excelConfig.startColNum());
                titleEntity.setEndColNum(excelConfig.endColNum());
                titleEntity.setBackgroundFlag(excelConfig.backgroundFlag());
                titleEntities.add(titleEntity);
                // log.debug(i+excelConfig.title() + "列宽"+excelConfig.width());
            }
        }

        //根据orderNum进行排序
        Collections.sort(titleEntities, Comparator.comparingInt(TitleEntity::getOrderNum));

        //如果没有配置每个单元的起始行列，则默认从表头的起始行列
        TitleEntity temp = titleEntities.get(0);
        if(temp.getStartRowNum() == -1){
            for(int i = 0; i < titleEntities.size();i++){
                TitleEntity titleEntity = titleEntities.get(i);
                titleEntity.setStartRowNum(titleFirstRowNum);
                titleEntity.setEndRowNum(titleFirstRowNum);
                titleEntity.setStartColNum(i + titleFirstColNum);
                titleEntity.setEndColNum(i + titleFirstColNum);
            }
        }

        return titleEntities;
    }

    /**
     * 获取图片后缀名
     * @param photoByte
     * @return
     */
    public static String getFileExtendName(byte[] photoByte) {
        String strFileExtendName = "JPG";
        if ((photoByte[0] == 71) && (photoByte[1] == 73) && (photoByte[2] == 70) && (photoByte[3] == 56) && ((photoByte[4] == 55) || (photoByte[4] == 57)) && (photoByte[5] == 97)) {
            strFileExtendName = "GIF";
        } else if ((photoByte[6] == 74) && (photoByte[7] == 70) && (photoByte[8] == 73) && (photoByte[9] == 70)) {
            strFileExtendName = "JPG";
        } else if ((photoByte[0] == 66) && (photoByte[1] == 77)) {
            strFileExtendName = "BMP";
        } else if ((photoByte[1] == 80) && (photoByte[2] == 78) && (photoByte[3] == 71)) {
            strFileExtendName = "PNG";
        }
        return strFileExtendName;
    }
    /**
     * 获取图片类型,设置图片插入类型
     *
     * @param value
     * @return
     * @Author
     * @date
     */
    public static int getImageType(byte[] value) {
        String type = getFileExtendName(value);
        if (type.equalsIgnoreCase("JPG")) {
            return Workbook.PICTURE_TYPE_JPEG;
        } else if (type.equalsIgnoreCase("PNG")) {
            return Workbook.PICTURE_TYPE_PNG;
        }
        return Workbook.PICTURE_TYPE_JPEG;
    }

}
