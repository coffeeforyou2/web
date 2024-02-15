<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" sizes="16x16"	href="image/favicon-16x16.png">
<style>
.tb1 {
	width: 40%;
	text-align: center;
	border: 1px solid #fff;
	border-spacing: 1px;
	font-family: 'Cairo', sans-serif;
	margin: auto;
	padding: 10px;
}

table th {
	padding: 10px;
}

.span_irum {
	color: #edacb1;
	font-size: 2em;
	font-weight: 1.5em;
}
.span_pw {
	color: #0080ff;
	font-size: 1.6em;
}
.span_id {
	color: #edacb1;
	font-size: 2em;
	font-weight: 1.5em;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<c:set var="data" value="${data }"></c:set>
	<c:choose>
		<c:when test="${data eq 'idSearch' }">
			<table class="tb1">
			<tr>
				<th>회원님의 아이디는 <span class="span_id">${vo.mbId }</span> 입니다. </th>
			</tr>
		</table>
		</c:when>

		<c:when test="${data eq 'pwSearch' }">
			<table class="tb1">
			<tr>
				<th><span class="span_irum">${vo.mbIrum }</span>님의 패스워드는 <span class="span_pw"> ${vo.mbPw }</span> 입니다. </th>
			</tr>
		</table>
		</c:when>

	</c:choose>
</body>
</html>