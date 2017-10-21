package com.struts_1.begin;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * 正则替换字符串里面的汉字部分。
 * 
 * @author gameover
 */
public class URL中文地址转码 {
  public static void main(String[] args) throws Exception {
    String str = "./views/1_快速上手/loged.jsp";
    System.out.println(encode(str, "UTF-8"));
  }

  private static String zhPattern = "[\u4E00-\u9FA5]";

  /**
   * 替换字符串卷
   * 
   * @param str 被替换的字符串
   * @param charset 字符集
   * @return 替换好的
   * @throws UnsupportedEncodingException 不支持的字符集
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