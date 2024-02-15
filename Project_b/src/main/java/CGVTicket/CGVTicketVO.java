package CGVTicket;

public class CGVTicketVO {
	private String Center; //지역에 있는 센터 이름
	private String Sit; //좌석
	private String Mv; //영화
	private String day; //날짜
	private String time; //시간
	private String Mirum; //구매자 (필요시)
	private String BuyTime; //구매시간
	
	public CGVTicketVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getCenter() {
		return Center;
	}
	public void setCenter(String center) {
		Center = center;
	}
	public String getSit() {
		return Sit;
	}
	public void setSit(String sit) {
		Sit = sit;
	}
	public String getMv() {
		return Mv;
	}
	public void setMv(String mv) {
		Mv = mv;
	}
	public String getDay() {
		return day;
	}
	public void setDay(String day) {
		this.day = day;
	}
	public String getTime() {
		return time;
	}
	public void setTime(String time) {
		this.time = time;
	}
	public String getMirum() {
		return Mirum;
	}
	public void setMirum(String mirum) {
		Mirum = mirum;
	}
	public String getBuyTime() {
		return BuyTime;
	}
	public void setBuyTime(String buyTime) {
		BuyTime = buyTime;
	}
	public CGVTicketVO(String center, String sit, String mv, String day, String time, String mirum, String buyTime) {
		super();
		Center = center;
		Sit = sit;
		Mv = mv;
		this.day = day;
		this.time = time;
		Mirum = mirum;
		BuyTime = buyTime;
	}
	@Override
	public String toString() {
		return "CGVTicketVO [Center=" + Center + ", Sit=" + Sit + ", Mv=" + Mv + ", day=" + day + ", time=" + time
				+ ", Mirum=" + Mirum + ", BuyTime=" + BuyTime + "]";
	}
	
	
	
}
