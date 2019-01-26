package java语言.f_文档.xml格式.readxmlUtils;

import java.util.List;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import java语言.f_文档.xml格式.bean.Book;
import java语言.f_文档.xml格式.handler.SAXParseHandler;



/**
 * 用SAX方式读取xml文件
 * @author lune
 */
public class ReadXmlBySAX {

	private static List<Book> books = null;
	
	private  SAXParserFactory sParserFactory = null;
	private  SAXParser parser = null;
	
	
	public List<Book> getBooks(String fileName) throws Exception{
		SAXParserFactory sParserFactory = SAXParserFactory.newInstance();
		SAXParser parser = sParserFactory.newSAXParser();
		
		SAXParseHandler handler = new SAXParseHandler();
		parser.parse(fileName, handler);
		
		return handler.getBooks();
		
	}
	/**
	 * @param args
	 */
	public static void main(String[] args) {
		try {
			books = new ReadXmlBySAX().getBooks( "src/java语言/f_文档/xml格式/res/books.xml");
			for(Book book:books){
				System.out.println(book);
			}
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

	}

}
