package com.ulearning.onlineexam.base.utils.excel;

import lombok.Data;

import java.io.Serializable;

/**
 * 标题实体类
 */
@Data
public class TitleEntity implements Serializable {

    private static final long serialVersionUID = 8262006650198479760L;

    //标题内容
    private String title;

    //开始行号
    private Integer startRowNum;

    //结束行号
    private Integer endRowNum;

    //开始列号
    private Integer startColNum;

    //结束列号
    private Integer endColNum;
    //排序编号
    private Integer orderNum;

    //导出字段对齐方式（0：自动；1：靠左；2：居中；3：靠右）
    private Integer align=2;

    //是否加粗标志，true加粗，false不加粗
    private Boolean blodFlag=false;

    //是否下划线样式，true有下划线，false没有
    private Boolean underlineFlag=false;

    //列宽，单位为字符，一个汉字=2个字符
    private int width=6;
    //是否设置背景颜色
    private Boolean backgroundFlag=false;


    public TitleEntity(String title, Integer startRowNum, Integer endRowNum, Integer startColNum, Integer endColNum, Integer orderNum, Integer align) {
        this.title = title;
        this.startRowNum = startRowNum;
        this.endRowNum = endRowNum;
        this.startColNum = startColNum;
        this.endColNum = endColNum;
        this.orderNum = orderNum;
        this.align = align;
    }

    public TitleEntity(){

    }


}
