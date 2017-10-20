package xml;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.StringReader;
import java.io.StringWriter;

import org.w3c.dom.*;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

import javax.xml.parsers.*;
import javax.xml.transform.*;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.*;
import javax.xml.xpath.*;
public class  Xml增删改查{
	
	//对象顺序：DocumentBuilderFactory-》DocumentBuilder-》Document-》Element 
	static  DocumentBuilderFactory builderfactory;
	static  DocumentBuilder builder ;
	static  Document xmldoc;
	
	public static void init() throws ParserConfigurationException, SAXException, IOException{
		builderfactory=DocumentBuilderFactory.newInstance();
		builderfactory.setIgnoringElementContentWhitespace(true);
		//解析XML文件，通過XML文件新建document對象。
		builder=builderfactory.newDocumentBuilder();
		xmldoc=builder.parse(new File("MyXml.xml")); 
	}
	 
	
    public static void main(String[] args) {
        Element theBook=null, theElem=null, root=null;
        try {
        	init();
            root=xmldoc.getDocumentElement();
//新增一个节点。
            //--- 新建一本书开始 ----
            //新建一个元素节点， 往里面加属性。
            theBook=xmldoc.createElement("book");
            
            //新建一個属性节点。如下:<name>新书</name>
            theElem=xmldoc.createElement("name");
            theElem.setTextContent("新书");
            theBook.appendChild(theElem);
            
            theElem=xmldoc.createElement("price");
            theElem.setTextContent("20");
            theBook.appendChild(theElem);
            
            theElem=xmldoc.createElement("memo");
            theElem.setTextContent("新书的更好看。");
            theBook.appendChild(theElem);
            
            root.appendChild(theBook);
            
            System.out.println("--- 新建一本书开始 ----");
            //printXml(xmldoc);
            //--- 新建一本书完成 ----
            
//修改节点            
            //--- 下面对《哈里波特》做一些修改。 ----
            //--- 查询找《哈里波特》----
            theBook=(Element) selectSingleNode("/books/book[name='哈里波特']", root);
            System.out.println("--- 查询找《哈里波特》 ----");
            //printXml(theBook);
            //--- 此时修改这本书的价格 -----
            theBook.getElementsByTagName("price").item(0).setTextContent("15");//getElementsByTagName 返回的是NodeList，所以要跟上item(0)。另外，getElementsByTagName("price")相当于xpath 的".//price"。
            System.out.println("--- 此时修改这本书的价格 ----");
            //printXml(theBook);
            //--- 另外还想加一个属性id，值为B01 ----
            theBook.setAttribute("id", "B01");
            System.out.println("--- 另外还想加一个属性id，值为B01 ----");
            //printXml(theBook);
            //--- 对《哈里波特》修改完成。 ----
            
            
//删除节点           
            //--- 要用id属性删除《三国演义》这本书 ----
            theBook=(Element) selectSingleNode("/books/book[@id='B02']", root);
            System.out.println("--- 要用id属性删除《三国演义》这本书 ----");
            //printXml(theBook);
            theBook.getParentNode().removeChild(theBook);
            System.out.println("--- 删除后的ＸＭＬ ----");
            //printXml(xmldoc);
            
            //--- 再将所有价格低于10的书删除 ----
            NodeList someBooks=selectNodes("/books/book[price<10]", root);
            System.out.println("--- 再将所有价格低于10的书删除 ---");
            System.out.println("--- 符合条件的书有　"+someBooks.getLength()+"本。 ---");
            for(int i=0;i<someBooks.getLength();i++) {
                someBooks.item(i).getParentNode().removeChild(someBooks.item(i));
            }
            

            //printXml(xmldoc);
            String xmlstring = TransformerToString(xmldoc);
            System.out.println("this is transformed string:"+xmlstring+"this is end of the string.");
            
            Document transdoc = TransformerToDocument(xmlstring);
            printXml(transdoc);
            
            //将Document对象保存到物理文件中。
            saveXml("Test1_Edited.xml", xmldoc);
            
        } catch (ParserConfigurationException e) {
            e.printStackTrace();
        } catch (SAXException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        } catch (TransformerFactoryConfigurationError e) {
			e.printStackTrace();
		} catch (TransformerException e) {
			e.printStackTrace();
		}
    }

    
//选中一个节点。
    public static Node selectSingleNode(String express, Object source) {//查找节点，并返回第一个符合条件节点
        Node result=null;
        XPathFactory xpathFactory=XPathFactory.newInstance();
        XPath xpath=xpathFactory.newXPath();
        try {
        	//evaluate 求…的值
            result=(Node) xpath.evaluate(express, source, XPathConstants.NODE);
        } catch (XPathExpressionException e) {
            e.printStackTrace();
        }
        
        return result;
    }
    
//筛选一批节点。
    public static NodeList selectNodes(String express, Object source) {//查找节点，返回符合条件的节点集。
        NodeList result=null;
        XPathFactory xpathFactory=XPathFactory.newInstance();
        XPath xpath=xpathFactory.newXPath();
        try {
            result=(NodeList) xpath.evaluate(express, source, XPathConstants.NODESET);
        } catch (XPathExpressionException e) {
            e.printStackTrace();
        }
        
        return result;
    }
    
    public static String TransformerToString(Document document) throws TransformerFactoryConfigurationError, TransformerException{
    	StringWriter writer = new StringWriter();
     	Transformer trans = TransformerFactory.newInstance().newTransformer() ;
    	trans.setOutputProperty(OutputKeys.ENCODING, "UTF-8") ;
    	Source source = new DOMSource(document) ;
    	Result result = new StreamResult(writer) ;
    	trans.transform(source, result) ;
    	System.out.println(writer.toString());
    	return writer.toString();
    }
    
    public static Document TransformerToDocument(String string) throws SAXException, IOException{
    	StringReader sr=new StringReader(string);
    	InputSource is=new InputSource(sr);
    	Document document=builder.parse(is);
        return document;
    }
    
//输出节点内容到控制台。
    public static void printXml(Node node) {//将node的XML字符串输出到控制台
        TransformerFactory transFactory=TransformerFactory.newInstance();
        try {
            Transformer transformer = transFactory.newTransformer();
            transformer.setOutputProperty("encoding", "GBK");
            transformer.setOutputProperty("indent", "yes");
            DOMSource source=new DOMSource();
            source.setNode(node);
            StreamResult result=new StreamResult();
            result.setOutputStream(System.out);
            
            transformer.transform(source, result);
        } catch (TransformerConfigurationException e) {
            e.printStackTrace();
        } catch (TransformerException e) {
            e.printStackTrace();
        }   
    }
    
//保存XML对象到文件的方法！！！
    public static void saveXml(String fileName, Document doc) {//将Document输出到文件
        TransformerFactory transFactory=TransformerFactory.newInstance();
        try {
            Transformer transformer = transFactory.newTransformer();
            transformer.setOutputProperty("indent", "yes");
            DOMSource source=new DOMSource();
            source.setNode(doc);
            StreamResult result=new StreamResult();
            result.setOutputStream(new FileOutputStream(fileName));
            
            transformer.transform(source, result);
        } catch (TransformerConfigurationException e) {
            e.printStackTrace();
        } catch (TransformerException e) {
            e.printStackTrace();
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }   
    }
}