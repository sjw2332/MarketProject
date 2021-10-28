package com.cos.marketProject.handler.ex;




// page를 찾을 수 없는 경우 사용.
public class MyNotFoundException extends RuntimeException {
	private static final long serialVersionUID = 1L;

	public MyNotFoundException(String msg) {
		super(msg);
	}
}
