package dao;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import vo.MovieVO;

public class test {
	public static void main(String[] args) throws IOException {
		
		
		
		//1. CGV 영화 페이지 URL
		String cgvUrl = "http://www.cgv.co.kr/movies/?lt=1&ft=0";
		Document doc = Jsoup.connect(cgvUrl).get();
		System.out.println(doc);
		//2. Jsoup URL 접속
		
//		
		
		//3. 무비차트 출력 DIV 선택
//		#contents > div.wrap-movie-chart > div.sect-movie-chart
		Elements chartDiv = doc.select("#contents > div.wrap-movie-chart > div.sect-movie-chart");
		// 복수일 수 있으니 Elements :: ArrayList라고 봐도 무방함.
//		System.out.println(chartDiv.eq(0));
		
		//4. [1 ~ 19]위 <li> 태그 선택
		Elements movLi = chartDiv.select("li");
//		div.box-img > a
		for(int i = 0; i < movLi.size(); i ++) {
		// 5. [1 ~ 19]위 영화의 상세페이지 URL 추출
		String detailUrl = "http://www.cgv.co.kr"+movLi.eq(i).select("div.box-image > a").eq(0).attr("href");
		//System.out.println(detailUrl);
		// 6. 영화 상세 페이지 Document
		Document detailDoc = Jsoup.connect(detailUrl).get();
		//#select_main > div.sect-base-movie
		Elements baseMovie = detailDoc.select("#select_main > div.sect-base-movie");
		//#select_main > div.sect-base-movie > div.box-contents > div.title > strong
		
		//영화순위
		int mvRank = i+1;
		System.out.println("영화순위 : "+ mvRank);
		
		//영화제목
		String mvTitle = baseMovie.select("div.box-contents > div.title > strong").eq(0).text();
		System.out.println("영화제목 : " + mvTitle);
		
		//예매율
		String mvScore = baseMovie.select(".score > .percent > span").text();
		System.out.println("예매율 : "+ mvScore);
		
//		#select_main > div.sect-base-movie > div.box-contents > div.spec > dl > dd:nth-child(2) > a
		String mvDir = baseMovie.select("div.box-contents > div.spec > dl > dd:nth-child(2)").eq(0).text();
		System.out.println("영화감독 : " + mvDir);
		
		// 배우, 기본정보, 개봉일
		String mvAct = baseMovie.select("div.box-contents > div.spec > dl > dd.on").eq(0).text().replace(" , ", ",");
		// 0번째는 출연배우 정보가 기재되어있음, 1,2번째는 기본정보, 개봉일이 기재됨! 
		System.out.println("출연배우 : " + mvAct);
		
		String mvInfo = baseMovie.select("div.box-contents > div.spec > dl > dd.on").eq(1).text().replace("  ", "");
		System.out.println("기본정보 : " + mvInfo);
		
		String mvDate = baseMovie.select("div.box-contents > div.spec > dl > dd.on").eq(2).text().replace("(재개봉)", "");
		System.out.println("개봉일 : " + mvDate);
		
		
		//장르
		String mvGenre = baseMovie.select("div.box-contents > div.spec > dl > dd.on").eq(0).next().text().replace("장르 :","").replace(", ",",").trim();
		// 장르는 dd의 클래스가 on인 요소 다음에 위치해있음
		System.out.println("영화장르 : " + mvGenre );
	    
	    String mvPos = baseMovie.select("div.box-image > a").eq(0).attr("href");
		System.out.println("영화포스터 : " + mvPos);
		MovieVO vo = new MovieVO();
		vo.setMvRank(mvRank);
		vo.setMvTitle(mvTitle);
		vo.setMvScore(mvScore);
		vo.setMvDir(mvDir);
		vo.setMvAct(mvAct);
		vo.setMvInfo(mvInfo);
		vo.setMvDate(mvDate);
		vo.setMvGenre(mvGenre);
		vo.setMvPos(mvPos);
		MovieDAO dao = new MovieDAO();
		dao.insert(vo);
		}
	}
	
	
}
