<%@page import="javax.tools.DocumentationTool.Location"%>
<%@page import="CGVTicket.CGVTicketVO"%>
<%@page import="CGVTicket.CGVTicketDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%

	request.setCharacterEncoding("utf-8");
	String Mv = request.getParameter("CGVMv");
	String Center = request.getParameter("CGVCenter");
	String Day = request.getParameter("CGVDay");
	String Time = request.getParameter("CGVTime");
	String Sit = request.getParameter("CGVSit");
	
	CGVTicketDAO dao = new CGVTicketDAO();
	CGVTicketVO vo = new CGVTicketVO();
	
	vo.setCenter(Center);
	vo.setDay(Day);
	vo.setMirum("#");
	vo.setMv(Mv);
	vo.setTime(Time);
	vo.setSit(Sit);
	dao.insert(vo);
	
	

%>
</body>
</html>