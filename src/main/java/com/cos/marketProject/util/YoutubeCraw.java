package com.cos.marketProject.util;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.stereotype.Component;

import com.cos.marketProject.web.dto.YoutubeCrawDto;

@Component
public class YoutubeCraw {

	public static List<YoutubeCrawDto> youtube(String id) {
		List<YoutubeCrawDto> youtube = new ArrayList<>();
		String yid = id;
		String yUrl = "https://www.youtube.com/c/"+yid;
		
		try {
			Document doc = Jsoup.connect(yUrl).get();
			Document doc2 = Jsoup.connect(yUrl).get();
			System.out.println("=============="+yid+"==============");
			
			String uid = doc.selectFirst("span link").attr("href");
			System.out.println("변환된 주소: " + uid);
			String yAddress = uid.substring(32);
			System.out.println("변환아이디: "+yAddress);
			
			String nUrl = "https://kr.noxinfluencer.com/youtube/channel/"+yAddress;
			String nUrl2 = "https://kr.noxinfluencer.com/youtube/channel/"+uid+"?tab=videos";
			System.out.println(nUrl);
			doc = Jsoup.connect(nUrl).get();
			System.out.println("여기까진됨");
			//doc2 = Jsoup.connect(nUrl2).get();
			
			//채널profile
			//채널이름
			String channelName = doc.select(".info-block .title").text();

			//채널프로필
			String pfData = doc.select(".info-item .pull-right").text();
			String[] pfArry = pfData.split(" ");
			//String chTag = doc.select(".tag-list").text(); 
			String intro = doc.select(".text-container .text").text();
			String channelImg = doc.select(".avatar-wrapper img").attr("src");
			
			//구독자 및 조회수
			String totViews =  doc.select(".strong").text();
			String[] viewsArry = totViews.split(" ");
			
			//광고단가
			String avgPrice = doc.selectFirst(".est-content").text();
			String cpm = doc.select(".cpm").text();
			String[] cpmArry = cpm.split("￦");
			//예상월수익
			String minPrice = doc.select(".est-content").next().text();
			String avgIncome = minPrice.substring(3,22);
			
//			//동영상 퍼포먼스
//			String perform1 = doc2.select(".value").text();
			
//			//유튜브 채널 통계표
//			String subchg = doc.select("#chart-total-num-new").text();
//			String subchg2 = doc.getElementsByTag("td").text();
//			
			
			
			
//			System.out.println("Profile");
			System.out.println("채널명 :"+channelName);
			System.out.println("가입일 :"+pfArry[0]);
			System.out.println("국가 :"+pfArry[1]);
			System.out.println("언어 :"+pfArry[2]);
			System.out.println("========================================================");
//			System.out.println("추천태그 : "+chTag);
			System.out.println("채널소개 : "+intro);
			System.out.println("채널프사 : "+channelImg);
			
			
			System.out.println("========================================================");
			System.out.println(totViews);
			System.out.println("구독자 :"+viewsArry[0]);
			System.out.println("조회수 :"+viewsArry[1]);
			System.out.println("평균조회수 :"+viewsArry[2]);
			System.out.println("동영상 :"+viewsArry[3]);
//			System.out.println("라이브수입 :"+"￦"+viewsArry[4]);
			System.out.println("광고단가: "+avgPrice);
//			System.out.println("CPM :"+ cpmArry[1]);
//			System.out.println("CPM :"+ cpmArry[2]);
//			System.out.println("CPM :"+ cpmArry[3]);
//			System.out.println("CPM :"+ cpmArry[4]);
			System.out.println("월매출예상: "+avgIncome);
			System.out.println("========================================================");
			
			YoutubeCrawDto dto = YoutubeCrawDto.builder()
								.yAddress(yAddress)
								.channelName(channelName)
								.createdAt(pfArry[0])
								.nation(pfArry[1])
								.language(pfArry[2])
								.intro(intro)
								.channelImg(channelImg)
								.subscribe(viewsArry[0])
								.totViews(viewsArry[1])
								.avgView(viewsArry[2])
								.contentsCount(viewsArry[3])
								.avgPrice(avgPrice)
								.avgIncome(avgIncome)
								.build();
			
			youtube.add(dto);
			
			
		} catch (IOException e) {
			System.out.println("찾는 채널이 없습니다.");
		}
		
	return youtube;
		
		
	}
}
