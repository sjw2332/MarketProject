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
	@GetMapping("/test/writeform")
	public String 게시글작성() {
		return "board/writeForm";
	}
	
   // 지희 추가
   @GetMapping("/test/updateform")
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
	
	
	
	@GetMapping("/test/loginform")
	public String 로그인() {
		return "user/loginForm";
	}

	

	
	
	@GetMapping("/test/userfindform")
	public String find() {
		return "user/userFindForm";
	}
	
	
	
	
	
	
	@GetMapping("/test/eva")
	public String youtubeEva() {
		return "youtube/youtubeEva";
	}
	@GetMapping("/test/mylist")
	public String test() {
		return "user/myList";
	}
	@GetMapping("/test/buylist")
	public String test2() {
		return "user/buyList";
	}
	@GetMapping("/test/selllist")
	public String test3() {
		return "user/sellList";
	}

	
	@GetMapping("/")
	public String test4() {
		return "indextest";
	}

	@GetMapping("/test/index")
	public String test5() {
		return "index";
	}
	
	
	
}
