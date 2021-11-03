package com.cos.marketProject.web.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class LoginReqDto {
	@Size(min = 5, max = 50)
	@NotBlank
	private String email;
	@Size(min = 5, max = 50)
	@NotBlank
	private String password;
}
