// holding/UniqueWords21.java
// TIJ4 Chapter Holding, Exercise 21, page422
/* Using a Map<String,Integer>, follow the form of UniqueWords.java to create a
* program that counts the occurrence of words in a file. Sort the results using 
* Collections.sort() with a second argument of String.CASE_INSENSITIVE_ORDER (to
* produce an alphabetic sort), and display the result.
*/

package java����.b_����.����.ʵ������.Ӧ��;
import java.util.*;

public class ����ͳ��_list��ʽ {
	@SuppressWarnings("rawtypes")
	public static void main(String[] args) {
		List<String> words = new ArrayList<String>();
		Collections.addAll(words,"123","123","123","awew","2","aAer","adf");
		System.out.println("Words to count: " + words);
		Collections.sort(words, String.CASE_INSENSITIVE_ORDER);
		System.out.println("Words to count, sorted: " + words);
		
		Map<String,Integer> wordCount =	new LinkedHashMap<String,Integer>();
		Iterator it = words.iterator();
		int totalWords = 0;
		while(it.hasNext()) {
			String s = (String)it.next();
			if(words.contains(s)) {  //��list��contains������
				Integer count = wordCount.get(s);				//��ȡkey����Ӧ�ĵ��ʳ��ֵĸ�����
				wordCount.put(s,count == null ? 1 : count + 1);	//key��Ӧ�ĵ�����������һ�������һ
				totalWords++;
			}
		}
		System.out.println("Word count: " + wordCount);
		System.out.println("Total words: " + totalWords);		
	}		
}
