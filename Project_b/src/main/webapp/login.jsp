<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<style>
.div1 {
	margin: 20px;
	background-color: #f4f4f4;
	height: 500px;
}

h1 {
	text-align: center;
}

form {
	border: 1px solid black;
	padding: 20px;
	border-radius: 5px;
	background-color: #fff;
	max-width: 600px;
	margin: 0 auto;
}

fieldset {
	margin-bottom: 20px;
	border: none;
}

legend {
	font-weight: bold;
	font-size: 1.2em;
}

table {
	width: 100%;
}

label {
	font-weight: bold;
}

input[type="text"], input[type="password"], input[type="email"],
	textarea, input[type="file"], select {
	width: calc(100% - 18px);
	padding: 8px;
	margin-bottom: 10px;
	border: 1px solid #ccc;
	border-radius: 4px;
	box-sizing: border-box;
}

input[type="submit"], input[type="reset"], button {
	padding: 10px 20px;
	border: none;
	border-radius: 4px;
	cursor: pointer;
	margin-right: 10px;
}

input[type="submit"] {
	background-color: #007bff;
	color: #fff;
}

input[type="reset"], button {
	background-color: #ccc;
	color: #000;
}

hr {
	border: none;
	border-top: 1px solid #ccc;
	margin: 20px 0;
}

a {
	text-decoration: none;
	color: #007bff;
}

</style>
</head>
<body>
	<jsp:include page="header.jsp" />

	<div class="div1">
		<header>
			<h1>로그인</h1>
		</header>
		<form action="login.do" method="POST">
			<tr>
				<th>아이디</th>
				<td><input type="text" name="userId" id="userId" class="userId"
					size="30"  required></td>
			</tr>

			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="userPwd1"
					id="userPwd1" size="30" required></td>
				<input type="submit" value="로그인">
				<input type="reset" value="다시입력">
				<button type="button">이전으로</button>
			</tr>
		</form>
	</div>
</body>
</html>