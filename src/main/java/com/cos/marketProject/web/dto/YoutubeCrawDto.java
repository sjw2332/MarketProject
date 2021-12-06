package com.cos.marketProject.web.dto;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class YoutubeCrawDto {
	public String yAddress;
	public String channelName;
	public String createdAt;
	public String nation;
	public String language;
	public String intro;
	public String channelImg;
	public String subscribe;
	public String totViews;
	public String avgView;
	public String contentsCount;
	public String avgPrice;
	public String avgIncome;
}
