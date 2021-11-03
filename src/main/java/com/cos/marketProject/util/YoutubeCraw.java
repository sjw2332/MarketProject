package com.cos.marketProject.util;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

public class YoutubeCraw {
	public void 유튜브() {
		String yid = "생활코딩1";
		String yUrl = "https://www.youtube.com/c/"+yid;
		
		try {
			Document doc = Jsoup.connect(yUrl).get();
			Document doc2 = Jsoup.connect(yUrl).get();
			System.out.println("=============="+yid+"==============");
			
			String uid = doc.selectFirst("span link").attr("href");
			System.out.println("변환된 주소: " + uid);
			uid = uid.substring(32);
			System.out.println("변환아이디: "+uid);
			
			String nUrl = "https://kr.noxinfluencer.com/youtube/channel/"+uid;
			String nUrl2 = "https://kr.noxinfluencer.com/youtube/channel/"+uid+"?tab=videos";
			
			doc = Jsoup.connect(nUrl).get();
			doc2 = Jsoup.connect(nUrl2).get();
			
			//채널profile
			//채널이름
			String title = doc.select(".info-block .title").text(); 
			//채널프로필
			String pfData = doc.select(".info-item .pull-right").text();
			String[] pfArry = pfData.split(" ");
			String chTag = doc.select(".tag-list").text(); 
			String intro = doc.select(".text-container .text").text(); 
			
			//구독자 및 조회수
			String totViews =  doc.select(".strong").text();
			String[] viewsArry = totViews.split(" ");
			
			//광고단가
			String price1 = doc.selectFirst(".est-content").text();
			String cpm = doc.select(".cpm").text();
			String[] cpmArry = cpm.split("￦");
			//예상월수익
			String minPrice = doc.select(".est-content").next().text();
			minPrice = minPrice.substring(3,22);
			
//			//동영상 퍼포먼스
//			String perform1 = doc2.select(".value").text();
			
//			//유튜브 채널 통계표
//			String subchg = doc.select("#chart-total-num-new").text();
//			String subchg2 = doc.getElementsByTag("td").text();
//			
			
			
			
			System.out.println("Profile");
			System.out.println("채널명 :"+title);
			System.out.println("가입일 :"+pfArry[0]);
			System.out.println("국가 :"+pfArry[1]);
			System.out.println("언어 :"+pfArry[2]);
			System.out.println("========================================================");
			System.out.println("추천태그 : "+chTag);
			System.out.println("채널소개 : "+intro);
			
			
			System.out.println("========================================================");
			System.out.println(totViews);
			System.out.println("구독자 :"+viewsArry[0]);
			System.out.println("조회수 :"+viewsArry[1]);
			System.out.println("평균조회수 :"+viewsArry[2]);
			System.out.println("동영상 :"+viewsArry[3]);
			System.out.println("라이브수입 :"+"￦"+viewsArry[4]);
			System.out.println("광고단가: "+price1);
			System.out.println("CPM :"+ cpmArry[1]);
			System.out.println("CPM :"+ cpmArry[2]);
			System.out.println("CPM :"+ cpmArry[3]);
			System.out.println("CPM :"+ cpmArry[4]);
			System.out.println("월매출예상: "+minPrice);
			System.out.println("========================================================");
			//System.out.println(doc.toString());
			//System.out.println(doc2.toString());
			
			
			
		} catch (IOException e) {
			System.out.println("찾는 채널이 없습니다.");
		}
		
		
	}
}
