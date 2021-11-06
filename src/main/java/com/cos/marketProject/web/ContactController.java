package com.cos.marketProject.web;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.marketProject.domain.contactBoard.ContactRepository;
import com.cos.marketProject.domain.user.User;
import com.cos.marketProject.util.Script;
import com.cos.marketProject.web.dto.ContactSaveReqDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class ContactController {
	
	//Dependency Injection
	private final ContactRepository contactRepository;
	private final HttpSession session;
	
	//----------------문의하기 ---------------------
	@PostMapping("/contact/write")
	public @ResponseBody String contactWrite( @Valid ContactSaveReqDto dto, BindingResult bindingResult  ) {
		User principal = (User) session.getAttribute("principal");
		
		if (bindingResult.hasErrors()) {
			Map<String, String> errorMap = new HashMap<>();
			for (FieldError error : bindingResult.getFieldErrors()) {
				errorMap.put(error.getField(), error.getDefaultMessage());
			}
			return Script.back(errorMap.toString());
		}

		contactRepository.save(dto.toEntity(principal));
		return Script.href("/","성공적으로 등록되었습니다.");
	}
	
	@GetMapping("/contact")
	public String contact() {
		return "board/contact";
	}
	
	
	//---------------- 목록보기 ---------------------
	//@GetMapping("/contact/list")
	public String contactList() {
		
		return null;
	}

	//---------------- 상세보기 ---------------------
	//@GetMapping("/contact/{id}")
	public String contactDetail(@PathVariable int id, Model model) {
						
		return null;
	}
	
	
}
