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
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.marketProject.domain.board.Board;
import com.cos.marketProject.domain.board.BoardRepository;
import com.cos.marketProject.domain.user.User;
import com.cos.marketProject.handler.ex.MyAsyncNotFoundException;
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
		System.out.println(boardEntity);		
		return "board/detail";
	}
	

	//----------------게시글 목록보기 ---------------------
	@GetMapping("/board/list")
	public String boardList(Model model, int page) {
		PageRequest pageRequest = PageRequest.of(page, 3, Sort.by(Sort.Direction.DESC, "writtenDate"));
		Page<Board> boardsEntity = boardRepository.findAll(pageRequest);
		model.addAttribute("boardsEntity", boardsEntity);
		System.out.println(boardsEntity);
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
   public @ResponseBody CMRespDto<String> boardUpdate(@PathVariable int id, @RequestBody @Valid BoardSaveReqDto dto, BindingResult bindingResult) {
    
	   if (bindingResult.hasErrors()) {
			Map<String, String> errorMap = new HashMap<>();
			for (FieldError error : bindingResult.getFieldErrors()) {
				errorMap.put(error.getField(), error.getDefaultMessage());
			}
			throw new MyAsyncNotFoundException(errorMap.toString());
		}

		User principal = (User) session.getAttribute("principal");
		if (principal == null) {
			throw new MyAsyncNotFoundException("인증이 되지 않았습니다");
		}
		
		Board boardEntity = boardRepository.findById(id)
				.orElseThrow(() -> new MyAsyncNotFoundException("해당 게시글을 찾을 수 없습니다."));

		if (principal.getId() != boardEntity.getUser().getId()) {
			throw new MyAsyncNotFoundException("해당 게시글의 주인이 아닙니다.");
		}

		// 영속화된 데이터를 변경하면!!
		boardEntity.setTitle(dto.getTitle());
		boardEntity.setCategory(dto.getCategory());
		boardEntity.setPrice(dto.getPrice());
		boardEntity.setContent(dto.getContent());
		boardEntity.setYoutube(dto.getYoutube());
		
		System.out.println("보드 : "+boardEntity);
		boardRepository.save(boardEntity);
		
		
	   return new CMRespDto<>(1,"성공",null);
   }

   @GetMapping("/board/{id}/updateform")
   public String boardUpdateForm(@PathVariable int id, Model model) {
	   
	   
	   Board boardEntity = boardRepository.findById(id)
				.orElseThrow(() -> new MyNotFoundException(id + "번호의 게시글을 찾을 수 없습니다."));
	   model.addAttribute("boardEntity", boardEntity);
	   
	   return "board/updateForm";
   }
   	//----------------게시글 삭제하기 ---------------------
   @DeleteMapping("/board/{id}")
   public @ResponseBody CMRespDto<String> delete (@PathVariable int id) {
	   User principal = (User) session.getAttribute("principal");
		if (principal == null) {
			throw new MyAsyncNotFoundException("인증이 되지 않았습니다.");
		}
		
		Board boardEntity = boardRepository.findById(id)
				.orElseThrow(() -> new MyAsyncNotFoundException("해당글을 찾을 수 없습니다."));

		if (principal.getId() != boardEntity.getUser().getId()) {
			throw new MyAsyncNotFoundException("해당글을 삭제할 권한이 없습니다.");
		}

		try {
			boardRepository.deleteById(id); // 오류 발생??? (id가 없으면)
		} catch (Exception e) {
			throw new MyAsyncNotFoundException(id + "를 찾을 수 없어서 삭제할 수 없어요.");
		}
	
		return new CMRespDto<String>(1, "성공", null);
   }
   
   
   
   
	//----------------admin page---------------------
   @GetMapping("/admin")
	public String admin(Model model, int page) {
		PageRequest pageRequest = PageRequest.of(page, 3, Sort.by(Sort.Direction.DESC, "writtenDate"));
		Page<Board> boardsEntity = boardRepository.findAll(pageRequest);
		model.addAttribute("boardsEntity", boardsEntity);
		return "admin";
	}
	
   
   //구매하기
   @PutMapping("/board/{id}/buy")
	public @ResponseBody CMRespDto<String> buyById(@PathVariable int id, @RequestBody @Valid BoardSaveReqDto dto,
			BindingResult bindingResult) {
		User principal = (User) session.getAttribute("principal");
		if (principal == null) {
			throw new MyAsyncNotFoundException("인증이 되지 않았습니다.");
		}
		
		Board boardEntity = boardRepository.findById(id)
				.orElseThrow(() -> new MyAsyncNotFoundException("해당 게시글을 찾을 수 없습니다."));

		boardEntity.setBuyer(principal);
		boardEntity.setTradelvl(2);
		boardRepository.save(boardEntity);
		
		return new CMRespDto<String>(1, "성공", null);
	}
	
	
   
}
