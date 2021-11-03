package com.cos.marketProject.domain.board;

import java.time.LocalDateTime;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.Lob;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;

import com.cos.marketProject.domain.user.User;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@AllArgsConstructor
@NoArgsConstructor
@Data
@Entity
public class Board {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int board_id;
	
	@JoinColumn(name = "sellerId")
	@ManyToOne(fetch = FetchType.EAGER)
	private User user;
	private String title;
	private String category;
	private int price;
	@Lob
	private String content;
	//private String img;
	private String yAddress;
	private LocalDateTime writtenDate;
	@Column(columnDefinition = "varchar(10) default '등록대기중'")
	private String tradelvl;
	@Column(columnDefinition = "integer default 0")
	private int click;
	@JoinColumn(name = "buyerId")
	@ManyToOne(fetch = FetchType.EAGER)
	private User buyer;
	

	
	
	@PrePersist 
	public void writtenDate() {
		this.writtenDate = LocalDateTime.now();
	}
}
