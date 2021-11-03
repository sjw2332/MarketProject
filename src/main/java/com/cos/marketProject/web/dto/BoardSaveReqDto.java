package com.cos.marketProject.web.dto;

import com.cos.marketProject.domain.board.Board;
import com.cos.marketProject.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@NoArgsConstructor
@AllArgsConstructor
@Data
public class BoardSaveReqDto {
	
	private String title;
	private String content;
	private String category;
	private int price;
	private String img;
	private String yAddress;
	
	public Board toEntity(User principal) {
		Board board = new Board();
		board.setTitle(title);
		board.setCategory(category);
		board.setPrice(price);
		board.setContent(content);
		//board.setImg(img); 
		board.setYAddress(yAddress);
		board.setUser(principal);
		return board;
	}
	
}
