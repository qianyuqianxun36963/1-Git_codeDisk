package java����.c_����.����;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class ����ԭ�� {
	public static void main(String[] args) throws ClassNotFoundException 
    {
        String [] names ={"tom","tim","allen","alice"};

//      ����1�����������ʲô
//      ���������������״̬�У���������һ���࣬���ܹ�֪���������������Ժͷ�����
//      ��������һ�����󣬶��ܹ�������������һ�����������ԣ�
//      ���ֶ�̬��ȡ����Ϣ�Լ���̬���ö���ķ����Ĺ��ܳ�Ϊjava���Եķ�����ơ�
        
//		����:2��Class<?> class ��ʵ��
        
//      Class����������һ����Ľṹ����������һ��������Щ��Ա������Щ�����ȡ�
        
//      Class��ʵ����ȡ��ʽ��
//      <1> ֱ��ͨ���໹��ã�
        Class<?> c = Test.class;
        
//      <2>ͨ�����������
        Test test = new Test();
        Class<?> c2 = test.getClass();
        
//      <3>ͨ��Class.forName�����
        Class<?> c3 = Class.forName("java����.c_����.����.Test");
        
        
        
        //�����õ����������࣬����Ǳ����Լ������Բ��������Ǿ䣬ֱ����this:������Ķ����־c����this
        try
        {
            Method method = c.getMethod("sayrHi", String.class);//��������ͷ�����һ����int��Integer��double��Double����Ϊ��ͬ������
            for(String name:names)
                method.invoke(c.newInstance(),name);//invoke ����������������ķ�����
        } 
        catch (NoSuchMethodException e) {
        	e.printStackTrace();
			throw new RuntimeException("û�д˷�����" + e.getMessage(), e);
		}catch(InvocationTargetException e){
			e.printStackTrace();
			throw new RuntimeException("Ŀ�귽��ִ��ʧ�ܣ�" + e.getMessage(), e);
		}catch(IllegalAccessException e){
			e.printStackTrace();
			throw new RuntimeException("����ܷ�����һ��˽�еķ�����" + e.getMessage(), e);
		}catch(IllegalArgumentException e){
			e.printStackTrace();
			throw new RuntimeException("����������һ�����Ϸ�����ȷ�Ĳ�����" + e.getMessage(), e);
        }catch(InstantiationException e){
        	e.printStackTrace();
        	throw new RuntimeException("ʵ�����쳣��" + e.getMessage(), e);
        }catch(Exception e){
        	e.printStackTrace();
        	throw new RuntimeException(e.getMessage(), e);
		}
    }
}

class Test
{
    public void sayHi(String name)
    {
        System.out.println("Hi "+name);
    }
}