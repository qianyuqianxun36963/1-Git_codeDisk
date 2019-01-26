package java语言.c_特性.异常处理;

import java.io.FileNotFoundException;
import java.io.IOException;

public class 接口抛异常 {
    public static void main(String args[]) throws IOException{
        Level level = new Level(1);
//        Level level = new Level(11);
//        Level level = new Level(21);
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
    void print() throws IOException;//定义的接口的方法,抛出IO异常
}

class B implements A {
    Level n;B(Level n){this.n = n;}
    @Override
    public void print() throws FileNotFoundException {//实现方法可以抛出IO异常的子类异常
        if(n.level<10){throw new FileNotFoundException("file not found!");}
    }
}

class C implements A{
    Level n;C(Level n){this.n = n;}
    @Override
    public void print() throws IOException {//可以抛出一样的异常
        if(10<n.level&&n.level<20){throw new IOException("IOException!");}
    }
}

class D implements A{
    Level n;D(Level n){this.n = n;}
    @Override
    public void print()  {//可以不抛异常
        System.out.println("nothing here, no problem");
    }
}