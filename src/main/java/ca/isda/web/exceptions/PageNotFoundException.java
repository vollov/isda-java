package ca.isda.web.exceptions;

import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.ResponseStatus;

@ResponseStatus(value = HttpStatus.NOT_FOUND, reason = "No such Page")// 404
public class PageNotFoundException extends RuntimeException {

	private static final long serialVersionUID = 1L;

	private String error;

	public PageNotFoundException() {
		super();
		error = "unknown";
	}

	public PageNotFoundException(String error) {
		super(error);
		this.error = error;
	}

	public PageNotFoundException(String error, Throwable cause) {
		super(error, cause);
		this.error = error;
	}
	
	public String getError() {
		return error;
	}
}
