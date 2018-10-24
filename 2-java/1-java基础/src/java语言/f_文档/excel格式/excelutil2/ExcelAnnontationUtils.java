package com.ulearning.onlineexam.base.utils.excel;

import com.ulearning.onlineexam.base.utils.MyDateUtils;
import com.ulearning.onlineexam.base.utils.RegularUtils;
import com.ulearning.onlineexam.base.utils.StringUtils;
import io.swagger.models.auth.In;

import java.lang.reflect.Field;
import java.math.BigDecimal;
import java.util.*;
import java.util.regex.Pattern;

public class ExcelAnnontationUtils {

    /**
     * 根据注解列表
     * @param tClass
     * @param <T>
     * @return
     * @throws Exception
     */
    public static <T> List<Object[]> getGetAnnotationList(Class<T> tClass) throws Exception{
        //方法列表，根据属性生成getxxx方法
        List<Object[]> annotationList = new ArrayList<>();
        Field[] fields = tClass.getDeclaredFields();
        for(int i = 0; i < fields.length; i++) {
            Field field = fields[i];
            ExcelConfig excelConfig = field.getAnnotation(ExcelConfig.class);
            if(excelConfig!=null) {
                annotationList.add(new Object[]{excelConfig, field});
            }
        }
        //排序
        annotationList.sort(new Comparator<Object[]>() {
            @Override
            public int compare(Object[] o1, Object[] o2) {
                return Integer.compare(new Integer(((ExcelConfig)o1[0]).orderNum()),new Integer(((ExcelConfig)o2[0]).orderNum()));
            }
        });
        return annotationList;
    }

    /**
     * 根据类型将字符串转换成对应的类型
     * @param strValue
     * @param clazz
     * @return
     */
    public static Object str2TargetClass(String strValue,Class<?> clazz) {
        if(StringUtils.isNotEmpty(strValue)){
            if(Long.class != clazz && Long.TYPE != clazz){
                if(Integer.class != clazz && Integer.TYPE != clazz){
                    if(Float.class != clazz && Float.TYPE != clazz){
                        if(Double.class != clazz && Double.TYPE != clazz){
                            if(Character.class != clazz && Character.TYPE != clazz){
                                if(Boolean.class != clazz && Boolean.TYPE != clazz){
                                    return Date.class == clazz ? MyDateUtils.str2DateUnmatch2Null(strValue) : strValue;
                                } else {
                                    return Boolean.parseBoolean(strValue);
                                }
                            } else {
                                return strValue.toCharArray()[0];
                            }
                        } else {
                            strValue = matchDoneBigDecimal(strValue);
                            return Double.parseDouble(strValue);
                        }
                    } else {
                        strValue = matchDoneBigDecimal(strValue);
                        return Float.parseFloat(strValue);
                    }
                } else {
                    strValue = matchDoneBigDecimal(strValue);
                    strValue = RegularUtils.converNumByReg(strValue);
                    return Integer.parseInt(strValue);
                }
            } else {
                strValue = matchDoneBigDecimal(strValue);
                strValue = RegularUtils.converNumByReg(strValue);
                return Long.parseLong(strValue);
            }
        }else {
            return null;
        }
    }

    /**
     * 校验是不是大实数类型
     * @param bigDecimal
     * @return
     */
    private static String matchDoneBigDecimal(String bigDecimal) {
        boolean flag = Pattern.matches("^-?\\d+(\\.\\d+)?(E-?\\d+)?$",bigDecimal);
        if(flag){
            BigDecimal decimal = new BigDecimal(bigDecimal);
            bigDecimal = decimal.toPlainString();
        }
        return bigDecimal;
    }
}
