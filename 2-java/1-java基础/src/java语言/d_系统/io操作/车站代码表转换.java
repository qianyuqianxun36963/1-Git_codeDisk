package java����.d_ϵͳ.io����;

import java.io.*;

public class ��վ�����ת�� {
	public static void main(String args[]){
		func.deal();
	}
}

class cities{
	static File readerFile=new File("E:\\java\\workspace\\��ϰ\\src\\����\\io����\\files\\cities.txt");
	static File writerFile=new File("E:\\java\\workspace\\��ϰ\\src\\����\\io����\\files\\cities.json");
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