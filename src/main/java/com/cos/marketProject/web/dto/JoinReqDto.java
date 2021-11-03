package com.cos.marketProject.web.dto;

import java.time.LocalDateTime;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import com.cos.marketProject.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class JoinReqDto {
	@Size(min = 5, max = 50)
	@NotBlank
	private String email;
	@Size(min = 5, max = 50)
	@NotBlank
	private String password;
	private String name;
	private LocalDateTime birth;	//타입 정하기
	private String phone;
	private String bank;
	private String account;
	
	public User toEntity() {
		User user = new User();
		user.setEmail(email);
		user.setPassword(password);
		user.setName(name);
		user.setBirth(birth);
		user.setBank(bank);
		user.setAccount(account);
		return user;
		
		
	}
}
