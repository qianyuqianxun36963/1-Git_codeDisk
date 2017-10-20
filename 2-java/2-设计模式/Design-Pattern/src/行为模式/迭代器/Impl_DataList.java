package 行为模式.迭代器;
/**
 *  Data stored in a vector
 */
import java.io.*;
import java.util.*;

public class Impl_DataList implements I_Aggregate {
    private List<Object> data = new ArrayList<Object>();
    
    public Impl_DataList(String fileName) {
        try {
            BufferedReader f = new BufferedReader(new FileReader(fileName));
            String s = f.readLine();
            while(s != null) {
                if(s.trim().length() > 0) {
                    data.add(s);
                }
                s = f.readLine();
            }
            f.close();
        } catch (FileNotFoundException e) {
            System.out.println("Can not find such file !");
        } catch (IOException e) {
            System.out.println("I/O Error !");
            System.exit(0);
        }
    }
    
    public I_Iterator CreateIterator() {
        return new Impl_VectorIterator(data);
    }
    
}