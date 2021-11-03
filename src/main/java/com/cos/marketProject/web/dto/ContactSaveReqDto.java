package com.cos.marketProject.web.dto;

import com.cos.marketProject.domain.contactBoard.Contact;
import com.cos.marketProject.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ContactSaveReqDto {
	
	private String title;
	private String content;
	 
	public Contact toEntity(User principal) {
		Contact contact = new Contact();
		contact.setTitle(title);
		contact.setContent(content);
		contact.setUser(principal);
		return contact;
	}
	
}
