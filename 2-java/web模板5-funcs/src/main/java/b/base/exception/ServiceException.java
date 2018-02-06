package b.base.exception;

/**
 * Service层可能异常的父类
 * @author WangJialu
 *
 */
public abstract class ServiceException extends Exception {
	private static final long serialVersionUID = -6990244819103561175L;
	public ServiceException() {
		super();
	}
	public ServiceException(String msg) {
		super(msg);
	}

}
