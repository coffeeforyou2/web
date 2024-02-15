package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface IAction {
	public abstract ActionForward execute(HttpServletRequest req,HttpServletResponse res) throws Exception;
		//로직 (==메서드)은 input,output이 중요!
	/*
	 * +++output+++
	 * 1. 어디로 갈지(페이지정보)
	 * 2. 어떻게 갈지(forward,sendRedirect)
	 * 어디로 | 어떻게 == 객체화 -> ActionForward ex)VO
	 */
	
}
