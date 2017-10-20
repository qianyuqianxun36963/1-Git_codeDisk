package java����.f_�ĵ�.html��ʽ;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.io.FileInputStream;
import java.io.File;

import org.htmlparser.*;
import org.htmlparser.filters.*;
import org.htmlparser.tags.*;
import org.htmlparser.util.*;
//import org.htmlparser.visitors.*;
//
//import java.net.HttpURLConnection;
//import java.net.URL;


/**
* @author www.baizeju.com
*/
public class HtmlUtils {
    public static void main(String[] args) throws ParserException {
	    File directory = new File("");
		String curPath=directory.getAbsolutePath(); 
        String szContent = Utils.openFile(curPath+"\\src\\java����\\e_�ĵ�\\html��ʽ\\test.html");
        
//        	//*****************Parser��********************// 
//        	���췽��:
//          ����������漸�����캯����
//          public Parser (String resource) throws ParserException;
//          public Parser (URLConnection connection) throws ParserException;
//          public Parser (Lexer lexer); //��Ϊ�߼�
//          ��һ����̬��
//          public static Parser createParser (String html, String charset);
        	
            Parser parser = new Parser( szContent ); //����ʹ�õľ��ǵ�һ�ֹ��췽����
//          Parser parser = new Parser( (HttpURLConnection) (new URL("http://127.0.0.1:8080/test.html")).openConnection() );
//          Parser parser = new Parser();   // parser.setURL  
//          parser.setInputHTML(sText);  
//          parser.setEncoding(parser.getEncoding());  
//          Parser parser = Parser.createParser(szContent, ENCODE);

            ReadHtml.readHtml(parser);
            
//          //changeHtml��������ûʲô�á�
//          ReadHtml.readHtml(parser);
//          ChangeHtml.changeText(parser,"textcell1","wangyaju");
//          
    }
}

//�޸�html֮��Ҫ ��tohtml������ȡ�޸ĺ����ݣ�Ȼ����б��棬��ȡ�����п���Ҳ����ڽ������⣬���Ի���ûʲô�ã�������һ�����޸Ŀ��Կ�������һ�£�����û�á�
class ChangeHtml{
	
    public static void changeText(Parser parser,String id,String text) throws ParserException{
    	changeSpan(parser,"id",id,"value",text);
    }
    
    public static void changeVisiable(Parser parser,String id,String visiable) throws ParserException{
    	changeSpan(parser,"id",id,"display",visiable);
    }
    
    public static void changeSpan(Parser parser,String flag,String flagvalue,String attribute,String attrvalue) throws ParserException{
    	NodeFilter filter = new NodeClassFilter(Span.class);  
        NodeList nodes = parser.extractAllNodesThatMatch(filter);  
        
        if(nodes!=null) {
            for (int i = 0; i < nodes.size(); i++) {
            	Span spanTag = (Span) nodes.elementAt(i); //��ȡ�ڵ㼯�е�ĳһ���ڵ㡣
            	if(spanTag.getAttribute(flag).equals(flagvalue)){  
                   spanTag.setAttribute(attribute,attrvalue);  
                   Utils.message("========================");
            	} 
            }
        } 
    }
}

//����html ��Ҫ��;�������޸�ʱ����û�á�
class ReadHtml{
	
      public static void readHtml(Parser parser) throws ParserException{

	  //NodeIterator ��  ����Ԫ�ء�
//	  for (NodeIterator i = parser.elements (); i.hasMoreNodes(); ) {
//	      Node node = i.nextNode();
//	      Utils.message("toString:"+node.toString());
//	      Utils.message("getText:"+node.getText());
//	      Utils.message("getPlainText:"+node.toPlainTextString());
//	      Utils.message("toHtml:"+node.toHtml());
//	      Utils.message("toHtml(true):"+node.toHtml(true));
//	      Utils.message("toHtml(false):"+node.toHtml(false));
//	      Utils.message("toString:"+node.toString());
//	      Utils.message("=================================================");
//      }  
	
	  
//		//*****************Visitor��********************// 
//	    TextExtractingVisitor visitor = new TextExtractingVisitor();
//	    parser.visitAllNodesWith(visitor); //����Ǳ���� �������ǻ���    visitor �����л������ݡ�
//	    String textInPage = visitor.getExtractedText(); 
//	  	message(textInPage);
	  
//		NodeVisitor visitor = new NodeVisitor( true, true ) {
//	    public void visitTag(Tag tag) {
//	        Utils.message("This is Tag:"+tag.getText());
//	    }
//	    public void visitStringNode (Text string)    {
//	        Utils.message("This is Text:"+string);
//	    }
//	    public void visitRemarkNode (Remark remark) {
//	        Utils.message("This is Remark:"+remark.getText());
//	    }
//	    public void beginParsing () {
//	        Utils.message("beginParsing");
//	    }
//	    public void visitEndTag (Tag tag){
//	        Utils.message("visitEndTag:"+tag.getText());
//	    }
//	    public void finishedParsing () {
//	        Utils.message("finishedParsing");
//	    }
//	  };
//	  parser.visitAllNodesWith(visitor);

	  
		//*****************Filter��********************// 
		NodeFilter filter = new TagNameFilter ("Span");
		NodeList nodes = parser.extractAllNodesThatMatch(filter); 
	    Utils.message(nodes.toHtml());
	    
//		NodeFilter innerFilter = new TagNameFilter ("a");
//		NodeFilter filter = new HasChildFilter(innerFilter); //public HasChildFilter (NodeFilter filter, boolean recursive) ���recursive��false����ֻ�Ե�һ���ӽڵ���й��ˡ�
//		NodeList nodes = parser.extractAllNodesThatMatch(filter);
		
		
      }
}


class Utils{
    private static String ENCODE = "UTF-8";
   //������
   public static String openFile( String szFileName ) {
       try {
           BufferedReader bis = new BufferedReader(new InputStreamReader(new FileInputStream( new File(szFileName)), ENCODE) );
           String szContent="";
           String szTemp;
           
           while ( (szTemp = bis.readLine()) != null) {
               szContent+=szTemp+"\n";
           }
           bis.close();
           return szContent;
       }
       catch( Exception e ) {
           return "";
       }
    }
   
    public static void message( String szMsg ) {
        try{System.out.println(new String(szMsg.getBytes(ENCODE), System.getProperty("file.encoding"))); } catch(Exception e ){}
    }
}