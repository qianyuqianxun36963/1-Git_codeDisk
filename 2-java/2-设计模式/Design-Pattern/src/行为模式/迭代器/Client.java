package ��Ϊģʽ.������;

import java.io.File;

public class Client  {
    public static void main(String[] args) {
        String fileName = new File("").getAbsolutePath().replaceAll("\\\\","/")+"/src/��Ϊģʽ/������/data.txt";
        
        Impl_DataList datalist = new Impl_DataList(fileName);
        I_Iterator iVector = datalist.CreateIterator();
        for(iVector.First(); ! iVector.IsDone(); iVector.Next()) {
            iVector.CurrentItem();
        }
    }
}