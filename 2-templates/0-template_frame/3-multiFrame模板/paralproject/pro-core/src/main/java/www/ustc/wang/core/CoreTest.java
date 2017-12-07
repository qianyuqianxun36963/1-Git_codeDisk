package www.ustc.wang.core;

import org.junit.Test;
import www.ustc.wang.server.ServerTest;

public class CoreTest {
    @Test
    public void hi() {
        System.out.println("this is core!");
        ServerTest serverTest = new ServerTest();
        serverTest.hi();
    }
}
