package com.cos.marketProject.web;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.marketProject.domain.user.UserRepository;
import com.cos.marketProject.util.Script;
import com.cos.marketProject.web.dto.CMRespDto;
import com.cos.marketProject.web.dto.JoinReqDto;
import com.cos.marketProject.web.dto.LoginReqDto;
import com.cos.marketProject.web.dto.UserUpdateReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class UserController {
	
	//Dependency Injection
	private final UserRepository userRepository;
	private final HttpSession session;
	
	
	
	//----------------회원정보변경 ---------------------

	@PutMapping("/user/{id}")
	public @ResponseBody CMRespDto<String> userUpdate(@PathVariable int id, @Valid @RequestBody UserUpdateReqDto dto, BindingResult bindingResult){
		
		return new CMRespDto<>(1,"성공", null);
	}

	@GetMapping("/user/updateform")
	public String userUpdateForm() {
		return "user/updateForm";
	}
	
	
	
	//----------------회원가입 ---------------------
	
	@PostMapping("/user/join")
	public @ResponseBody String join(@Valid JoinReqDto dto, BindingResult bindingResult) {
		
		
		return Script.href("/loginform","회원가입이 성공적으로 완료되었습니다.");
	}
	
	@GetMapping("/joinform")
	public String joinForm() {
		return "user/joinForm";
	}
	
	
	//----------------로그인 ---------------------

	@PostMapping("/login")
	public String login(@Valid LoginReqDto dto, BindingResult bindingResult) {
		
		
		return Script.href("/");
	}

	
	@GetMapping("/loginform")
	public String loginForm() {
		return "user/loginForm";
	}
	
	
	//----------------유저찾기 ---------------------

	@GetMapping("/userfindform")
	public String find() {
		return "user/userFindForm";
	}
	
	
	//----------------나의 마일리지 ---------------------

	@GetMapping("/user/{id}/cash")
	public String myCash() {
		return "user/myCashForm";
	}
	
	//----------------마일리지 충전 ---------------------

	@GetMapping("/pay")
	public String cashCharge() {
		return "pay/pay";
	}
	
	
	//----------------나의 구매,판매 현황 ---------------------

	@GetMapping("/user/{id}/mylist")
	public String myList() {
		return "user/myList";
	}
	@GetMapping("/user/{id}/buylist")
	public String myBuyList() {
		return "user/buyList";
	}
	@GetMapping("/user/{id}/selllist")
	public String mySellList() {
		return "user/sellList";
	}
}