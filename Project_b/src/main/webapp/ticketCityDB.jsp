<%@page import="java.util.ArrayList"%>
<%@page import="CGVMAP.CgvMapVO"%>
<%@page import="CGVMAP.CgvMapDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% 
	CgvMapDAO dao = new CgvMapDAO();
	CgvMapVO vo = new CgvMapVO();
	request.setCharacterEncoding("utf-8");
	String input = request.getParameter("SandData");
	String cityName = null;
	System.out.print(input);
	
	out.print("<div style='float: left'class='allCGV'>");
	
	
	vo.setCGVCity(input);
	ArrayList<CgvMapVO> datas = dao.selectCenter(vo);
	
	for(int i=0;i<datas.size();i++){
		vo = datas.get(i);
		
		String Center = vo.getCGVCenter();
		System.out.println(Center);
		out.print("<div id='CGVCenter' class='choose'>"+Center+"</div>");
	}
	
	
	out.print("</div>");
%>