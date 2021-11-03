package com.cos.marketProject.web.dto;

import javax.validation.constraints.NotBlank;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class UserUpdateReqDto {
	@NotBlank
	private String password;
	@NotBlank
	private String phone;
}
