package java语言.f_文档.html格式;

import java.io.File;

import org.htmlparser.NodeFilter;
import org.htmlparser.Parser;
import org.htmlparser.filters.NodeClassFilter;
import org.htmlparser.tags.HeadingTag;
import org.htmlparser.tags.LinkTag;
import org.htmlparser.util.NodeList;
import org.htmlparser.util.ParserException;

public class 给html标题加锚点 {
    public static void main(String[] args) throws ParserException {
        System.out.println("this is head");
        File directory = new File("");
        String curPath=directory.getAbsolutePath(); 
        String szContent = Utils.openFile(curPath+"\\src\\java语言\\e_文档\\html格式\\test.html");
        Parser parser = new Parser( szContent ); //这里使用的就是第一种构造方法。
        changeH(parser);
    }
    
    //为每一个h标签加一个a标签，作为锚点。不过好像得不到想要的结果，所以。。基本没用。
    public static void changeH(Parser parser) throws ParserException{
        NodeFilter filter = new NodeClassFilter(HeadingTag.class);  
        NodeList nodes = parser.extractAllNodesThatMatch(filter);  
        
        if(nodes!=null) {
            for (int i = 0; i < nodes.size(); i++) {
                HeadingTag headTag = (HeadingTag) nodes.elementAt(i); //获取节点集中的某一个节点。
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
