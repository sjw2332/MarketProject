package com.cos.marketProject.web.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class FindPwReqDto {
	@Size(min = 2, max = 20)
	@NotBlank
	private String email;
	
	@Size(min = 2, max = 20)
	@NotBlank
	private String name;
	
	@Size(min = 4, max = 50)
	@NotBlank
	private String phone;
}
