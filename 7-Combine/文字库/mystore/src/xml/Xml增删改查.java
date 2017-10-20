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
public class  Xml��ɾ�Ĳ�{
	
	//����˳��DocumentBuilderFactory-��DocumentBuilder-��Document-��Element 
	static  DocumentBuilderFactory builderfactory;
	static  DocumentBuilder builder ;
	static  Document xmldoc;
	
	public static void init() throws ParserConfigurationException, SAXException, IOException{
		builderfactory=DocumentBuilderFactory.newInstance();
		builderfactory.setIgnoringElementContentWhitespace(true);
		//����XML�ļ���ͨ�^XML�ļ��½�document����
		builder=builderfactory.newDocumentBuilder();
		xmldoc=builder.parse(new File("MyXml.xml")); 
	}
	 
	
    public static void main(String[] args) {
        Element theBook=null, theElem=null, root=null;
        try {
        	init();
            root=xmldoc.getDocumentElement();
//����һ���ڵ㡣
            //--- �½�һ���鿪ʼ ----
            //�½�һ��Ԫ�ؽڵ㣬 ����������ԡ�
            theBook=xmldoc.createElement("book");
            
            //�½�һ�����Խڵ㡣����:<name>����</name>
            theElem=xmldoc.createElement("name");
            theElem.setTextContent("����");
            theBook.appendChild(theElem);
            
            theElem=xmldoc.createElement("price");
            theElem.setTextContent("20");
            theBook.appendChild(theElem);
            
            theElem=xmldoc.createElement("memo");
            theElem.setTextContent("����ĸ��ÿ���");
            theBook.appendChild(theElem);
            
            root.appendChild(theBook);
            
            System.out.println("--- �½�һ���鿪ʼ ----");
            //printXml(xmldoc);
            //--- �½�һ������� ----
            
//�޸Ľڵ�            
            //--- ����ԡ����ﲨ�ء���һЩ�޸ġ� ----
            //--- ��ѯ�ҡ����ﲨ�ء�----
            theBook=(Element) selectSingleNode("/books/book[name='���ﲨ��']", root);
            System.out.println("--- ��ѯ�ҡ����ﲨ�ء� ----");
            //printXml(theBook);
            //--- ��ʱ�޸��Ȿ��ļ۸� -----
            theBook.getElementsByTagName("price").item(0).setTextContent("15");//getElementsByTagName ���ص���NodeList������Ҫ����item(0)�����⣬getElementsByTagName("price")�൱��xpath ��".//price"��
            System.out.println("--- ��ʱ�޸��Ȿ��ļ۸� ----");
            //printXml(theBook);
            //--- ���⻹���һ������id��ֵΪB01 ----
            theBook.setAttribute("id", "B01");
            System.out.println("--- ���⻹���һ������id��ֵΪB01 ----");
            //printXml(theBook);
            //--- �ԡ����ﲨ�ء��޸���ɡ� ----
            
            
//ɾ���ڵ�           
            //--- Ҫ��id����ɾ�����������塷�Ȿ�� ----
            theBook=(Element) selectSingleNode("/books/book[@id='B02']", root);
            System.out.println("--- Ҫ��id����ɾ�����������塷�Ȿ�� ----");
            //printXml(theBook);
            theBook.getParentNode().removeChild(theBook);
            System.out.println("--- ɾ����ģأͣ� ----");
            //printXml(xmldoc);
            
            //--- �ٽ����м۸����10����ɾ�� ----
            NodeList someBooks=selectNodes("/books/book[price<10]", root);
            System.out.println("--- �ٽ����м۸����10����ɾ�� ---");
            System.out.println("--- �������������С�"+someBooks.getLength()+"���� ---");
            for(int i=0;i<someBooks.getLength();i++) {
                someBooks.item(i).getParentNode().removeChild(someBooks.item(i));
            }
            

            //printXml(xmldoc);
            String xmlstring = TransformerToString(xmldoc);
            System.out.println("this is transformed string:"+xmlstring+"this is end of the string.");
            
            Document transdoc = TransformerToDocument(xmlstring);
            printXml(transdoc);
            
            //��Document���󱣴浽�����ļ��С�
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

    
//ѡ��һ���ڵ㡣
    public static Node selectSingleNode(String express, Object source) {//���ҽڵ㣬�����ص�һ�����������ڵ�
        Node result=null;
        XPathFactory xpathFactory=XPathFactory.newInstance();
        XPath xpath=xpathFactory.newXPath();
        try {
        	//evaluate �󡭵�ֵ
            result=(Node) xpath.evaluate(express, source, XPathConstants.NODE);
        } catch (XPathExpressionException e) {
            e.printStackTrace();
        }
        
        return result;
    }
    
//ɸѡһ���ڵ㡣
    public static NodeList selectNodes(String express, Object source) {//���ҽڵ㣬���ط��������Ľڵ㼯��
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
    
//����ڵ����ݵ�����̨��
    public static void printXml(Node node) {//��node��XML�ַ������������̨
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
    
//����XML�����ļ��ķ���������
    public static void saveXml(String fileName, Document doc) {//��Document������ļ�
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