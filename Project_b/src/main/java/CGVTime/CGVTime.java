package CGVTime;

import java.io.IOException;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;

public class CGVTime {
	public static void main(String[] args) throws IOException {
		String cgvUrl = "http://www.cgv.co.kr/reserve/show-times/";
		Document doc = Jsoup.connect(cgvUrl).get();
		Elements Mvinfo = doc.select("iframe#ifrm_movie_time_table");
		String src = Mvinfo.attr("src");
		String url2 = "http://www.cgv.co.kr/reserve/show-times"+ src;
		Document doc2 = Jsoup.connect(url2).get();
		System.out.println(src);
		//System.out.println(doc2);
		
	}
}
