<%@page import="java.util.ArrayList"%>
<%@page import="CGVTicket.CGVTicketVO"%>
<%@page import="CGVTicket.CGVTicketDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
	<style>
	body {
    margin: 0px;
    font-family: 'Gowun Dodum', sans-serif;
    box-sizing: border-box;
}

div,
input,
textarea {
    box-sizing: border-box;
}
a{
    text-decoration: none;
    color: black;
}
.container {
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 100px;
}

.heaader-container {
    display: flex;
    height: 80px;
    align-items: center;
    padding: 10px;
}

.heaader-main {
    margin-left: 25px;
    font-size: 40px !important;
    letter-spacing: 4px;
    font-family: 'Black Han Sans', sans-serif;
}

.-sub {
    margin-left: -20px;
}

.heaader-item {
    margin-right: 25px;
    font-size: 20px;
    cursor: pointer;    
}

.nav-container {
    display: flex;
    height: 40px;
    align-items: center;
    padding: 10px;
    justify-content: center;
    

}
  #nav-item a:hover{color: red;}

.nav-item {
    margin: 60px;
    font-size: 20px;
    cursor: pointer;
}

heaader{
            width: 65%;
            margin: 0 auto;
            margin: 0,70px,70px,0;
}

.sub{
	color: white;
}

.title{
	color: white;
	font-weight: 900;
	font-size: 1.2em;
}

#Ticketing:hover img {
	transform: translateX(0.25rem);
    transition: transform 0.1s ease-in-out;
}

#Ticketing img {
	transform: translateX(0rem);
    transition: transform 0.1s ease-in-out;
}

#Ticketing {
	font-size:20px;
	color:white;
	width: 120px;
	height: 120px;
	text-align:center;
	line-height: 15px;
	padding-top: 15px;
	float:right;
	background-color: red;
	font-weight: 700;
}
#Ticketing:hover{
background-color: #BC0404;
}

</style>
    <meta charset="UTF-8">
  
</head>

<body>
	<%
	request.setCharacterEncoding("utf-8");
	String CGVMv = request.getParameter("CGVMv");
	String CGVCenter = request.getParameter("CGVCenter");
	String CGVDay = request.getParameter("CGVDay");
	String CGVTime = request.getParameter("CGVTime");
	String CGVSit = request.getParameter("CGVSit");
	%>
    <jsp:include page="header.jsp" />
    <hr>
    <br>
    	<h1 style="text-align: center;">예매성공!</h1>
    	<br>
    	<div style="width: 600px;height: 270px; background-color: red; margin: 0 auto; padding:10px; border-radius: 10px;">
    		<!--  <span class="sub">상영관: </span><span class="title"><%= CGVCenter %></span><br>
    		<span class="sub">영화: </span><span class="title"><%= CGVMv %></span><br>
    		<span class="sub">좌석: </span><span class="title"><%= CGVSit %></span><br>
    		<span class="sub">상영시간: </span><span class="title"><%= CGVTime %></span><br>
    		<span class="sub">상영일자: </span><span class="title"><%= CGVDay %></span>-->
    		<div style="text-align:center;">
    		<img src="image/ticketText.png" style="width: 50% ; " ><br>
    		</div>
    		<div style="text-align: center;">
    		<span class="sub">상영관: </span><span class="title"><%= CGVCenter %></span><br>
    		<span class="sub">영화: </span><span class="title"><%= CGVMv %></span><br>
    		<span class="sub">좌석: </span><span class="title"><%= CGVSit %></span><br>
    		<span class="sub">상영시간: </span><span class="title"><%= CGVTime %></span><br>
    		<span class="sub">상영일자: </span><span class="title"><%= CGVDay %></span>
    		</div>
    	</div>
    	<br>
    	<div style="width: 100%; height: 120px; background-color: lightgray;">
	    	<div style="width: 52%; margin: 0 auto;">
		    	<div style="float: left; padding-top: 15px; ">
		    	
		    	</div>
		    	<div id="Ticketing" class="noneSlc">
		        <img src="image/nextIcon.png" width="100%"><br><br>메인으로</div>
    	</div>
    	</div>
    	<script>
    	$(document).ready(function() {
		    $("#Ticketing").on("click", function() {
		    	location.replace('main.jsp');
		    });
		});
    	
    	</script>
    </body>
    </html>