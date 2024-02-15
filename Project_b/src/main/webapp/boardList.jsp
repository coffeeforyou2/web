
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

tbody :hover{
	text-decoration-line: underline;
	background-color: lightgray;
}

tbody{
	background-color: #ECECEC;
}

td{
	padding: 5px;
	
}
thead{
	
}

th{
	padding-bottom: 5px;
	
}
#box{
	padding: 10px;
	background-color: white;
	box-shadow: 0px 0px 15px lightgray;
	border-radius: 5px;
}

table{
	background-color: white;
	padding: 10px;
	text-align: center;
border-radius: 5px;
	border-collapse: collapse;
	
}
</style>
    <meta charset="UTF-8">
</head>

<body>
<form id="StartFrom" action="ticketDel.do" method="post" hidden="hidden">
	
	</form>
  <jsp:include page="header.jsp" />
  
  <hr>
  <div style=" text-align: center;">
  <br><br>
  	<h1>고객센터</h1><br>
  	<p>언제나 고객님의 소중한 말씀을 귀기울이겠습니다.</p>
  </div>
  <br>
  <div style="width: 50%; margin: 0 auto;">
  <input style="float: right; padding: 5px;" type="button" id="write" value="글쓰기"><br><br>
  <div id="box" >
 <table style="width: 100%; margin: 0 auto;">
		<thead>
			<tr>
				<th>번호</th>
				<th>게시판</th>
				<th>제목</th>
				<th>작성자</th>
			</tr>
		</thead>
		<tbody>
		<c:if test="${not empty data}">
  <c:forEach var="vo" items="${data}">
		<tr id="ticketDel">
			<td>${vo.no }</td>
			<td>${vo.type }</td>
			<td>${vo.title }</td>
			<td>${vo.autor }</td>
		</tr>
	</c:forEach>
	</c:if>
  	</tbody>
  	</table>
  	</div>
 </div>
  
  
	 

       
    </body>
    <script>
    	$("tr").on("click",function(){
    		var row = $(this).closest("tr");
    		var no = row.find("td:eq(0)").text();
    		console.log(no);
    		if(no!=""){
    			location.href = "boardinside.do?action=boardinside&no="+no ;
    		}
    	});
    	
    	$("#write").on("click",function(){
    		location.href = "board.jsp";
    	});
    </script>
</html>