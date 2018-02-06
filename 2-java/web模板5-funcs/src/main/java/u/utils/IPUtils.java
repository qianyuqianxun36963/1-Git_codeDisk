package u.utils;

import java.net.InetAddress;

import javax.servlet.http.HttpServletRequest;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;


/**
 * IP地址管理
 * @author thinkpad
 *
 */
public class IPUtils {
    private static Logger logger = LogManager.getLogger(IPUtils.class);
	
    /**
     * 获取用户端ip地址，
     * 使用nginx等反向代理，则不能通过request.getremoteAddr()获取ip，
     * 如果使用了多级反向代理的话，X-Forwarded-For的值不止一个，而是一串ip地址，
     * X-Forwarder-For中第一个非unknown的有效IP为真实ip
     * @param request
     * @return
     */
    public static String getRemoteIpAddr(HttpServletRequest request) {
    	String ip = null;
    	try{
    		ip = request.getHeader("x-forwarder-for");
    		if(StringUtils.isEmpty(ip) || "unknown".equalsIgnoreCase(ip)) {
    			ip = request.getHeader("Proxy-Client-IP");
    		} 
    		
    		if(StringUtils.isEmpty(ip) || ip.length() == 0 || "unknown".equalsIgnoreCase(ip)) {
    			ip = request.getHeader("WL-Proxy-Client-IP");
    		}
    		
    		if(StringUtils.isEmpty(ip) || "unknown".equalsIgnoreCase(ip)) {
    			ip = request.getHeader("HTTP_CLIENT_IP");
    		}
    		
    		if(StringUtils.isEmpty(ip) || "unknown".equalsIgnoreCase(ip)) {
    			ip = request.getHeader("HTTP_X_FORWARDED_FOR");
    		}
    		
    		if(StringUtils.isEmpty(ip) || "unknown".equalsIgnoreCase(ip)) {
    			ip = request.getRemoteAddr();
    		}
    		
    	}catch(Exception e) {
    		logger.error("获取用户端ip失败",e);
    	}
    	
    	return ip;
    }
    
    /**
     * 获取项目地址
     * @return
     */
    public static String getProjectPath() {
    	String nowPath = "";
    	
    	nowPath = System.getProperty("user.dir") + "/";
    	
    	return nowPath;
    }
    
    /**
     * 获取本机ip
     * @return
     */
    public static String getLocalIP() {
    	String ip = null;
    	try{
    		InetAddress inet = InetAddress.getLocalHost();
    		ip = inet.getHostAddress();
    	}catch(Exception e) {
    		logger.error("获取本机ip地址失败",e);
    	}
    	
    	return ip;
    }
}
