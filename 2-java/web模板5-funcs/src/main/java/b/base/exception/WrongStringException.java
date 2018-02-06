package b.base.exception;

public class WrongStringException extends Exception {
	private static final long serialVersionUID = 1L;

	public WrongStringException() {
		super();
	}
	public WrongStringException(String msg) {
		super(msg);
	}

}
