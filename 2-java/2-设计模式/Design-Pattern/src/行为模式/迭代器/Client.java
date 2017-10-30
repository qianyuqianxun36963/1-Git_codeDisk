package 行为模式.迭代器;

import java.io.File;

public class Client  {
    public static void main(String[] args) {
        String fileName = new File("").getAbsolutePath().replaceAll("\\\\","/")+"/src/行为模式/迭代器/data.txt";
        
        Impl_DataList datalist = new Impl_DataList(fileName);
        I_Iterator iVector = datalist.CreateIterator();
        for(iVector.First(); ! iVector.IsDone(); iVector.Next()) {
            iVector.CurrentItem();
        }
    }
}