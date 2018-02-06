package u.utils;

import java.io.File;
import java.security.GeneralSecurityException;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.net.ssl.SSLContext;
import javax.net.ssl.TrustManager;
import javax.net.ssl.X509TrustManager;

import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.ssl.SSLConnectionSocketFactory;
import org.apache.http.entity.ContentType;
import org.apache.http.entity.StringEntity;
import org.apache.http.entity.mime.MultipartEntityBuilder;
import org.apache.http.entity.mime.content.FileBody;
import org.apache.http.entity.mime.content.StringBody;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.impl.client.HttpClients;
import org.apache.http.impl.conn.PoolingHttpClientConnectionManager;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.util.EntityUtils;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class HttpUtils {

	private HttpUtils() {
		throw new IllegalAccessError("工具类不能实例化");
	}
  
	private static PoolingHttpClientConnectionManager connectionManager = null;
	
	private static final Logger logger = LogManager.getLogger(HttpUtils.class);
	
	private static RequestConfig requestConfig = RequestConfig.custom().setSocketTimeout(5000).setConnectTimeout(5000)
			.setConnectionRequestTimeout(3000).build();
	
	static{
			connectionManager = new PoolingHttpClientConnectionManager();
			//设置连接池大小
			connectionManager.setMaxTotal(1000);
			//每路路由最大的请求数量
			connectionManager.setDefaultMaxPerRoute(200);
	}
	
	/**
	 * 创建SSL安全连接
	 * @return
	 */
	private static SSLConnectionSocketFactory createSSLConnSocketFactory() {
		SSLConnectionSocketFactory sslConnectionSocketFactory = null;
		try{
			X509TrustManager x509manager = new X509TrustManager() {
				
				@Override
				public X509Certificate[] getAcceptedIssuers() {
					// TODO Auto-generated method stub
					return null;
				}
				
				@Override
				public void checkServerTrusted(X509Certificate[] arg0, String arg1)
						throws CertificateException {
					// TODO Auto-generated method stub
					
				}
				
				@Override
				public void checkClientTrusted(X509Certificate[] arg0, String arg1)
						throws CertificateException {
					// TODO Auto-generated method stub
					
				}
			};
			
			
			SSLContext sslContext = SSLContext.getInstance("TLS");
			sslContext.init(null, new TrustManager[]{x509manager}, new java.security.SecureRandom());
			
			sslConnectionSocketFactory = new SSLConnectionSocketFactory(sslContext,SSLConnectionSocketFactory.getDefaultHostnameVerifier());
		}catch(GeneralSecurityException e) {
			e.printStackTrace();
		}
		
		return sslConnectionSocketFactory;
	}
	public static CloseableHttpClient getHttpClient(){
		return getHttpClientBuilder().build();
	}
	
	public static HttpClientBuilder getHttpClientBuilder() {
		return HttpClients.custom().setConnectionManager(connectionManager).setDefaultRequestConfig(requestConfig).setConnectionManagerShared(true);
	}
	
	public static HttpClientBuilder getSSLHttpClientBuilder() {
		return HttpClients.custom().setSSLSocketFactory(createSSLConnSocketFactory())
				.setConnectionManager(connectionManager)
				.setDefaultRequestConfig(requestConfig);
	}
	
	public static CloseableHttpClient getSSLHttpClient() {
		return getSSLHttpClientBuilder().build();
	}
	
	public static HttpClientBuilder getHttpClientBuilder(boolean isSSL) {
		if(isSSL) {
			return getSSLHttpClientBuilder();
		} else {
			return getHttpClientBuilder();
		}
	}
	
	/**
	 * 发送post请求，格式为json
	 * @param apiUrl
	 * @param json
	 * @param isSSL
	 * @return
	 */
	public static String doPost(String apiUrl,Object json,boolean isSSL){
		HttpPost httpPost = new HttpPost(apiUrl);
		try{
			StringEntity stringEntity = new StringEntity(json.toString(),"UTF-8");
			stringEntity.setContentEncoding("UTF-8");
			stringEntity.setContentType("application/json");
			httpPost.setEntity(stringEntity);
		}catch(Exception e){
			logger.error(e.getMessage(),e);
		}
		return sendPost(httpPost,isSSL);
	}
	
	/***
	 * 发送post 请求，类型为file
	 * @param apiUrl
	 * @param fileLists 文件列表
	 * @param maps 传递参数
	 * @param isSSL
	 * @return
	 */
	public static String doPost(String apiUrl,List<File> fileLists,Map<String,String> maps, boolean isSSL) {
		HttpPost httpPost = new HttpPost(apiUrl);
		MultipartEntityBuilder mBuilder = MultipartEntityBuilder.create();
		for(Map.Entry<String, String> m : maps.entrySet()) {
			mBuilder.addPart(m.getKey(),new StringBody(m.getValue(),ContentType.TEXT_PLAIN));
		}
		
		for(File file :fileLists) {
			FileBody fileBody = new FileBody(file);
			mBuilder.addPart("files", fileBody);
		}
		
		HttpEntity reqEntity = mBuilder.build();
		httpPost.setEntity(reqEntity);
		return sendPost(httpPost,isSSL);
	}
	
	/**
	 * 发送post请求
	 * @param apiUrl
	 * @param params 参数(格式:key1=value1&key2=value2)
	 * @param isSSL
	 * @return
	 */
	public static String doPost(String apiUrl,String params,boolean isSSL) {
		HttpPost httpPost = new HttpPost(apiUrl);
		try{
			StringEntity stringEntity = new StringEntity(params,"UTF-8");
			stringEntity.setContentType("application/x-www-form-urlencoded");
			httpPost.setEntity(stringEntity);
		}catch(Exception e){
			logger.error(e.getMessage(),e);
		}
		return sendPost(httpPost,isSSL);
	}
	
	/**
	 * 发送post请求，contentType为application/x-www-form-urlencoded
	 * @param apiUrl
	 * @param params
	 * @param isSSL
	 * @return
	 */
	public static String doPost(String apiUrl,Map<String,String> params,boolean isSSL){
		HttpPost httpPost = new HttpPost(apiUrl);
		List<NameValuePair> nameValuePair = new ArrayList<>();
		for(Map.Entry<String, String> m : params.entrySet()) {
			nameValuePair.add(new BasicNameValuePair(m.getKey(),m.getValue()));
		}
		try{
			httpPost.setEntity(new UrlEncodedFormEntity(nameValuePair,"UTF-8"));
		}catch(Exception e) {
			logger.error(e.getMessage(),e);
		}
		return sendPost(httpPost,isSSL);
	}
	
	/**
	 * 发送Post 请求
	 * @param httpPost
	 * @param isSSL 是否是https请求
	 * @return
	 */
	public static String sendPost(HttpPost httpPost,boolean isSSL) {
		CloseableHttpClient httpClient = null;
		if(isSSL) {
			httpClient = getSSLHttpClient();
		} else {
			httpClient = getHttpClient();
		}
		CloseableHttpResponse response = null;
		HttpEntity entity = null;
		String responseContent = null;
		try{
			response = httpClient.execute(httpPost);
			entity = response.getEntity();
			responseContent = EntityUtils.toString(entity,"UTF-8");
		}catch(Exception e){
			logger.error(e.getMessage(),e);
		} finally {
			try{
				if(entity != null) {
					EntityUtils.consumeQuietly(entity);
				}
				if(response != null) {
					response.close();
				}
			}catch(Exception e){
				logger.error(e.getMessage(), e);
			}
		}
		return responseContent;
	}
	/**
	 * 没有入参的SSL Get请求
	 * @param url
	 * @return
	 */
	public static String doSSLGet(String url) {
		return doGet(url,new HashMap<String,Object>(),true);
	}
	
	/**
	 * 没有入参的 普通 get请求
	 * @param url
	 * @return
	 */
	public static String doGet(String url) {
		return doGet(url,new HashMap<String,Object>(),false);
	}
	/**
	 * 发送SSL get请求
	 * @param url
	 * @param params
	 * @return
	 */
	public static String doSSLGet(String url,Map<String,Object> params) {
		return doGet(url,params,true);
	}
	
	/**
	 * 发送get请求
	 * @param url
	 * @param params
	 * @return
	 */
	public static String doGet(String url,Map<String,Object> params) {
		return doGet(url,params,false);
	}
	
    /***
     * 发送get请求
     * @param url
     * @param params
     * @param isSSL
     * @return
     */
	public static String doGet(String url,Map<String,Object> params,boolean isSSL) {
		String apiUrl = url;
		StringBuffer sbParam = new StringBuffer();
		int i = 0;
		for(String key : params.keySet()) {
			if(i == 0) {
				sbParam.append("?");
			} else {
				sbParam.append("&");
			}
			sbParam.append(key).append("=").append(params.get(key));
			i++;
		}
		apiUrl += sbParam;
		HttpGet httpGet = new HttpGet(apiUrl);
		return sendGet(httpGet,isSSL);
	}
	
	/**
	 * 发送get请求
	 * @param httpGet
	 * @param isSSL
	 * @return
	 */
	public static String sendGet(HttpGet httpGet,boolean isSSL) {
		CloseableHttpClient httpClient = null;
		if(isSSL) {
			httpClient = getSSLHttpClient();
		} else {
			httpClient = getHttpClient();
		}

		CloseableHttpResponse response = null;
		HttpEntity entity = null;
		String responseContent = null;
		try {
			response = httpClient.execute(httpGet);
			entity = response.getEntity();
			if(entity != null) {
				responseContent = EntityUtils.toString(entity, "UTF-8");
			}
		} catch (Exception e) {
			logger.error(e.getMessage(),e);
		} finally {
			try{
				//关闭连接，释放资源
				if(entity != null) {
					//会自动释放连接
					EntityUtils.consumeQuietly(entity);
				}
				if(response != null) {
					response.close();
				}
			}catch(Exception e) {
				logger.error(e.getMessage(),e);
			}
		}
		return responseContent;
	}
	
	public static void main(String[] args) {
		System.out.println(HttpUtils.doSSLGet("https://www.baidu.com"));
	}
}
