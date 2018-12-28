// holding/Vowels16.java
// TIJ4 Chapter Holding, Exercise 16, page 419
/* Create a Set of the vowels. Working from UniqueWords.java, count and
* display the number of vowels in each input word, and also display the total
* number of vowels in the input file.
*/
package java语言.b_数据.容器.实用容器.应用;
import java.util.*;

public class 字符统计_set方式 {
    public static void main(String[] args) {
        Set<String> words = new TreeSet<String>();
        Collections.addAll(words,"123","awew","AEASD","aAer");
        Set<Character> vowels = new TreeSet<Character>();
        Collections.addAll(vowels, 
            'A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u');
        
        System.out.println("被统计的字符串:"+words);
        System.out.println("用来统计的字符:"+vowels);
        vowelCounter(words,vowels);        
        vowelCounter20(words,vowels);
    }        
    
    static void vowelCounter20(Set<String> st,Set<Character> vowels) {        
        int allVowels = 0;
        Map<Character,Integer> vowelMap =
            new TreeMap<Character,Integer>();
        for(String s : st) {
            for(Character v : s.toCharArray()) {        
                if(vowels.contains(v)) {
                    Integer count = vowelMap.get(v);
                    vowelMap.put(v, 
                        count == null ? 1 : count + 1);
                    allVowels++; 
                }
            }
        }
        System.out.println("分字符统计:  " + vowelMap);    
        System.out.println("Total vowels: " + allVowels);
    }
    
    static void vowelCounter(Set<String> st,Set<Character> vowels) {
        int allVowels = 0;
        System.out.print("分单词统计:  ");    
        for(String s : st) { //遍历这个set集合。
            int count = 0;
            for(Character v : s.toCharArray()) {        
                if(vowels.contains(v)) { //利用的set的contains方法，判断一个字符是否在其中。
                    count++;
                    allVowels++; 
                }
            }
            System.out.print(s + ": " + count + ", ");        
        }
        System.out.println();    
        System.out.println("Total vowels: " + allVowels);
    }
}
