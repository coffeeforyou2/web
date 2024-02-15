<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js"></script>
<link href="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.15/jquery.bxslider.min.css" rel="stylesheet" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/bxslider/4.2.15/jquery.bxslider.min.js"></script>
<link rel="icon" type="image/png" sizes="16x16"	href="image/favicon-16x16.png">
<style>
.slider_wrap{width:100%;max-width:600px;margin:0 auto; float: right;}
.my_bxslider img{width:100%;}

table {
	float: left;
    width: 60%;
    text-align: center;
    border: 1px solid #fff;
    border-spacing: 1px;
    font-family: 'Cairo', sans-serif;
  margin: auto;
}

table td {
    padding: 10px;
    background-color: #eee;
}

table th {
    background-color: #333;
    color: #fff;
    padding: 10px;
}

.mvPos {
    width: 150px;
    height: 200px;
}

</style>
<meta charset="UTF-8">
<title>영화순위</title>
</head>
<body>
<jsp:include page="header.jsp"/>
	<table>
		<thead>
			<tr>
				<th>순위</th>
				<th>포스터</th>
				<th>제목</th>
				<th>감독</th>
				<th>예매율</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="vo" items="${list}">
				<tr>
					<td>${vo.mvRank }</td>
					<td><img src="${vo.mvPos }" class="mvPos"></td>
					<td>${vo.mvTitle }</td>
					<td>${vo.mvDir }</td>
					<td>${vo.mvScore }</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="slider_wrap">
	<ul class="my_bxslider">
	<c:forEach var="vo" items="${list}">
		<li><img src="${vo.mvPos }"></li>
	</c:forEach>
	</ul>
</div>
<script type="text/javascript">
$(document).ready(function(){
    $('.my_bxslider').bxSlider({
    	 auto: true,
    	speed: 500
    });
});
</script>
</body>
</html>