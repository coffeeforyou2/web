
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
	<style>
	
	body {
    margin: 0px;
    font-family: 'Gowun Dodum', sans-serif;
    box-sizing: border-box;
}


</style>
    <meta charset="UTF-8">
</head>

<body>
<form id="StartFrom" action="ticketDel.do" method="post" hidden="hidden">
	
	</form>
  <jsp:include page="header.jsp" />
  
  <hr>
  <c:if test="${empty data}">
  <div style=" text-align: center;">
  <br><br><br>
  	<h1>구매하신 티켓을 찾을수 없어요.</h1><br>
  	<p>예매를 해주세요!</p>
  </div>
  </c:if>
  <c:if test="${not empty data}">
  <table border="1" style="width: 40%; margin: 0 auto;">
		<thead>
			<tr>
				<th>좌석</th>
				<th>영화관</th>
				<th>예약자</th>
				<th>영화</th>
				<th>관람일</th>
				<th>관람시간</th>
				<th>예약시간</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
		
  <c:forEach var="vo" items="${data}">
		<tr>
			
			<td>${vo.sit }</td>
			<td>${vo.center }</td>
			<td>${vo.mirum }</td>
			<td>${vo.mv }</td>
			<td>${vo.day }</td>
			<td>${vo.time }</td>
			<td>${vo.buyTime}</td>
			<td><input type="button" id="ticketDel" value="삭제" width="100%"></td>
		</tr>
	</c:forEach>
	
  	</tbody>
  	</table>
 
  </c:if>
	 

       
    </body>
    <script>
    	$("#ticketDel").on("click",function(){
    		var row = $(this).closest("tr");
    		var sit = row.find("td:eq(0)").text();
    		var center = row.find("td:eq(1)").text();
    		var mirum = row.find("td:eq(2)").text();
    		var buytime = row.find("td:eq(6)").text();
    		console.log(sit+","+center+","+mirum+","+buytime);
    		swal({
    			  title: "해당 예매를 취소하시겠습니까?",
    			  icon: "warning",
    			  buttons: {
    			    cancel: "아니오",
    			    confirm: {
    			      text: "예",
    			      value: true,
    			      visible: true,
    			      className: "btn-danger",
    			      closeModal: true
    			    }
    			  }
    			})
    			.then((willDelete) => {
    			  if (willDelete) {
    				  $("#StartFrom").prepend('<input type="text" id="CGVCenter" name="CGVCenter" value='+center+'>');
    	    			$("#StartFrom").prepend('<input type="text" id="CGVId" name="CGVId" value='+mirum+'>');
    	    			$("#StartFrom").prepend('<input type="text" id="CGVSit" name="CGVSit" value='+sit+'>');
    	    			$("#StartFrom").prepend('<input type="text" id="CGVBuytime" name="CGVBuytime" value='+buytime+'>');
    	    			$("#StartFrom").submit();
    			  } else {
    			    
    			    return false;
    			  }
    		});  
    	});
    </script>
</html>