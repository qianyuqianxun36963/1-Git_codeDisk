package www.ustc.wang.core;

import www.ustc.wang.server.ServerTest;

public class CoreTest {
    public void hi() {
        System.out.println("this is core!");
        ServerTest serverTest = new ServerTest();
        serverTest.hi();
    }
}
