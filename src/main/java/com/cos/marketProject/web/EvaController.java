package com.cos.marketProject.web;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.codehaus.jackson.JsonGenerationException;
import org.codehaus.jackson.map.JsonMappingException;
import org.codehaus.jackson.map.ObjectMapper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.cos.marketProject.util.Script;
import com.cos.marketProject.util.YoutubeCraw;
import com.cos.marketProject.web.dto.YoutubeCrawDto;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
@Controller
public class EvaController {
	
	private final HttpSession session;
	
	//검색
	@GetMapping("eva/{id}")
	public String evaCraw(@PathVariable String id, YoutubeCrawDto dto, Model model, BindingResult bindingResult){
		ObjectMapper mapper = new ObjectMapper();
		List<YoutubeCrawDto> youtube = YoutubeCraw.youtube(id);
		System.out.println(youtube);

		
		
			
			try {
				String jsonInString = mapper.writeValueAsString(youtube);
				System.out.println("제이슨"+jsonInString);
				model.addAttribute("model", jsonInString);
			} catch (JsonGenerationException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (JsonMappingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}

			if (bindingResult.hasErrors()) {
				Map<String, String> errorMap = new HashMap<>();
				for (FieldError error : bindingResult.getFieldErrors()) {
					errorMap.put(error.getField(), error.getDefaultMessage());
				}
				return Script.back(errorMap.toString());
			}

		session.setAttribute("sess", youtube);
		System.out.println("크롤링: "+youtube);
		System.out.println("모델: "+model);
		return "youtube/youtubeEva";
	}
	
	//검색페이지 이동
	@GetMapping("eva")
	public String eva() {
		return "youtube/youtubeEva";
	}
}
