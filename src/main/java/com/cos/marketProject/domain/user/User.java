package com.cos.marketProject.domain.user;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.PrePersist;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
@Entity
public class User {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	@Column(nullable=false, unique=true)
	private String email;
	private String password;
	private String name;
	private LocalDateTime birth;
	private String phone;
	private String bank;
	private String account;
	@Column(columnDefinition = "ingeter default 0")
	private int cash;
	private LocalDateTime joinDate;
	
	@PrePersist 
	public void joinDate() {
		this.joinDate = LocalDateTime.now();
	}
	
}
