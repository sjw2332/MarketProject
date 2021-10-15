package com.cos.marketProject;

import org.junit.jupiter.api.Test;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class BoardControllerTest {
	
	@GetMapping("/board/detail")
	public String 게시글상세보기() {
		return "board/detail";
	}
}
