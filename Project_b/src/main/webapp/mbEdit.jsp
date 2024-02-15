<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://code.jquery.com/jquery-3.6.0.min.js">
 </script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.div1 {
	padding: 1.5em;
	background: #f5f5f5;
}

.div1 h1 {
	text-align: center;
}

table {
	border: 1px #a39485 solid;
	font-size: .9em;
	box-shadow: 0 2px 5px rgba(0, 0, 0, .25);
	width: 100%;
	border-collapse: collapse;
	border-radius: 5px;
	overflow: hidden;
}

th {
	text-align: left;
}

thead {
	font-weight: bold;
	color: #fff;
	background: #73685d;
}

td, th {
	padding: 1em .5em;
	vertical-align: middle;
}

td {
	border-bottom: 1px solid rgba(0, 0, 0, .1);
	background: #fff;
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

input[type="submit"], input[type="reset"], input[type="button"] {
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

input[type="button"]{
	background-color: red;
	color: #fff;
}

@media all and (max-width: 768px) {
	table, thead, tbody, th, td, tr {
		display: block;
	}
	th {
		text-align: right;
	}
	table {
		position: relative;
		padding-bottom: 0;
		border: none;
		box-shadow: 0 0 10px rgba(0, 0, 0, .2);
	}
	thead {
		float: left;
		white-space: nowrap;
	}
	tbody {
		overflow-x: auto;
		overflow-y: hidden;
		position: relative;
		white-space: nowrap;
	}
	tr {
		display: inline-block;
		vertical-align: top;
	}
	th {
		border-bottom: 1px solid #a39485;
	}
	td {
		border-bottom: 1px solid #e5e5e5;
	}
}

#pw_correct {
	font-size: 0.8em;
	background-color: green;
	color: white;
}

#pw_not {
	font-size: 0.8em;
	background-color: red;
	color: white;
}
</style>
<script type="text/javascript">
		function del() {
			var ans = confirm("정말 삭제하시겠습니까? 복원되지 않습니다.!!");
			if (ans == true) {
				document.checkForm.action = "mbDelete.do";
				document.checkForm.submit();
			} else {
				return;
			}
		}
	</script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="div1">
		<h1>회원정보 변경</h1>
		<form name="checkForm" action="mbUpdate.do" method="post">
			<table>
				<thead>
					<tr>
						<th>아이디</th>
						<th>패스워드</th>
						<th>이름</th>
						<th>이메일</th>
						<th>생년</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td><input type="text" name="userId" id="userId"
							class="userId" value="${data.mbId }" readonly="readonly"></td>
						<td><input type="password" name="userPwd1" id="userPwd1"
							value="${data.mbPw }"><div id="pw_correct" class="pw_correct">비밀번호가 유효합니다</div>
						<div id="pw_not" class="pw_not">비밀번호가 유효하지 않습니다</div></td>
						<td><input type="text" name="userIrum" id="userIrum"
							value="${data.mbIrum }"></td>
						<td><input type="email" name="email" id="email"
							value="${data.mbEmail }"></td>
						<td><input type="text" name="birthYear" id="year"
							value="${data.mbBirthYear }"></td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td><input type="submit" value="변경하기"></td>
						<td><input type="button" value="회원탈퇴"
							onclick="javascript:del()">
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	<script>
		$(function() {
			$("#pw_correct").hide();
			$("#pw_not").hide();
			$("#userPwd1")
					.keyup(
							function() {
								var pwd1 = $("#userPwd1").val();
								regExp = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,15}$/;
								//regExp = /^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[#?!@$ %^&*-]).{8,15}$/;
								if (regExp.test(pwd1)) {
									$("#pw_correct").show();
									$("#pw_not").hide();
								} else {
									$("#pw_correct").hide();
									$("#pw_not").show();
								}
							});
		});
	</script>
</body>
</html>