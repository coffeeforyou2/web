<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	//DB에 처음 방문할 수 있도록 요청
	//페이지 이동에서도 값을 유지 ->forward요청
	pageContext.forward("main.do");
%>