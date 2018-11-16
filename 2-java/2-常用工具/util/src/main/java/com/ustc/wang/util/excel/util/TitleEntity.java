package com.ustc.wang.util.excel.util;

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

    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public Integer getStartRowNum() {
        return startRowNum;
    }

    public void setStartRowNum(Integer startRowNum) {
        this.startRowNum = startRowNum;
    }

    public Integer getEndRowNum() {
        return endRowNum;
    }

    public void setEndRowNum(Integer endRowNum) {
        this.endRowNum = endRowNum;
    }

    public Integer getStartColNum() {
        return startColNum;
    }

    public void setStartColNum(Integer startColNum) {
        this.startColNum = startColNum;
    }

    public Integer getEndColNum() {
        return endColNum;
    }

    public void setEndColNum(Integer endColNum) {
        this.endColNum = endColNum;
    }

    public Integer getOrderNum() {
        return orderNum;
    }

    public void setOrderNum(Integer orderNum) {
        this.orderNum = orderNum;
    }

    public Integer getAlign() {
        return align;
    }

    public void setAlign(Integer align) {
        this.align = align;
    }

    public Boolean getBlodFlag() {
        return blodFlag;
    }

    public void setBlodFlag(Boolean blodFlag) {
        this.blodFlag = blodFlag;
    }

    public Boolean getUnderlineFlag() {
        return underlineFlag;
    }

    public void setUnderlineFlag(Boolean underlineFlag) {
        this.underlineFlag = underlineFlag;
    }

    public int getWidth() {
        return width;
    }

    public void setWidth(int width) {
        this.width = width;
    }

    public Boolean getBackgroundFlag() {
        return backgroundFlag;
    }

    public void setBackgroundFlag(Boolean backgroundFlag) {
        this.backgroundFlag = backgroundFlag;
    }

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
