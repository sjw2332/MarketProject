package com.cos.marketProject.handler.ex;


//DB에 없을 경우 사용
public class MyAsyncNotFoundException extends RuntimeException {
	private static final long serialVersionUID = 1L;

	public MyAsyncNotFoundException(String msg) {
		super(msg);
	}
}
