package CGVMAP;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class tester {
	public static void main(String[] args) throws IOException, InterruptedException {
		CgvMapDAO dao = new CgvMapDAO();
		CgvMapVO vo = new CgvMapVO();
		String cgvUrl = "http://localhost:8084/Projcet-B/CGVName.html";
		Document doc = Jsoup.connect(cgvUrl).get();
		//System.out.println(doc);
		//Elements chartDiv = doc.select("#contents > div.sect-common > div > div.sect-city > ul > li.on");
		Elements title = doc.select("body > div > ul > li:nth-child(1) > a");
		int titleSize = doc.select("body > div > ul > li").size();
		int subtitleSize = doc.select("body > div > ul > li:nth-child(1) > div > ul > li").size();
		Elements subtitle = doc.select("body > div > ul > li:nth-child(1) > div > ul > li:nth-child(1) > a");
		String txt = title.text();
		String txt2 = subtitle.text();
		System.out.println(txt);
		System.out.println(txt2);
		System.out.println(titleSize);
		System.out.println(subtitleSize);
		for(int i=1;i<titleSize;i++) {
			subtitleSize = doc.select("body > div > ul > li:nth-child("+i+") > div > ul > li").size();
			for(int j=1;j<subtitleSize;j++){
				String tit = doc.select("body > div > ul > li:nth-child("+i+") > a").text();
				String out = doc.select("body > div > ul > li:nth-child("+i+") > div > ul > li:nth-child("+j+") > a").text();
				String links = doc.select("body > div > ul > li:nth-child("+i+") > div > ul > li:nth-child("+j+") > a").attr("href");
				System.out.println(tit+","+out+","+links);
				vo.setCGVCity(tit);
				vo.setCGVCenter(out);
				vo.setCGVURL(links);
				dao.insert(vo);
			}
			Thread.sleep(3000); //넣지 않으면 세션 초과로 정지됩니다.
		}
	}
}
