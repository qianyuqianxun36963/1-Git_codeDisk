package velocity;

import java.io.BufferedWriter;  
import java.io.OutputStreamWriter;  
import java.io.StringWriter;
import java.util.ArrayList;  
import java.util.Date;
import java.util.Properties;

import org.junit.Test;
import org.apache.velocity.Template;  
import org.apache.velocity.VelocityContext;  
import org.apache.velocity.app.Velocity;  
import org.apache.velocity.app.VelocityEngine;
import org.apache.velocity.exception.ParseErrorException;  
import org.apache.velocity.exception.ResourceNotFoundException;
import org.apache.velocity.runtime.RuntimeConstants;
import org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader;


public class VeloctiyExamples {  
	@Test
	public void test() throws Exception {
		Way.useWay1("velocity/example.vm");
		Way.useWay2("velocity/example.vm");
	}	
} 


class Way{
	public static void useWay1(String templateFile) throws Exception {  
//        VelocityEngine ve = new VelocityEngine();  
//        ve.init();  
		
		VelocityEngine ve = new VelocityEngine();
		ve.setProperty(RuntimeConstants.RESOURCE_LOADER, "classpath");
		ve.setProperty("classpath.resource.loader.class", ClasspathResourceLoader.class.getName());
		ve.init();
		
        Template template = null;  
        try {  
            template = ve.getTemplate(templateFile);  
        } catch (ResourceNotFoundException rnfe) {  
            System.out.println("Example : error : cannot find template "  
                    + templateFile);  
        } catch (ParseErrorException pee) {  
            System.out.println("Example : Syntax error in template "  
                    + templateFile + ":" + pee);  
        } 
        
        VelocityContext context = new VelocityContext();  
        context.put("name", "chenhailong");  
        context.put("date", new Date().toString());  
        context.put("list", Datas.getNames());  
        
        StringWriter writer = new StringWriter();  
        if (template != null) template.merge(context, writer);  
        System.out.println(writer.toString());  
        writer.close();  
    }  
	
	public static void useWay2(String templateFile) {  
        try {  
        	//首先加载模板
//          Velocity.init(); 
        	
        	Properties p = new Properties();
        	p.put("file.resource.loader.class",
        	"org.apache.velocity.runtime.resource.loader.ClasspathResourceLoader");
        	Velocity.init(p);

            Template template = null;  
            try {  
                template = Velocity.getTemplate(templateFile);  
            } catch (ResourceNotFoundException rnfe) {  
                System.out.println("Example : error : cannot find template "  
                        + templateFile);  
            } catch (ParseErrorException pee) {  
                System.out.println("Example : Syntax error in template "  
                        + templateFile + ":" + pee);  
            }  
  
            //获取数据内容。context
            VelocityContext context = new VelocityContext();  
            context.put("list", Datas.getNames());  
            
            //获取输出位置。
            BufferedWriter writer =  new BufferedWriter(new OutputStreamWriter(System.out));  
  
            //将内容加载入模板，然后输出到输出位置。
            if (template != null) template.merge(context, writer);  
            
            writer.flush();  
            writer.close();  
        } catch (Exception e) {  
            System.out.println(e);  
        }  
    }  
      
}

class Datas{
	@SuppressWarnings({ "unchecked", "rawtypes" })
	 public static ArrayList getNames()  
       {  
           ArrayList list = new ArrayList();  
           list.add("HelloVelocity 1");  
           list.add("HelloVelocity 2");  
           list.add("HelloVelocity 3");  
           list.add("HelloVelocity 4");  
           return list;  
       } 
}