package com.cos.marketProject.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestController {
	@GetMapping("/test/detail")
	public String 게시글상세보기() {
		return "board/detail";
	}
	@GetMapping("/test/list")
	public String 목록() {
		return "board/list";
	}
	@GetMapping("/test/writeForm")
	public String 게시글작성() {
		return "board/writeForm";
	}
	
   // 지희 추가
   @GetMapping("/test/updateForm")
   public String 게시글수정() {
      return "board/updateForm";
   }
	
	//------------------------------
   //정인 추가-------------------
	@GetMapping("/test/cash")
	public String 나의마일리지() {
		return "user/myCashForm";
	}
	
	@GetMapping("/test/pay")
	public String 마일리지충전() {
		return "pay/pay";
	}
	
	@GetMapping("/test/contact")
	public String 고객센터() {
		return "board/contact";
	}
	
	//----------------------------
	
	@GetMapping("/test/update")
	public String 회원정보변경() {
		return "user/updateForm";
	}
	
	
	@GetMapping("/test/join")
	public String 회원가입() {
		return "user/joinForm";
	}
	
	
	
	@GetMapping("/test/loginForm")
	public String 로그인() {
		return "user/loginForm";
	}
}
