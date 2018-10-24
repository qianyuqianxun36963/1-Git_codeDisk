package com.ulearning.onlineexam.base.utils.excel;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/**
 * excel导出 对象注解
 */
@Target({ElementType.METHOD,ElementType.FIELD,ElementType.TYPE})
@Retention(RetentionPolicy.RUNTIME)
public @interface ExcelConfig {
    //标题,如果没有单元格合并，或者特殊处理，可以直接使用该标题，如果特殊的需要使用titlentity特殊设置，该属性不用配置
    String title();
    //列号
    int orderNum() default 0;
    //开始行号，如果不需要垂直方向合并，开始行号和结束行号相同
    int startRowNum() default -1;
    //结束行号
    int endRowNum() default -1;
    //开始列号，如果不需用水平方向合并，开始列号和结束列号相同
    int startColNum() default -1;
    //结束列号
    int endColNum() default  -1;
    //是否是图片，如果是图片，则在cell中绘制图片
    boolean isImage() default false;
    //导出字段对齐方式（0：自动；1：靠左；2：居中；3：靠右）
    int align() default 0;
    //列宽，单位为字符，一个汉字=2个字符
    int width();
    //是否加粗标志，true加粗，false不加粗
    boolean blodFlag() default true;
    //是否下划线样式，true有下划线，false没有
    boolean underlineFlag() default false;
    //是否设置背景颜色
    boolean backgroundFlag() default false;
}
