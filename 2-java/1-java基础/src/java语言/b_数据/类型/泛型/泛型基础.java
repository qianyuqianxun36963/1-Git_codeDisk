package java����.b_����.����.����;

import java.util.ArrayList;
import java.util.List;

public class ���ͻ��� {
	 @SuppressWarnings({ })
	 public static void main(String[] args) throws InstantiationException, IllegalAccessException, ClassNotFoundException {
		 ������.test();
		 ���ͷ���.test();
		 ���ͽӿ�.test();
	 }
}

/****** ������ ******/

	//�����࣬����ʵ�������ʱ��ָ�����͵ľ�������;���ͷ��������ڵ��÷�����ʱ��ָ�����͵ľ������͡�
	//�������������
	//class A<D>  A�Ƿ���������ƣ�D�����еķ��͡�����û��ָ��E�Ǻ������ͣ�����˵�����������κζ����ӿڣ��������ǻ������͡�
	class ������<T> {
		
	    private T data;

	    public static void test(){
	    	������.textself();
	    	����.test();
			 ���ͺ�������.test();
			 ͨ���.test();
	    }
	    
	    public ������() {

	    }

	    public ������(T data) {
	        setData(data);
	    }

	    public T getData() {
	        return data;
	    }

	    public void setData(T data) {
	        this.data = data;
	    }
	    
	    public static void textself(){
			 ������<String> x = new ������<String>();
			 x.setData("�����Ƿ������Բ��ԡ�");
			 System.out.println(x.getData());
	    }

	}

	class ����{
		@SuppressWarnings({ "rawtypes", "unchecked" })
		public static void test(){
			//List<Object> list = new ArrayList();
	        List list = new ArrayList(); //���������Ǿ���һ���ġ�listĬ�ϵ�����ΪObject���͡�
	        list.add(123.123);
	        list.add("234");
	        list.add(100);
	        for (int i = 0; i < list.size(); i++) {
	            Object name =  list.get(i); // 1
	            System.out.println("name:" + name);
	        }
		}
	}

	class ���ͺ�������{
		public static void test(){
			/**��֤�̳й�ϵ��������<Integer> ���ܸ�ֵ��  ������<Number> *********************/
	        /**Number��Integer�ĸ��࣬��������<Number>���Ƿ�����<Integer>�ĸ��� ************/
			/**������<?>���߼����Ƿ�����<Integer>��������<Number>...�����з�����<��������ʵ��>�ĸ���**/
	                            ������<Number> name = new ������<Number>(99);
	        @SuppressWarnings("unused")
			������<Integer> age = new ������<Integer>(712);

//	        getData(name);
	        getData(age);  //����Ǳ����:"The method getData(������<Number>) in the type ���ͻ��� is not applicable for the arguments (������<Integer>)";
		}
		
		public static void getData(������<Integer> data){
			 System.out.println("data :" + data.getData());
	    }
	}

	class ͨ���{
		public static void test(){
			������<String> name = new ������<String>("corn");
			������<Integer> age = new ������<Integer>(712);
	       	������<Number> number = new ������<Number>(314);

	        getData(name);
	        getData(age);
	        getData(number);
	        
//	        getUpperNumberData(name); // 1
	        getUpperNumberData(age);    // 2
	        getUpperNumberData(number); // 3
	        
//	        getDownNumberData(name); // 1
//	        getDownNumberData(age);    // 2
	        getDownNumberData(number); // 3
		}
		
		//������<?>���߼����Ƿ�����<Integer>��������<Number>...�����з�����<��������ʵ��>�ĸ��ࡣ
		public static void getData(������<?> data) {
	        System.out.println("data :" + data.getData());
	    }
	    
		//������ʵ�����н�һ�������ƣ�ֻ����Number�༰�����ࡣ��ʱ����Ҫ�õ�����ͨ������ޡ�
	    public static void getUpperNumberData(������<? extends Number> data){
	        System.out.println("data :" + data.getData());
	    }
	    
	    //������ʵ�����н�һ�������ƣ�ֻ����Number�༰�丸�ࡣ��ʱ����Ҫ�õ�����ͨ������ޡ�
	    public static void getDownNumberData(������<? super Number> data){
	        System.out.println("data :" + data.getData());
	    }
	    
	}

/****** ���ͷ��� ******/

	//�����࣬����ʵ�������ʱ��ָ�����͵ľ�������;���ͷ��������ڵ��÷�����ʱ��ָ�����͵ľ������͡�
	//���ͷ����Ķ��巶Χ[public��private...��] ������������[<T>��<E��F>...֮���������] ��������[T��int��void..����] ������[get��set...] [(�����б�,���Ϳ�����T��int��String...��)] 
	class ���ͷ���{
		public int number=123;
		private String num="234";
		
		@SuppressWarnings("unchecked")
		public static void test() throws InstantiationException, IllegalAccessException, ClassNotFoundException{
			���ͷ���   test=new ���ͷ���();
			Object obj= test.getobject(Class.forName("java����.b_����.����.����.���ͷ���"));
			System.out.println(obj.getClass());
			
			���ͷ���  testobj=(���ͷ���) test.getobject(Class.forName("java����.b_����.����.����.���ͷ���"));
			System.out.println(testobj.number);
			System.out.println(testobj.num);
			
			out("findingsea");
	        out(123);
	        out(11.11);
	        out(true);
	        
	        out(123,356);
	        
	        out("findingsea", 123, 11.11, true,123,356);
	        
	        display(123);
	        display("123");
	        display(123f);
		}
		
		//���ͷ����Ķ��壺 ��Χ[public��private...��] ������������[<T>��<E��F>...֮���������] ��������[T��int��void..����] ������[get��set...] [(�����б�,���Ϳ�����T��int��String...��)] 
		public <T> T getobject(Class<T> c) throws InstantiationException,IllegalAccessException{
			//�������Ͷ���
			T t =c.newInstance();
			return t;
		}
		
		//���ۺ�ʱ��ֻҪ�������������Ӧ�þ���ʹ�÷��ͷ��������Կ��������Ĳ������׷����ˣ���������漰���������������Ƶ����Զ������Ҳ��˵ԭ����Ҫ�����Լ������ͽ��е��жϺʹ������ڱ��������������ˡ������ڶ��巽����ʱ�򲻱ؿ����Ժ󵽵���Ҫ������Щ���͵Ĳ�������������˱�̵�����ԡ�
		public static <T> void out(T t) {
	        System.out.println(t+"; ");
	    }
		
		//'������������'��'�����б�'�������ࡣ
		public static <T,E> void out(T t,int i,String s) {
			System.out.println(t+" "+i);
		}
		
		@SuppressWarnings("unchecked")
		public static <T> void out(T... args) {
	        for (T t : args) {
	            System.out.print(t+"; ");
	        }
	        System.out.println("");
	    }
		
		public static <T> void display(T t) {
	        System.out.println(t.getClass());
	    }
	}


//���ͽӿ�
	class ���ͽӿ�{
		public static void test(){
			Inter<String> in = new InterImpl<String>(); //ʵ����
			in.show("hahah");
		}
	}

	interface Inter<T> {
		abstract void show(T t);
	}
	//ʵ�ֽӿ�
	class InterImpl<T> implements Inter<T> {
		@Override
		public void show(T t) {
		// TODO �Զ����ɵķ������
		System.out.println(t);
		}
	}
