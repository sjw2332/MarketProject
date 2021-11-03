package com.cos.marketProject.web;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

import com.cos.marketProject.domain.contactBoard.ContactRepository;
import com.cos.marketProject.util.Script;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class ContactController {
	
	//Dependency Injection
	private final ContactRepository contactRepository;
	private final HttpSession session;
	
	//----------------문의하기 ---------------------
	@PostMapping("/contact/write")
	public String contactWrite() {
		return Script.href("/board/list","성공적으로 등록되었습니다.");
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
