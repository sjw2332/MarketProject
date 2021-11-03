package com.cos.marketProject.web;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.marketProject.domain.board.BoardRepository;
import com.cos.marketProject.util.Script;
import com.cos.marketProject.web.dto.BoardSaveReqDto;
import com.cos.marketProject.web.dto.CMRespDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class BoardController {
	
	//Dependency Injection
	private final BoardRepository boardRepository;
	private final HttpSession session;
	
	//----------------게시글 상세보기 ---------------------
	@GetMapping("/board/{id}")
	public String detail(@PathVariable int id, Model model) {
		
				
		return "board/detail";
	}
	
	//----------------게시글 목록보기 ---------------------
	@GetMapping("/board/list")
	public String boardList() {
		return "board/list";
	}
	
	
	//----------------게시글 작성하기 ---------------------
	@PostMapping("/board/write")
	public String boardWrite() {
		return Script.href("/board/list","성공적으로 등록되었습니다.");
	}
	
	@GetMapping("/board/writeform")
	public String boardWriteForm() {
		return "board/writeform";
	}
	
	
	
	//----------------게시글 수정하기 ---------------------
   @PutMapping("/board/{id}")
   public @ResponseBody CMRespDto<String> boardUpdate(@PathVariable int in, @RequestBody @Valid BoardSaveReqDto dto, BindingResult bindingResult) {
    
	   return new CMRespDto<>(1,"성공",null);
   }

   @GetMapping("/board/{id}/updateform")
   public String boardUpdateForm() {
	   return "board/updateForm";
   }
	
	
	
	
}
