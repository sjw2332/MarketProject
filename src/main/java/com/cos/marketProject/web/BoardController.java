package com.cos.marketProject.web;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.marketProject.domain.board.Board;
import com.cos.marketProject.domain.board.BoardRepository;
import com.cos.marketProject.domain.user.User;
import com.cos.marketProject.handler.ex.MyNotFoundException;
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
		Board boardEntity = boardRepository.findById(id).orElseThrow(()->new MyNotFoundException(id+"해당 게시글을 찾을 수 없습니다."));
		model.addAttribute("boardEntity", boardEntity);
				
		return "board/detail";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//----------------게시글 목록보기 ---------------------
	@GetMapping("/board/list")
	public String boardList(Model model, int page) {
		PageRequest pageRequest = PageRequest.of(page, 3, Sort.by(Sort.Direction.DESC, "writtenDate"));
		Page<Board> boardsEntity = boardRepository.findAll(pageRequest);
		model.addAttribute("boardsEntity", boardsEntity);
		System.out.println(model);
		return "board/list";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	//----------------게시글 작성하기 ---------------------
	@PostMapping("/board/write")
	public @ResponseBody String boardWrite( @Valid BoardSaveReqDto dto, BindingResult bindingResult  ) {
		User principal = (User) session.getAttribute("principal");

		if (principal == null) {
			return Script.href("/", "잘못된 접근입니다");
		}

		if (bindingResult.hasErrors()) {
			Map<String, String> errorMap = new HashMap<>();
			for (FieldError error : bindingResult.getFieldErrors()) {
				errorMap.put(error.getField(), error.getDefaultMessage());
			}
			return Script.back(errorMap.toString());
		}

		boardRepository.save(dto.toEntity(principal));
		
		return Script.href("/board/list?page=0","성공적으로 등록되었습니다.");
	}
	
	@GetMapping("/board/writeform")
	public String boardWriteForm() {
		
		User principal = (User) session.getAttribute("principal");

		if (principal == null) {
			return "user/loginForm";
		}
		return "board/writeForm";
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
