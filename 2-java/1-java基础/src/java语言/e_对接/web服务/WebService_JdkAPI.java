package java����.e_�Խ�.web����;

import javax.jws.WebMethod;
import javax.jws.WebService;
import javax.xml.ws.Endpoint;
/** 
 *  @WebService �� ����һ��ע�⣬��������ָ�������෢����һ��ws. 
    Endpoint �C ����Ϊ�˵�����࣬���ķ���publish���ڽ�һ���Ѿ������@WebServiceע�����󶨵�һ����ַ�Ķ˿��ϡ� 
 * @author wangyajun
 * 
 */  

@WebService  
public class WebService_JdkAPI {  
	/** �������ע��@WebService���������зǾ�̬�������ᱻ���� */     
	public String HelloWord(String name){  
		return"Hello: "+name;  
	}  
	   
	/** *���exclude=true��HelloWord2()�������ᱻ����* @param name* @return */  
	@WebMethod(exclude=true)  
	public String HelloWord2(String name){  
		return"Hello: "+name;  
	}  
	
	//����API�����������񵽵�ַ�˿ڡ�
	public static void main(String[] args) {  
	/***����1������ķ�����ַ	 *����2�������ʵ����*/  
	Endpoint.publish("http://127.0.0.1:8029/helloWord",new WebService_JdkAPI());  
	   
	}  
}

//����WSDL�ĵ����ڿͻ��˱�д���룬���ʷ����ķ���
//���ǣ�WSDL�ĵ���������ô�죿�������α�д��
//�����㿴������JDK���ö���wsimport��JDK�Դ��ģ����Ը���WSDL�ĵ����ɿͻ��˵��ô���Ĺ��ߡ����۷�������WebServiceʹ��ʲô���Ա�д�ģ������ڿͻ�������Java���롣���Է�������ʲô���Ա�д�Ĳ�����Ҫ��
//wsimport.exe���������֪��
//    -d:����class�ļ���Ĭ�ϲ�����
//    -s������Java�ļ�
//    -p���Զ�����ṹ
//����:E:> wsimport -s . http://127.0.0.1:8018/helloWord?wsdl
//ִ����������󣬼�����E�����������°����� 
//ִ��ʱ������Ҳ���������Ե�jdk��binĿ¼��ִ�С����ǽ�binĿ¼��ӵ�����������





