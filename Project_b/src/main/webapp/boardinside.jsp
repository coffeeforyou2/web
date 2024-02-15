
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<link rel="icon" type="image/png" sizes="16x16"	href="image/favicon-16x16.png">
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	
	<style>
	
	body {
    margin: 0px;
    font-family: 'Gowun Dodum', sans-serif;
    box-sizing: border-box;
}

tr:hover{
	background-color: red;
}

</style>
    <meta charset="UTF-8">
</head>

<body>

  <jsp:include page="header.jsp" />
  <hr>
  <br><br>
  <div style=" width:50%; margin: 0 auto">
	  <c:forEach var="vo" items="${data}">
	  <div style="width: 100%;height: 50px; background-color: lightgray; padding: 8px;">
	  <h2 style="height: 25px; float:left;">${vo.title }</h2><p style="float:right;">${vo.date }</p>
	  </div>
	  <br>
	  <div style="height: 600px;">
	  <div style="width: 100%; text-align: center;" >
	  <img src="upload/${vo.file}" style="height: 400px;border-radius: 5px" ></div><br><br>
	  
	  	${vo.content }
	  </div>
		 </c:forEach>
<hr>
<input type="button" id="back" value="목록으로">
       </div>
    </body>
    <script>
    	$("#back").on("click",function(){
    		location.href = "boardlist.do";
    	});
    </script>
</html>