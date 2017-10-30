// holding/UniqueWords22.java
// TIJ4 Chapter Holding, Exercise 22, page422
/* Modify the previous exercise so that it uses a class containing a String and
* a count field to store each different word, and a Set of these objects to 
* maintain the list of words.
*/
package java语言.b_数据.容器.实用容器.应用;

import java.util.*;

class Word {
	static int totalWords = 0;	
	String s;	
	int count;
	Word(String s, int count) { 
		this.s = s; 
		this.count = count;
		totalWords++;
	}
	public String toString() { return s + ": " + count; }
}

public class 单词统计_set方式 {
	@SuppressWarnings("rawtypes")
	public static void main(String[] args) {
		List<String> words = new ArrayList<String>();
		Collections.addAll(words,"1","awew","awew","awew","AEASD","aAer");
		System.out.println("Words to count: " + words);
		Collections.sort(words, String.CASE_INSENSITIVE_ORDER);
		System.out.println("Words to count, sorted: " + words);
		
		Set<Word> wordObjects = new HashSet<Word>();
		Iterator it = words.iterator();	
		while(it.hasNext()) {
			String s = (String)it.next();
			int count = 0;			
			for(int i = 0; i < words.size(); i++) {
				if(s.equals(words.get(i))) count++;
			}
			Word w = new Word(s, count);
			wordObjects.add(w);
		}		
		System.out.println("Word count: " + wordObjects);
		System.out.println("Total words: " + Word.totalWords);		
	}		
}
