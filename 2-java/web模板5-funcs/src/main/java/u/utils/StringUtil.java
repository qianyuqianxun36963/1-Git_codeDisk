package u.utils;

import java.io.UnsupportedEncodingException;
import java.util.Random;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import b.base.exception.WrongStringException;

public class StringUtil {
	public final static String RAND_STRING = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz";// 随机产生的字符串
	private final static String RAND_INTEGER = "0123456789";// 随机产生的数字

	/**
	 * Escapes any html characters in the input string.
	 * 
	 * @param in
	 * @return
	 */
	public static String escape(String in) {
		StringBuilder out = new StringBuilder();
		for (int i = 0; i < in.length(); i++) {
			char c = in.charAt(i);
			switch (c) {
			case '<':
				out.append("&lt;");
				break;
			case '>':
				out.append("&gt;");
				break;
			case '&':
				out.append("&amp;");
				break;
			case '"':
				out.append("&quot;");
				break;
			case '\n':
				out.append("<br>");
				break;
			default:
				out.append(c);
				break;
			}
		}
		return out.toString();
	}

	/**
	 * 判断字符串是否为空
	 */
	public static boolean isBlank(String string) {
		return (null == string) || (0 == string.trim().length());
	}

	/**
	 * 方法描述： 判断是否是有效的email地址
	 * 
	 * @param emailAddr
	 */
	public static boolean isEmailAddr(String emailAddr) {
		if (emailAddr == null || emailAddr.trim().length() == 0) {
			return false;
		}
		Pattern p = Pattern.compile("\\w+([-+.]\\w+)*@\\w+([-.]\\w+)*\\.\\w+([-.]\\w+)*");
		Matcher m = p.matcher(emailAddr);
		return m.matches();
	}

	// 根据Unicode编码完美的判断中文汉字和符号
	private static boolean isChinese(char c) {
		Character.UnicodeBlock ub = Character.UnicodeBlock.of(c);
		if (ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS
				|| ub == Character.UnicodeBlock.CJK_COMPATIBILITY_IDEOGRAPHS
				|| ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_A
				|| ub == Character.UnicodeBlock.CJK_UNIFIED_IDEOGRAPHS_EXTENSION_B
				|| ub == Character.UnicodeBlock.CJK_SYMBOLS_AND_PUNCTUATION
				|| ub == Character.UnicodeBlock.HALFWIDTH_AND_FULLWIDTH_FORMS
				|| ub == Character.UnicodeBlock.GENERAL_PUNCTUATION) {
			return true;
		}
		return false;
	}

	// 完整的判断中文汉字和符号
	public static boolean isChinese(String strName) {
		char[] ch = strName.toCharArray();
		for (int i = 0; i < ch.length; i++) {
			char c = ch[i];
			if (isChinese(c)) {
				return true;
			}
		}
		return false;
	}

	/**
	 * 方法描述：获取随机字符串
	 * 
	 * @param length
	 *            随机字符串的长度
	 * @return 随机字符串
	 * @author WangJialu
	 * @version Jul 9, 2013 9:47:10 AM
	 */
	public static String getRandCode(int length) {
		if (length < 1) {
			return null;
		}

		Random random = new Random();
		int size = StringUtil.RAND_STRING.length();

		char[] chrs = new char[length];
		for (int i = 0; i < length; i++) {
			chrs[i] = StringUtil.RAND_STRING.charAt(random.nextInt(size));
		}
		return new String(chrs);
	}

	/**
	 * 方法描述：获取随机数字字符
	 * 
	 * @param length
	 *            随机字符串的长度
	 */
	public static String getRandomNumber(int length) {
		if (length < 1) {
			return null;
		}
		Random random = new Random();
		StringBuilder sb = new StringBuilder();
		int size = StringUtil.RAND_INTEGER.length();
		for (int i = 0; i < length; i++) {
			sb.append(StringUtil.RAND_INTEGER.charAt(random.nextInt(size)));
		}
		return sb.toString();
	}

	/**
	 * ISO_8559_1转为GBK
	 * 
	 * @param strIn
	 * @return GBK
	 * @throws WrongStringException
	 * @throws UnsupportedEncodingException
	 */
	public static String IsoToGBK(String strIn) throws WrongStringException, UnsupportedEncodingException {
		if (StringUtil.isBlank(strIn)) {
			throw new WrongStringException("空字符串");
		}

		byte[] b = strIn.getBytes("ISO8859_1");
		return new String(b, "GBK");
	}

	/**
	 * GBK转ISO_8559_1
	 * 
	 * @param strIn
	 * @return ISO_8559_1
	 * @throws WrongStringException
	 * @throws UnsupportedEncodingException
	 */
	public static String GBKToIso(String strIn) throws WrongStringException, UnsupportedEncodingException {
		if (StringUtil.isBlank(strIn)) {
			throw new WrongStringException("空字符串");
		}

		byte[] b = strIn.getBytes("GBK");
		return new String(b, "ISO8859_1");
	}

	/**
	 * 左截取一定长度的文字
	 * 
	 * @param str
	 * @param size
	 * @return
	 */
	public static String truncate(String str, int size) throws NullPointerException {
		if (null == str) {
			throw new NullPointerException();
		}
		if ((size < 0) || (size >= str.length())) {
			return str;
		} else {
			return str.substring(0, size) + "...";
		}
	}

	/**
	 * 以spilt作为数组元素分割符
	 * @param array 数组
	 * @param spilt 数组元素分隔符
	 * @return
	 * @author WangJialu
	 * @version 2017年11月28日下午9:49:40
	 */
	public static String join(String[] array, String spilt) {
		if (null != array && array.length > 0 && null != spilt) {
			StringBuilder sb = new StringBuilder();
			for (String str : array) {
				sb.append(spilt).append(str);
			}
			String result = sb.substring(spilt.length());
			return result;
		}
		return null;
	}

}
