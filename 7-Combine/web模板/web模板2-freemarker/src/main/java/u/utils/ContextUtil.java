package u.utils;

import org.springframework.beans.BeansException;
import org.springframework.context.ApplicationContext;
import org.springframework.context.ApplicationContextAware;
import org.springframework.stereotype.Component;

/**
 * 系统上下文工具类<br>
 * 〈功能详细描述〉
 * 
 * @author 11075490
 * @see [相关类/方法]（可选）
 * @since [产品/模块版本] （可选）
 */
@Component
public class ContextUtil implements ApplicationContextAware 
{

    private static ApplicationContext springContext;

    public void setApplicationContext(ApplicationContext applicationContext) throws BeansException 
    {
        if (null == springContext) 
        {
            springContext = applicationContext;
        }
    }

    /**
     * 获取Spring容器中的实例
     */
    public static Object getBean(String beanId)
    {
        return springContext.getBean(beanId);
    }

}