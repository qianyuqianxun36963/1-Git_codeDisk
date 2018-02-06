package u.utils;

import java.util.Set;

import javax.validation.ConstraintViolation;
import javax.validation.Validation;
import javax.validation.Validator;

import org.hibernate.validator.HibernateValidator;

import b.base.exception.HibernateValidatorException;

/**
 * 类说明:Hibernate Validator辅助类
 *
 * Author: Huyihui
 *
 * Date: 2015-10-29
 *
 * Copyright (c) 2006-2015.Beijing WenHua Online Sci-Tech Development Co. Ltd
 * All rights reserved.
 */
public class HibernateValidatorUtil {
	private static Validator validator = Validation.byProvider(HibernateValidator.class).configure()
			.addProperty("hibernate.validator.fail_fast", "true").buildValidatorFactory().getValidator();

	/**
	  * 方法描述：验证对象是否符合约束。（使用注解在对象上加约束）
	  * @param	obj 要验证的对象
	  * @param	groups 要验证的约束分组。如果是默认分组，可以不填。（因为是可变数组，因此不需要传入null，可直接忽略这个参数）
	  * @return
	  * @author: Huyihui
	  * @version: 2015-10-30 上午09:17:45
	  */
	public static <T> void validate(T obj, Class<?>... groups) throws HibernateValidatorException {
		Set<ConstraintViolation<T>> v = validator.validate(obj, groups);
		if (v.size() > 0) {
			for (ConstraintViolation<T> c : v) {
				throw new HibernateValidatorException(c.getMessage());
			}
		}
	}

	/**
	  * 方法描述：验证对象，返回验证详细信息
	  * @param: 
	  * @return: 
	  * @author: Huyihui
	  * @version: 2015-10-30 上午09:21:54
	  */
	public static <T> Set<ConstraintViolation<T>> getValidateInfo(T obj, Class<?>... groups) {
		return validator.validate(obj, groups);
	}

	/**
	  * 方法描述：只对指定的属性进行验证
	  * @param	obj 要验证的对象
	  * @param	propertyName 要验证的属性名称
	  * @param	groups 分组
	  * @return: 
	  * @author: Huyihui
	  * @version: 2015-10-30 下午02:54:35
	  */
	public static <T> boolean validateProperty(T obj, String propertyName, Class<?>... groups) {
		return validator.validateProperty(obj, propertyName, groups).size() == 0;
	}

	/**
	  * 方法描述：只对指定的属性进行验证，返回验证详细信息
	  * @param: 
	  * @return: 
	  * @author: Huyihui
	  * @version: 2015-10-30 下午02:56:05
	  */
	public static <T> Set<ConstraintViolation<T>> getValidatePropertyInfo(T obj, String propertyName,
			Class<?>... groups) {
		return validator.validateProperty(obj, propertyName, groups);
	}

	/**
	  * 方法描述：验证指定的值是否符合指定属性的约束
	  * @param	type 要验证的对象类型
	  * @param	propertyName 属性名称
	  * @param	value 测试的值
	  * @param	groups 分组
	  * @return: 
	  * @author: Huyihui
	  * @version: 2015-10-30 下午02:56:24
	  */
	public static <T> boolean validateValue(Class<T> type, String propertyName, Object value, Class<?>... groups) {
		return validator.validateValue(type, propertyName, value, groups).size() == 0;
	}

	/**
	  * 方法描述：验证指定的值是否符合指定属性的约束，返回验证详细信息
	  * @param: 
	  * @return: 
	  * @author: Huyihui
	  * @version: 2015-10-30 下午02:58:15
	  */
	public static <T> Set<ConstraintViolation<T>> getValidateValueInfo(Class<T> type, String propertyName, Object value,
			Class<?>... groups) {
		return validator.validateValue(type, propertyName, value, groups);
	}
}
