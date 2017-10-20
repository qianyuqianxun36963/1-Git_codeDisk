package java����.f_�ĵ�.xml��ʽ;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import org.w3c.dom.*;
import org.xml.sax.SAXException;
import javax.xml.parsers.*;
import javax.xml.transform.*;
import javax.xml.transform.dom.DOMSource;
import javax.xml.transform.stream.*;
import javax.xml.xpath.*;
public class  Xml��ɾ�Ĳ�{
    public static void main(String[] args) {
        DocumentBuilderFactory factory=DocumentBuilderFactory.newInstance();
        Element theBook=null, theElem=null, root=null;
        try {
            factory.setIgnoringElementContentWhitespace(true);
            
            //����XML�ļ���ͨ�^XML�ļ��½�document����
            DocumentBuilder db=factory.newDocumentBuilder();
            Document xmldoc=db.parse(new File("MyXml.xml")); 
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
            output(xmldoc);
            //--- �½�һ������� ----
            
//�޸Ľڵ�            
            //--- ����ԡ����ﲨ�ء���һЩ�޸ġ� ----
            //--- ��ѯ�ҡ����ﲨ�ء�----
            theBook=(Element) selectSingleNode("/books/book[name='���ﲨ��']", root);
            System.out.println("--- ��ѯ�ҡ����ﲨ�ء� ----");
            output(theBook);
            //--- ��ʱ�޸��Ȿ��ļ۸� -----
            theBook.getElementsByTagName("price").item(0).setTextContent("15");//getElementsByTagName ���ص���NodeList������Ҫ����item(0)�����⣬getElementsByTagName("price")�൱��xpath ��".//price"��
            System.out.println("--- ��ʱ�޸��Ȿ��ļ۸� ----");
            output(theBook);
            //--- ���⻹���һ������id��ֵΪB01 ----
            theBook.setAttribute("id", "B01");
            System.out.println("--- ���⻹���һ������id��ֵΪB01 ----");
            output(theBook);
            //--- �ԡ����ﲨ�ء��޸���ɡ� ----
            
            
//ɾ���ڵ�           
            //--- Ҫ��id����ɾ�����������塷�Ȿ�� ----
            theBook=(Element) selectSingleNode("/books/book[@id='B02']", root);
            System.out.println("--- Ҫ��id����ɾ�����������塷�Ȿ�� ----");
            output(theBook);
            theBook.getParentNode().removeChild(theBook);
            System.out.println("--- ɾ����ģأͣ� ----");
            output(xmldoc);
            
            //--- �ٽ����м۸����10����ɾ�� ----
            NodeList someBooks=selectNodes("/books/book[price<10]", root);
            System.out.println("--- �ٽ����м۸����10����ɾ�� ---");
            System.out.println("--- �������������С�"+someBooks.getLength()+"���� ---");
            for(int i=0;i<someBooks.getLength();i++) {
                someBooks.item(i).getParentNode().removeChild(someBooks.item(i));
            }
            
            
            
            output(xmldoc);
            
            
            //��Document���󱣴浽�����ļ��С�
            saveXml("Test1_Edited.xml", xmldoc);
            
        } catch (ParserConfigurationException e) {
            e.printStackTrace();
        } catch (SAXException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    
//����ڵ����ݵ�����̨��
    public static void output(Node node) {//��node��XML�ַ������������̨
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