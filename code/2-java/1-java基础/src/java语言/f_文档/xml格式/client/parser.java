package java语言.f_文档.xml格式.client;

import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.io.SAXReader;
import org.dom4j.tree.DefaultElement;
import org.dom4j.tree.DefaultText;
import org.junit.Test;

import java.io.*;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * @ClassName TestbedParser
 * @Description
 * @Author w00466247
 * @Date 2019/1/2 15:56
 * @Version 1.0
 **/
public class parser {
    private List<FabricDevLcm> fabricDevLcms = null;
    FabricDevLcm fabricDevLcm = null;

    @Test
    public void  test(){
        File file = new File( "src/java语言/f_文档/xml格式/res/testbed.xml");
        try {
            parserFabricDevInfos2DB(file);
        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
    }

    public void parserFabricDevInfos2DB(String xmlStr){
        parserXmlInfos2DB(xmlStr,new String[]{"dev"});
    }

    public void parserDutInfos2DB(String xmlStr){
    }

    public void parserFabricDevInfos2DB(File file) throws FileNotFoundException {
        parserXmlInfos2DB(file,new String[]{"dev"});
    }

    public void parserDutInfos2DB(File file){

    }

    public void parserXmlInfos2DB(File file,String[] parts) throws FileNotFoundException {
        InputStream is = new FileInputStream(file);
        parserXmlInfos2DB(is,parts);
    }

    public void parserXmlInfos2DB(String xmlStr,String[] parts){
        InputStream is = new ByteArrayInputStream(xmlStr.getBytes());
        parserXmlInfos2DB(is,parts);
    }

    public void parserXmlInfos2DB(InputStream is,String[] parts){
        SAXReader reader = new SAXReader();
        fabricDevLcms = new ArrayList<FabricDevLcm>();
        try {
            Document document = reader.read(is);
            Element rootstore = document.getRootElement();
            Iterator storeit = rootstore.elementIterator();
            while(storeit.hasNext()){
                Element element = (Element) storeit.next();
                String elementname =  element.getQName().getName();
                if(elementname.equals("devices")){
                    Iterator  devicesit = element.element("dev_group").elementIterator();
                    while(devicesit.hasNext()){
                        Element element1 = (Element) devicesit.next();
                        String elementname1 = element1.getQName().getName();
                        if(elementname1.equals("devices")){
                            Element device = element1.element("device");
                            Iterator fieldit = device.elementIterator();
                            while (fieldit.hasNext()){
                                Element field = (Element) fieldit.next();
                                field.attribute(0).getValue();
                                field.attribute("name").getValue();
                                ((DefaultText) ((DefaultElement) field).content()).getText();
                            }
                        }
                    }
                }
            }
        } catch (DocumentException e) {
            e.printStackTrace();
        }
    }
    public void parser2DevInfo(Element element){
        fabricDevLcm = new FabricDevLcm();
        Iterator FabricDutinfoit = element.elementIterator();
        while(FabricDutinfoit.hasNext()){
            Element child = (Element) FabricDutinfoit.next();
            String nodeName = child.getName();
            if(nodeName.equals("name")){
//System.out.println(child.getStringValue());
                String name = child.getStringValue();
                fabricDevLcm.setName(name);
            }else if(nodeName.equals("author")){
                String author = child.getStringValue();
//FabricDutinfo.setAuthor(author);
            }
        }
        fabricDevLcms.add(fabricDevLcm);
        fabricDevLcm = null;
    }

}