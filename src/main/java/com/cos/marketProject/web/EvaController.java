package com.cos.marketProject.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class EvaController {

	@GetMapping("/eva")
	public String youtubeEva() {
		return "youtube/youtubeEva";
	}
	@GetMapping("/list")
	public String test() {
		return "user/myList";
	}
	@GetMapping("/buylist")
	public String test2() {
		return "user/buyList";
	}
	@GetMapping("/selllist")
	public String test3() {
		return "user/sellList";
	}
}
