package com.struts_1.begin;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * �����滻�ַ�������ĺ��ֲ��֡�
 * 
 * @author gameover
 */
public class URL���ĵ�ַת�� {
  public static void main(String[] args) throws Exception {
    String str = "./views/1_��������/loged.jsp";
    System.out.println(encode(str, "UTF-8"));
  }

  private static String zhPattern = "[\u4E00-\u9FA5]";

  /**
   * �滻�ַ�����
   * 
   * @param str ���滻���ַ���
   * @param charset �ַ���
   * @return �滻�õ�
   * @throws UnsupportedEncodingException ��֧�ֵ��ַ���
   */
  public static String encode(String str, String charset) throws UnsupportedEncodingException {
    Pattern p = Pattern.compile(zhPattern);
    Matcher m = p.matcher(str);
    StringBuffer b = new StringBuffer();
    while (m.find()) {
      m.appendReplacement(b, URLEncoder.encode(m.group(0), charset));
    }
    m.appendTail(b);
    return b.toString();
  }
}