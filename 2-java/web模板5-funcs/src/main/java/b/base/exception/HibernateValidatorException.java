package b.base.exception;

/**
 * 参数错误
 * @author WangJialu
 *
 */
public class HibernateValidatorException extends ServiceException {
	private static final long serialVersionUID = -6990244819103561175L;
	public HibernateValidatorException() {
		super();
	}
	public HibernateValidatorException(String msg) {
		super(msg);
	}

}
