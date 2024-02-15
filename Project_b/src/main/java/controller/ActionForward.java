package controller;

public class ActionForward {
	private String path; //어디로 갈지
	private boolean redirect; //어떻게 갈지 1)response.sendRedirect() = true; , 2)dis.forward() = false; 
	
	public ActionForward() {
		super();
		// TODO Auto-generated constructor stub
	}
	public String getPath() {
		return path;
	}
	public void setPath(String path) {
		this.path = path;
	}
	public boolean isRedirect() {
		return redirect;
	}
	public void setRedirect(boolean redirect) {
		this.redirect = redirect;
	}
	
}
