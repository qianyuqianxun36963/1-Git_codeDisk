package dbUtil;

import java.sql.*;

public class ConnectMysql {
    private static final String db_driver = "com.mysql.jdbc.Driver";
    private static final String db_url ="jdbc:mysql://192.168.175.233:3306/test"; //�����slaveC��mysql��ַ
    private static final String user = "root";
    private static final String passwd = "wang";
    public static void main(String args[]){
        Connection conn = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            System.out.println("���������ɹ�!");
        } catch (ClassNotFoundException e) {
            System.out.println("��������ʧ��!");
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
            System.out.println("����SQLException�쳣");
        } finally {
            //�ر��������ݿ�����
            try {
                if (conn != null) conn.close();
            } catch(SQLException e) {
                System.out.println("�ر����ݿ�����ʱ�����쳣");
            }
        }

    }
}
