package u.utils;

import java.lang.reflect.Method;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.util.ReflectionUtils;

public class ScheduleRunnable implements Runnable{
    private  Logger logger = LogManager.getLogger(ScheduleRunnable.class);
	private String params;
	private Method method;
	private Object target;
	
	public ScheduleRunnable(String beanName,String methodName,String params) 
			throws NoSuchMethodException,SecurityException{
		this.target = SpringContextUtils.getBean(beanName);
		this.params = params;
		
		if(StringUtils.isNotBlank(params)) {
			this.method = this.target.getClass().getDeclaredMethod(methodName, String.class);
		} else {
			this.method = this.target.getClass().getDeclaredMethod(methodName);
		}
	}
	
	@Override
	public void run() {
		try{
			ReflectionUtils.makeAccessible(method);
			if(StringUtils.isNotBlank(params)) {
				method.invoke(target, params);
			} else {
				method.invoke(target);
			}
		}catch(Exception e) {
			logger.error("执行定时任务失败", e);
		}
		
	}

	public String getParams() {
		return params;
	}

	public void setParams(String params) {
		this.params = params;
	}

	public Method getMethod() {
		return method;
	}

	public void setMethod(Method method) {
		this.method = method;
	}

	public Object getTarget() {
		return target;
	}

	public void setTarget(Object target) {
		this.target = target;
	}

}
