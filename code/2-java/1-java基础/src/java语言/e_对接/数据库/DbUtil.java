package java语言.e_对接.数据库;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class DbUtil {
    public static void main(String args[]) throws SQLException, InstantiationException, IllegalAccessException, ClassNotFoundException{
        DbUtil db=new DbUtil();
        Boolean issuccess=db.execQuerySql("select * from ORG_EMPLOYEE");
        System.out.println("sql execute"+((issuccess==true)?" successful":" failed"));
//        Boolean issuccess=new DbUtil().execQuerySql("select * from ORG_EMPLOYEE");
//        System.out.println("sql execute"+((issuccess==true)?" successful":" failed"));
//        DbUtil db2=new DbUtil("local_mysql");
//        System.out.println(db2.dbname+";"+db2.username);
//        Boolean isMysqlsuccess=new DbUtil("local_mysql").execQuerySql("select * from ORG_EMPLOYEE");
//        System.out.println("sql execute"+((isMysqlsuccess==true)?" successful":" failed"));
    }
    
    //static DataSource ds = DataSourceHelper.getDataSource("default");
    String dbname="";
    String conStr;
    String dbtype;
    String username;
    String password;
    
    public DbUtil() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
        this.dbname = PropertiesUtils.getFileConfigValue("dbname");
        initDBInfo();
        initdbDriver(dbtype);
    }
    
    public DbUtil(String dbname) throws InstantiationException, IllegalAccessException, ClassNotFoundException{
        this.dbname=dbname;
        initDBInfo();
        initdbDriver(dbtype);
    }
    
    private void initDBInfo(){
        conStr = PropertiesUtils.getFileConfigValue(dbname+"_address");
        dbtype = PropertiesUtils.getFileConfigValue(dbname+"_dbtype");
        username = PropertiesUtils.getFileConfigValue(dbname+"_username");
        password = PropertiesUtils.getFileConfigValue(dbname+"_password");
    }
    
    private void initdbDriver(String dbtype) throws InstantiationException, IllegalAccessException, ClassNotFoundException{
        if(dbtype.equals("mysql")){
            Class.forName("com.mysql.jdbc.Driver").newInstance();
        }
        else if(dbtype.equals("oracle")){
            Class.forName("oracle.jdbc.driver.OracleDriver").newInstance();
        }
        else {System.out.println("there is no suitable driver for this kind of db!");}
    }
    
    public Boolean execQuerySql(String sqlstr) throws SQLException, InstantiationException, IllegalAccessException, ClassNotFoundException{
        Connection con = null;
        Statement stmt = null;
        ResultSet resultSet = null;
        
        try{
            System.out.println(dbname);
            con = DriverManager.getConnection(conStr, username, password);
            stmt = con.createStatement();
            String  sqlStr=sqlstr;
            resultSet = stmt.executeQuery(sqlStr);
            
            String username;
            int  userid;
            while (resultSet.next()){ //循环遍历查询结果。
                username=resultSet.getString(2); //从结果集中取值的方式。
                userid=resultSet.getInt("EMPID");
                System.out.println("user's username and userid is "+username+";"+userid);
            }
            
            return true;
            }
        catch (Exception e) {
            // TODO 自动生成的 catch 块
            e.printStackTrace();
            return false;
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
    

    public Boolean execSql(String sqlstr) throws SQLException, InstantiationException, IllegalAccessException, ClassNotFoundException{
        Connection con = null;
        Statement stmt = null;
        @SuppressWarnings("unused")
        ResultSet resultSet = null;
        
        try{
            System.out.println(dbname);
            con = DriverManager.getConnection(conStr, username, password);
            stmt = con.createStatement();
            String  sqlStr=sqlstr;
            stmt.execute(sqlStr);
            return true;
            }
        catch (Exception e) {
            // TODO 自动生成的 catch 块
            e.printStackTrace();
            return false;
        } finally {
            try {
                if (stmt != null) {
                    stmt.close();
                }
                if (con != null) {
                    con.close();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
    
}
