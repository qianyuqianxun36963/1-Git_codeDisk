package java����.c_����.�쳣����;

import java.io.FileNotFoundException;
import java.io.IOException;

public class �ӿ����쳣 {
    public static void main(String args[]) throws IOException{
    	Level level = new Level(1);
//    	Level level = new Level(11);
//    	Level level = new Level(21);
    	B b = new B(level);
    	C c = new C(level);
    	D d = new D(level);
    	b.print();
    	c.print();
    	d.print();
    }
}

class Level{int level;Level(int i){this.level = i;}}

interface A{
    void print() throws IOException;//����Ľӿڵķ���,�׳�IO�쳣
}

class B implements A {
	Level n;B(Level n){this.n = n;}
	@Override
    public void print() throws FileNotFoundException {//ʵ�ַ��������׳�IO�쳣�������쳣
		if(n.level<10){throw new FileNotFoundException("file not found!");}
	}
}

class C implements A{
	Level n;C(Level n){this.n = n;}
    @Override
    public void print() throws IOException {//�����׳�һ�����쳣
    	if(10<n.level&&n.level<20){throw new IOException("IOException!");}
    }
}

class D implements A{
	Level n;D(Level n){this.n = n;}
    @Override
    public void print()  {//���Բ����쳣
    	System.out.println("nothing here, no problem");
    }
}