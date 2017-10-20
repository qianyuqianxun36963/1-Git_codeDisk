package ibatis.domain;  
  
import java.io.IOException;  
import java.io.Reader;  
import org.apache.ibatis.io.Resources;  
import org.apache.ibatis.session.SqlSession;  
import org.apache.ibatis.session.SqlSessionFactory;  
import org.apache.ibatis.session.SqlSessionFactoryBuilder;  
/*ÔÚÏßapi²Î¿¼  http://tool.oschina.net/apidocs/apidoc?api=mybatis-3.1.1 */
import ibatis.domain.User;  
  
public class Test {  
    public static void main(String[] args) throws IOException {  
        String resource = "domain/configuration.xml";  
        Reader reader = Resources.getResourceAsReader(resource);  
        SqlSessionFactory ssf = new SqlSessionFactoryBuilder().build(reader);  
        SqlSession session = ssf.openSession();  
        try {  
            User user = (User) session.selectOne("selectUser", "1");  
            User user2 = (User) session.selectOne("selectUser", "2"); 
            System.out.println(user);  
            System.out.println(user2); 
        } catch (Exception e) {  
            e.printStackTrace();  
        } finally {  
            session.close();  
        }  
    }  
} 