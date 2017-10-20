<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="net.sf.json.JSONArray" %>
<%@ page import="java.io.*" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<% 

request.setCharacterEncoding("utf-8");
String filePath = request.getParameter("filePath"); 

StringBuffer sb=new StringBuffer();
Reader reader = null;
try {
	if((new File(filePath)).isFile()){ //必须是文件才去读文件内容，目录的话是不会去读的。
	    FileInputStream fileinput = new FileInputStream(filePath);
	    //     System.out.println("以字符为单位读取文件内容，一次读多个字节：");
	    // 一次读多个字符
	    char[] tempchars = new char[30];
	    int charread = 0;
		reader = new InputStreamReader(fileinput,"UTF-8");
	
	    // 读入多个字符到字符数组中，charread为一次读取字符数
	    while ((charread = reader.read(tempchars)) != -1) {
	        // 同样屏蔽掉\r不显示
	        if ((charread == tempchars.length)
	                && (tempchars[tempchars.length - 1] != '\r')) {
	            //System.out.print(tempchars);
	            sb.append(tempchars);
	        } else {
	            for (int i = 0; i < charread; i++) {
	                if (tempchars[i] == '\r') {
	                    continue;
	                } else {
	                    //System.out.print(tempchars[i]);
	                    sb.append(tempchars[i]);
	                }
	            }
	        }
	    }
    }

} catch (Exception e1) {
    e1.printStackTrace();
} finally {
    if (reader != null) {
        try {
            reader.close();
        } catch (IOException e1) {
        }
    }
}

ArrayList<Map<Object, Object>> res = new ArrayList<Map<Object, Object>>();
Map<Object, Object> resmap = new HashMap<Object, Object>();resmap.put("data",sb.toString());
res.add(resmap);
JSONArray json = JSONArray.fromObject(res);
String jsondata = json.toString();
//System.out.println("获得的文件数据:"+jsondata);
response.setCharacterEncoding("utf-8");
response.setContentType("application/json; charset=utf-8");
response.getWriter().write(jsondata);
response.getWriter().flush();
response.getWriter().close();


%>