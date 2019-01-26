package java语言.d_系统.io操作;

import java.io.*;

public class 车站代码表转换 {
    public static void main(String args[]){
        func.deal();
    }
}

class cities{
    static File readerFile=new File("E:\\java\\workspace\\练习\\src\\其他\\io操作\\files\\cities.txt");
    static File writerFile=new File("E:\\java\\workspace\\练习\\src\\其他\\io操作\\files\\cities.json");
}

class func{
    public static void deal(){
        try{
            
            FileReader fileReader=new FileReader(cities.readerFile);
            BufferedReader readfrom=new BufferedReader(fileReader);
            
            FileWriter fileWriter=new FileWriter(cities.writerFile);
            BufferedWriter writerto=new BufferedWriter(fileWriter);
            
            
            String line="";
            String str="";
            String elements="";
            String[] elementArr;
            int i=0;
            while((line=readfrom.readLine())!=null){
                str=line.trim();
                elements=str.replaceAll("\t"," ");
                elements=str.replaceAll(" +"," ");
                elements=str.replaceAll(" ","#");
                elementArr=elements.split("#");
                writerto.write(" {\"area\":\"");
                writerto.write(elementArr[0]+"\",   \"station\":\"");
                writerto.write(elementArr[1]+"\"},  ");
                writerto.newLine();
                i++;
                System.out.print("-"+i);
                if(i%100==0)
                System.out.println();
            }
            readfrom.close();
            writerto.close();
            
        }
        catch(IOException e){
            System.out.print("error");
        }
    }
    
}