package com.cos.marketProject.web.dto;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

@AllArgsConstructor
@NoArgsConstructor
@Data
public class FindIdReqDto {

	@Size(min = 2, max = 20)
	@NotBlank
	private String name;
	
	@Size(min = 4, max = 10)
	@NotBlank
	private String email;
	
	@Size(min = 4, max = 50)
	@NotBlank
	private String phone;
}
