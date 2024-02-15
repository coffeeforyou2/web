package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

import controller.ActionForward;
import controller.IAction;
import dao.MovieDAO;
import vo.MovieVO;

public class MainAction implements IAction {

	@Override
	public ActionForward execute(HttpServletRequest req, HttpServletResponse res) throws Exception {
		req.setCharacterEncoding("utf-8");
		res.setCharacterEncoding("utf-8");
		ActionForward forward = new ActionForward();
		forward.setPath("main.jsp");
		forward.setRedirect(false);
		// 1. CGV 영화 페이지 URL
		String cgvUrl = "http://www.cgv.co.kr/movies/?lt=1&ft=0";

		// 2. Jsoup URL 접속
		Document doc = Jsoup.connect(cgvUrl).get();
//				System.out.println(doc);

		// 3. 무비차트 출력 DIV 선택
//				#contents > div.wrap-movie-chart > div.sect-movie-chart
		Elements chartDiv = doc.select("#contents > div.wrap-movie-chart > div.sect-movie-chart");
		// 복수일 수 있으니 Elements :: ArrayList라고 봐도 무방함.
//				System.out.println(chartDiv.eq(0));

		// 4. [1 ~ 19]위 <li> 태그 선택
		Elements movLi = chartDiv.select("li");
//				div.box-img > a
		
		MovieDAO dao = new MovieDAO();
		dao.truncate(); // 테이블비우기 실행
		for (int i = 0; i < movLi.size(); i++) {
			// 5. [1 ~ 19]위 영화의 상세페이지 URL 추출
			String detailUrl = "http://www.cgv.co.kr" + movLi.eq(i).select("div.box-image > a").eq(0).attr("href");
			// System.out.println(detailUrl);
			// 6. 영화 상세 페이지 Document
			Document detailDoc = Jsoup.connect(detailUrl).get();
			// #select_main > div.sect-base-movie
			Elements baseMovie = detailDoc.select("#select_main > div.sect-base-movie");
			// #select_main > div.sect-base-movie > div.box-contents > div.title > strong

			// 영화순위
			int rank = i + 1;
			System.out.println("영화순위 : " + rank);

			// 영화제목
			String mvtitle = baseMovie.select("div.box-contents > div.title > strong").eq(0).text();
			System.out.println("영화제목 : " + mvtitle);

			// 예매율
			String mvscore = baseMovie.select(".score > .percent > span").text();
			System.out.println("예매율 : " + mvscore);

//				#select_main > div.sect-base-movie > div.box-contents > div.spec > dl > dd:nth-child(2) > a
			String mvdir = baseMovie.select("div.box-contents > div.spec > dl > dd:nth-child(2)").eq(0).text();
			System.out.println("영화감독 : " + mvdir);

			// 배우, 기본정보, 개봉일
			String mvact = baseMovie.select("div.box-contents > div.spec > dl > dd.on").eq(0).text().replace(" , ",
					",");
			// 0번째는 출연배우 정보가 기재되어있음, 1,2번째는 기본정보, 개봉일이 기재됨!
			System.out.println("출연배우 : " + mvact);

			String mvinfo = baseMovie.select("div.box-contents > div.spec > dl > dd.on").eq(1).text().replace("  ", "");
			System.out.println("기본정보 : " + mvinfo);

			String mvdate = baseMovie.select("div.box-contents > div.spec > dl > dd.on").eq(2).text().replace("(재개봉)",
					"");
			System.out.println("개봉일 : " + mvdate);

			// 장르
			String mvgenre = baseMovie.select("div.box-contents > div.spec > dl > dd.on").eq(0).next().text()
					.replace("장르 :", "").replace(", ", ",").trim();
			// 장르는 dd의 클래스가 on인 요소 다음에 위치해있음
			System.out.println("영화장르 : " + mvgenre);

			String mvpos = baseMovie.select("div.box-image > a").eq(0).attr("href");
			System.out.println("영화포스터 : " + mvpos);
			MovieVO vo = new MovieVO();
			vo.setMvRank(rank);
			vo.setMvTitle(mvtitle);
			vo.setMvScore(mvscore);
			vo.setMvDir(mvdir);
			vo.setMvAct(mvact);
			vo.setMvInfo(mvinfo);
			vo.setMvDate(mvdate);
			vo.setMvGenre(mvgenre);
			vo.setMvPos(mvpos);
			dao.insert(vo);
		}
		return forward;
	}

}
