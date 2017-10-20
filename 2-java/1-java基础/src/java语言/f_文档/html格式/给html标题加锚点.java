package java����.f_�ĵ�.html��ʽ;

import java.io.File;

import org.htmlparser.NodeFilter;
import org.htmlparser.Parser;
import org.htmlparser.filters.NodeClassFilter;
import org.htmlparser.tags.HeadingTag;
import org.htmlparser.tags.LinkTag;
import org.htmlparser.util.NodeList;
import org.htmlparser.util.ParserException;

public class ��html�����ê�� {
    public static void main(String[] args) throws ParserException {
    	System.out.println("this is head");
	    File directory = new File("");
		String curPath=directory.getAbsolutePath(); 
        String szContent = Utils.openFile(curPath+"\\src\\java����\\e_�ĵ�\\html��ʽ\\test.html");
        Parser parser = new Parser( szContent ); //����ʹ�õľ��ǵ�һ�ֹ��췽����
        changeH(parser);
    }
    
    //Ϊÿһ��h��ǩ��һ��a��ǩ����Ϊê�㡣��������ò�����Ҫ�Ľ�������ԡ�������û�á�
	public static void changeH(Parser parser) throws ParserException{
		NodeFilter filter = new NodeClassFilter(HeadingTag.class);  
        NodeList nodes = parser.extractAllNodesThatMatch(filter);  
        
        if(nodes!=null) {
            for (int i = 0; i < nodes.size(); i++) {
            	HeadingTag headTag = (HeadingTag) nodes.elementAt(i); //��ȡ�ڵ㼯�е�ĳһ���ڵ㡣
            	Utils.message("headTag:"+headTag.getText());
            	NodeList list = new NodeList();
            	LinkTag linkTag = new LinkTag();
            	linkTag.setAttribute("name", headTag.getText()+"_"+i);
            	list.add(linkTag);
            	headTag.setChildren(list);
            	Utils.message("headTag:"+headTag.toHtml());
            	Utils.message("========================");
            }
        } 
	}
}
