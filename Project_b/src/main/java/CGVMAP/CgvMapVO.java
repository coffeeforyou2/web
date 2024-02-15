package CGVMAP;

public class CgvMapVO {
	private String CGVCity; //지역
	private String CGVCenter; //지역에 있는 센터 이름
	private String CGVURL; //해당 센터의 URL
	@Override
	public String toString() {
		return "CgvMapVO [CGVCity=" + CGVCity + ", CGVCenter=" + CGVCenter + ", CGVURL=" + CGVURL + "]";
	}
	public String getCGVCity() {
		return CGVCity;
	}
	public void setCGVCity(String cGVCity) {
		CGVCity = cGVCity;
	}
	public String getCGVCenter() {
		return CGVCenter;
	}
	public void setCGVCenter(String cGVCenter) {
		CGVCenter = cGVCenter;
	}
	public String getCGVURL() {
		return CGVURL;
	}
	public void setCGVURL(String cGVURL) {
		CGVURL = cGVURL;
	}
	public CgvMapVO(String cGVCity, String cGVCenter, String cGVURL) {
		super();
		CGVCity = cGVCity;
		CGVCenter = cGVCenter;
		CGVURL = cGVURL;
	}
	public CgvMapVO() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
}
