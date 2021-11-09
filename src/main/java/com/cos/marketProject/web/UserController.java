package com.cos.marketProject.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.marketProject.domain.user.User;
import com.cos.marketProject.domain.user.UserRepository;
import com.cos.marketProject.util.MyAlgorithm;
import com.cos.marketProject.util.SHA;
import com.cos.marketProject.util.Script;
import com.cos.marketProject.web.dto.CMRespDto;
import com.cos.marketProject.web.dto.ChangePwDto;
import com.cos.marketProject.web.dto.FindPwReqDto;
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
	private int userId;
	
	
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
	
	 @PostMapping("/join")
	   public @ResponseBody String join(@Valid JoinReqDto dto, BindingResult bindingResult) {
	      if (bindingResult.hasErrors()) {
	         Map<String, String> errorMap = new HashMap<>();
	         for (FieldError error : bindingResult.getFieldErrors()) {
	            errorMap.put(error.getField(), error.getDefaultMessage());
	         }
	         return Script.back(errorMap.toString());
	      }

	      String encPassword = SHA.encrypt(dto.getPassword(), MyAlgorithm.SHA256);

	      dto.setPassword(encPassword);
	      userRepository.save(dto.toEntity());
	      
	      return Script.href("/loginform","회원가입이 성공적으로 완료되었습니다.");
	   }

	
	@GetMapping("/joinform")
	public String joinForm() {
		return "user/joinForm";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//----------------로그인 ---------------------

	@PostMapping("/login")
	public @ResponseBody String login(@Valid LoginReqDto dto, BindingResult bindingResult) {
		
		if (bindingResult.hasErrors()) {
			Map<String, String> errorMap = new HashMap<>();
			for (FieldError error : bindingResult.getFieldErrors()) {
				errorMap.put(error.getField(), error.getDefaultMessage());
			}

			return Script.back(errorMap.toString());
		}
		
		User userEntity = userRepository.mLogin(dto.getEmail(), SHA.encrypt(dto.getPassword(), MyAlgorithm.SHA256 ));
		
		if (userEntity == null) { // username, password 잘못 기입
			return Script.back("아이디 혹은 비밀번호를 잘못 입력하였습니다.");
		} else {
		
		session.setAttribute("principal", userEntity);
		return Script.href("/","로그인 성공");
		}
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
	
	@PostMapping("/user/findPw/modal")
	public @ResponseBody CMRespDto<String> pwFind(@RequestBody FindPwReqDto dto) {
		
		User userEntity = userRepository.mPWFind(dto.getName(), dto.getPhone(), dto.getEmail());
		System.out.println(userEntity);
		System.out.println(userId);
		if(userEntity == null ) {
			return new CMRespDto<>(0, "존재하지 않는 회원입니다.", null);
		} else {
			userId = userEntity.getId();
			
			return new CMRespDto<>(1, "성공", null);
		}
				

	}
	
	// 비밀번호 변경 ------------------------------------
	@PutMapping("/user/changePw")
	public @ResponseBody CMRespDto<String> pwFind(@RequestBody ChangePwDto dto) {
		
		System.out.println(dto.getPassword());
		
		userRepository.mChangePw(userId, dto.getPassword());
				
		return new CMRespDto<>(1, "변경되었습니다.", null);

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
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//----------------구매하기 ---------------------
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
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