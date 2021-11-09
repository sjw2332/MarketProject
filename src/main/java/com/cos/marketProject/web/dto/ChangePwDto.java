package com.cos.marketProject.web.dto;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import com.cos.marketProject.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ChangePwDto {
	@Size(min = 4, max = 70)
	@NotBlank
	private String password;
	
	public User toEntity() {
		User user = new User();
		user.setPassword(password);
		return user;
	}
}