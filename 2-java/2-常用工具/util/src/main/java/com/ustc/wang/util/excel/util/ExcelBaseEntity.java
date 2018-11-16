package com.ustc.wang.util.excel.util;

import lombok.Data;
import java.io.Serializable;

@Data
public class ExcelBaseEntity implements Serializable {

    //标识该条数据为空行数据，不需用绘制
    private Boolean thisSpaceRow = false;
}
