package java语言.b_数据.容器.实用容器.应用;


import java.util.HashMap;
import java.util.Scanner;

public class 网易测试素材统计 {

    public static void main(String[] args) {
        int count = 0;
        
        HashMap map=new HashMap(); 

        Scanner reader = new Scanner(System.in);
        
        for(int k = 0; k<5 ; k++){
            String str = reader.nextLine();
            if(!str.equals("")){
                String[] strarry = str.split(" ");
                for(int i=0;i<strarry.length;i++){
                if(map.get(strarry[i])==null){map.put(strarry[i],1);};        
                }
            }
        }
        
        
//        while(reader.hasNextLine())
//        {
//            String str = reader.nextLine();
//            String[] strarry = str.split(" ");
//            for(int i=0;i<strarry.length;i++){
//            if(map.get(strarry[i])==null){map.put(strarry[i],1);};        
//            }
//        }
        
        System.out.println(map.size());        
    }    
    
}
