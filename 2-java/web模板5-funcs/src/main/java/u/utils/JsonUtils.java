package u.utils;

import com.fasterxml.jackson.core.JsonGenerationException;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import b.base.scan.JacksonObjectMapper;

import java.io.IOException;

import org.codehaus.jackson.JsonParseException;
import org.codehaus.jackson.map.JsonMappingException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/**
 * JSON转换工具
 */
public final class JsonUtils {
	private static final Logger logger = LoggerFactory.getLogger(JsonUtils.class);
    private JsonUtils() {}

    /**
     * 将对象序列化成json字符串
     * @param object javaBean
     * @return jsonString json字符串
     */
    public static String toJson(Object object) {
    	String str=null;
    	try {
    		str =  getInstance().writeValueAsString(object);
        } catch (JsonGenerationException e) {
            logger.error(e.getMessage(),e);
        } catch(IOException e) {
        	logger.error(e.getMessage(), e);
        }
    	
    	return str;
    }

    /**
     * 将json反序列化成对象
     * @param jsonString jsonString
     * @param valueType class
     * @param <T> T 泛型标记
     * @return Bean
     */
    public static <T> T parse(String jsonString, Class<T> valueType) {
        T t = null;
    	try {
            t =  getInstance().readValue(jsonString, valueType);
        } catch (IOException e) {
            logger.error(e.getMessage(), e);;
        }
    	return t;
    }

    
    private static ObjectMapper getInstance() {
        return JacksonHolder.INSTANCE;
    }

    private static class JacksonHolder {
        private static ObjectMapper INSTANCE = new JacksonObjectMapper();
    }

}
