package dbUtil;

import java.sql.*;

public class ConnectMysql {
    private static final String db_driver = "com.mysql.jdbc.Driver";
    private static final String db_url ="jdbc:mysql://192.168.175.233:3306/test"; //虚拟机slaveC的mysql地址
    private static final String user = "root";
    private static final String passwd = "wang";
    public static void main(String args[]){
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("加载驱动成功!");
        } catch (ClassNotFoundException e) {
            System.out.println("加载驱动失败!");
            e.printStackTrace();
        }
        try {
            String a ="a";
            conn = DriverManager.getConnection(db_url, user, passwd);
            String b ="b";
            String sqlStr = "select * from test";
            PreparedStatement pstmtSelect = conn.prepareStatement(sqlStr);

            ResultSet rs = pstmtSelect.executeQuery();

            while (rs.next()) {
                String stuID = rs.getString(1);
            }
            pstmtSelect.close();

        }catch(SQLException e) {
            System.out.println("出现SQLException异常");
        } finally {
            //关闭语句和数据库连接
            try {
                if (conn != null) conn.close();
            } catch(SQLException e) {
                System.out.println("关闭数据库连接时出现异常");
            }
        }

    }
}
