package java语言.f_文档.html格式;

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
        String szContent = Utils.openFile(curPath+"\\src\\java语言\\e_文档\\html格式\\test.html");
        
//            //*****************Parser类********************// 
//            构造方法:
//          这个类有下面几个构造函数：
//          public Parser (String resource) throws ParserException;
//          public Parser (URLConnection connection) throws ParserException;
//          public Parser (Lexer lexer); //较为高级
//          和一个静态类
//          public static Parser createParser (String html, String charset);
            
            Parser parser = new Parser( szContent ); //这里使用的就是第一种构造方法。
//          Parser parser = new Parser( (HttpURLConnection) (new URL("http://127.0.0.1:8080/test.html")).openConnection() );
//          Parser parser = new Parser();   // parser.setURL  
//          parser.setInputHTML(sText);  
//          parser.setEncoding(parser.getEncoding());  
//          Parser parser = Parser.createParser(szContent, ENCODE);

            ReadHtml.readHtml(parser);
            
//          //changeHtml方法基本没什么用。
//          ReadHtml.readHtml(parser);
//          ChangeHtml.changeText(parser,"textcell1","wangyaju");
//          
    }
}

//修改html之后还要 在tohtml方法获取修改后类容，然后进行保存，获取过程中可能也会存在解析问题，所以基本没什么用，除非是一次性修改可以考虑着用一下，基本没用。
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
                Span spanTag = (Span) nodes.elementAt(i); //获取节点集中的某一个节点。
                if(spanTag.getAttribute(flag).equals(flagvalue)){  
                   spanTag.setAttribute(attribute,attrvalue);  
                   Utils.message("========================");
                } 
            }
        } 
    }
}

//解析html 主要用途，但是修改时基本没用。
class ReadHtml{
    
      public static void readHtml(Parser parser) throws ParserException{

      //NodeIterator 类  遍历元素。
//      for (NodeIterator i = parser.elements (); i.hasMoreNodes(); ) {
//          Node node = i.nextNode();
//          Utils.message("toString:"+node.toString());
//          Utils.message("getText:"+node.getText());
//          Utils.message("getPlainText:"+node.toPlainTextString());
//          Utils.message("toHtml:"+node.toHtml());
//          Utils.message("toHtml(true):"+node.toHtml(true));
//          Utils.message("toHtml(false):"+node.toHtml(false));
//          Utils.message("toString:"+node.toString());
//          Utils.message("=================================================");
//      }  
    
      
//        //*****************Visitor类********************// 
//        TextExtractingVisitor visitor = new TextExtractingVisitor();
//        parser.visitAllNodesWith(visitor); //这句是必须的 ，好像是会往    visitor 对象中回填数据。
//        String textInPage = visitor.getExtractedText(); 
//          message(textInPage);
      
//        NodeVisitor visitor = new NodeVisitor( true, true ) {
//        public void visitTag(Tag tag) {
//            Utils.message("This is Tag:"+tag.getText());
//        }
//        public void visitStringNode (Text string)    {
//            Utils.message("This is Text:"+string);
//        }
//        public void visitRemarkNode (Remark remark) {
//            Utils.message("This is Remark:"+remark.getText());
//        }
//        public void beginParsing () {
//            Utils.message("beginParsing");
//        }
//        public void visitEndTag (Tag tag){
//            Utils.message("visitEndTag:"+tag.getText());
//        }
//        public void finishedParsing () {
//            Utils.message("finishedParsing");
//        }
//      };
//      parser.visitAllNodesWith(visitor);

      
        //*****************Filter类********************// 
        NodeFilter filter = new TagNameFilter ("Span");
        NodeList nodes = parser.extractAllNodesThatMatch(filter); 
        Utils.message(nodes.toHtml());
        
//        NodeFilter innerFilter = new TagNameFilter ("a");
//        NodeFilter filter = new HasChildFilter(innerFilter); //public HasChildFilter (NodeFilter filter, boolean recursive) 如果recursive是false，则只对第一级子节点进行过滤。
//        NodeList nodes = parser.extractAllNodesThatMatch(filter);
        
        
      }
}


class Utils{
    private static String ENCODE = "UTF-8";
   //工具类
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