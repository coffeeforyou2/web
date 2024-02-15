<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>

#searchBox{
	width : 300px;
	height : 150px;
	margin: 0 auto;
}

#div1,#div2 {
	position: relative;
	width: 300px;
	margin-top: 60px;
}

#keyword {
	font-size: 15px;
	color: #222222;
	width: 300px;
	border: none;
	border-bottom: solid #aaaaaa 1px;
	padding-bottom: 10px;
	text-align: center;
	position: relative;
	background: none;
	z-index: 5;
}

input::placeholder {
	color: #aaaaaa;
}

input:focus {
	outline: none;
}

span {
	display: block;
	position: absolute;
	bottom: 0;
	left: 50%; /* right로만 바꿔주면 오 - 왼 */
	background-color: #666;
	width: 0;
	height: 2px;
	border-radius: 2px;
	transform: translateX(-50%);
	transition: 0.5s;
}

label {
	position: absolute;
	color: #aaa;
	left: 50%;
	transform: translateX(-50%);
	font-size: 20px;
	bottom: 8px;
	transition: all .2s;
}

input:focus ~ label, input:valid ~ label {
	font-size: 16px;
	bottom: 40px;
	color: #666;
	font-weight: bold;
}

input:focus ~ span, input:valid ~ span {
	width: 100%;
}

input[type=button], input[type=submit], input[type=reset] {
	position: relative; background-color : #04AA6D;
	border: none;
	color: white;
	padding: 16px 32px;
	text-decoration: none;
	margin: 4px 2px;
	cursor: pointer;
	background-color: #04AA6D;
}

</style>
<meta charset="UTF-8">
<title>영화검색하기</title>
</head>

<body>
<jsp:include page="header.jsp"/>
<form action="mvSearch.do" id="searchBox">
<table>
<tr>
	<td><div id="div1">
			<input type="text" required name="keyword" id="keyword"> <label>영화제목</label>
			<span></span>
		</div></td>
		<td><div id="div2"><input type="submit" value="검색"></div></td>
</tr>
</table>
</form>
<jsp:include page="mvSearchInfo.jsp"/>
</body>
</html>