package java语言.e_对接.web服务;

import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.xml.ws.Endpoint;
/** 
 *  @WebService － 它是一个注解，用在类上指定将此类发布成一个ws. 
    Endpoint – 此类为端点服务类，它的方法publish用于将一个已经添加了@WebService注解对象绑定到一个地址的端口上。 
 * @author wangyajun
 * 
 */  

@WebService  
public class WebService_JdkAPI {  
    /** 类上添加注解@WebService，类中所有非静态方法都会被发布 */     
    public String HelloWord(String name){  
        return"Hello: "+name;  
    }  
       
    /** *添加exclude=true后，HelloWord2()方法不会被发布* @param name* @return */  
    @WebMethod(exclude=true)  
    public String HelloWord2(String name){  
        return"Hello: "+name;  
    }  
    
    //调用API方法发布服务到地址端口。
    public static void main(String[] args) {  
    /***参数1：服务的发布地址     *参数2：服务的实现者*/  
    Endpoint.publish("http://127.0.0.1:8029/helloWord",new WebService_JdkAPI());  
       
    }  
}

//根据WSDL文档来在客户端编写代码，访问发布的服务；
//但是，WSDL文档看不懂怎么办？代码该如何编写？
//——你看不懂，JDK看得懂，wsimport是JDK自带的，可以根据WSDL文档生成客户端调用代码的工具。无论服务器端WebService使用什么语言编写的，豆浆在客户端生成Java代码。所以服务器用什么语言编写的并不重要。
//wsimport.exe命令参数熟知：
//    -d:生成class文件。默认参数。
//    -s：生成Java文件
//    -p：自定义包结构
//例如:E:> wsimport -s . http://127.0.0.1:8018/helloWord?wsdl
//执行以上命令后，即可在E盘下生成如下包及类 
//执行时，如果找不到命令，可以到jdk的bin目录下执行。或是将bin目录添加到环境变量。





