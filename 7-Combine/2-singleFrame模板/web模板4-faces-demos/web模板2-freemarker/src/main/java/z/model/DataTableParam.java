package z.model;

import java.io.Serializable;

/**
 * 
 * 简介：datatable返回数据的实体类<BR/>
 *
 * 描述：封装后台查询出的数据返回给前端datatable表格解析的实体<BR/>
 * 
 * @see [com.bshinfo.web.model.dataTableUtil.DataTableModel]
 *
 * @since JDK1.7
 *
 * @version  V1.00
 *
 */

public class DataTableParam implements Serializable 
{
	private static final long serialVersionUID = 6003791544948183660L;
	private String name;
	private String value;
	
	public DataTableParam(String name, String value) 
	{
		super();
		this.name = name;
		this.value = value;
	}

	public DataTableParam() 
	{
		super();
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getValue() {
		return value;
	}
	public void setValue(String value) {
		this.value = value;
	}
}
