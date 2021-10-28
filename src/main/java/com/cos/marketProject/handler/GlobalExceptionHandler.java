package com.cos.marketProject.handler;

import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.marketProject.handler.ex.MyAsyncNotFoundException;
import com.cos.marketProject.handler.ex.MyNotFoundException;
import com.cos.marketProject.util.Script;
import com.cos.marketProject.web.dto.CMRespDto;


@ControllerAdvice
public class GlobalExceptionHandler {
		// 일반요청
		@ExceptionHandler(value = MyNotFoundException.class)
		public @ResponseBody String error1(MyNotFoundException e) {
			System.out.println("오류가 발생했습니다 : " + e.getMessage());
			return Script.href("/", e.getMessage());
		}

		// fetch 요청(db와의 통신시)
		@ExceptionHandler(value = MyAsyncNotFoundException.class)
		public CMRespDto<String> error2(MyAsyncNotFoundException e) {
			System.out.println("오류가 발생했습니다 : " + e.getMessage());
			return new CMRespDto<String>(-1, e.getMessage(), null);
		}
}
