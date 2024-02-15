<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<style>
.div1 {
	margin: 20px;
	background-color: #f4f4f4;
}

h1 {
	text-align: center;
}

form {
	border: 1px solid black;
	padding: 20px;
	border-radius: 5px;
	background-color: #fff;
	max-width: 800px;
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

#checkId {
	float: right;
	font-size: 0.8em;
}

#check {
	display: none;
}

#pw_success {
	font-size: 0.8em;
	color: white;
	background-color: green;
}

#pw_fail {
	font-size: 0.8em;
	background-color: red;
	color: white;
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
.pw_show {display: flex;align-items: center; margin-top: 10px; font-size: 12px;}
.pw_show input[type="checkbox"] {display: flex;align-items: center;margin-right: 5px;font-size: 12px; }

</style>
<script src="https://code.jquery.com/jquery-3.6.0.min.js">
 </script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="div1">
		<h1>회원가입</h1>
		<form action="signup.do" style="border: 1px solid black" method="POST">
			<fieldset>
				<legend>필수입력사항</legend>
				<!--4행 3열 테이블안에 각각의 input요소 및 구문작성===>형식적으로 보여짐-->
				*표시는 필수 입력 해주세요.
				<hr>
				<table>
					<tr>
						<th>*ID:</th>
						<td><input type="text" name="userId" id="userId"
							class="userId" size="30" placeholder="아이디10글자이내" required>
						</td>
						<td><font id="checkId" size="2" style="float: right;"></font>

						</td>
					</tr>

					<tr>
						<th>*비밀번호</th>
						<td colspan="2"><input type="password" name="userPwd1"
							id="userPwd1" size="30" placeholder="영문,숫자,특수문자포함8글자이상" required>
						</td>
						<td>
						<div id="pw_correct" class="pw_correct">비밀번호가 유효합니다</div>
						<div id="pw_not" class="pw_not">비밀번호가 유효하지 않습니다</div>
					</td>
					</tr>
					<tr>
						<th>*비밀번호 확인</th>
						<td colspan="2"><input type="password" name="userPwd2"
							id="userPwd2" size="30" placeholder="위의 비밀번호와 일치하게 입력하세요">
						</td>
						<td>
						<div id="pw_success" class="pw_success">비밀번호가 일치합니다</div>
						<div id="pw_fail" class="pw_fail">비밀번호가 일치하지 않습니다</div>
						<label class="pw_show"><input type="checkbox">비밀번호 보기</label>
					</td>
					</tr>
					<tr>
						<th>*이름</th>
						<td><input type="text" name="userIrum" id="userIrum"
							size="30" placeholder="이름5글자이내" required></td>
					</tr>
					<tr>
						<th>*Email</th>
						<td><input type="email" name="email" id="email" size="30"
							placeholder="이메일 입력하세요" required></td>
						<td><select name="emailAddr" id="emailAddr"
							onchange="emailAdd()">
								<option value="etc" selected>직접입력</option>
								<option value="@naver.com">naver.com</option>
								<option value="@gmail.com">gmail.com</option>
								<option value="@daum.net">daum.net</option>
						</select></td>
					</tr>
					<tr>
						<th>*생년</th>
						<td><select name="birthYear" id="year"></select>년</td>
					</tr>
				</table>
			</fieldset>
			<fieldset>
				<legend>추가정보</legend>

				<a href="https://policy.naver.com/policy/service.html">홈페이지 이용
					약관(필수)</a> <input type="checkbox" id="demo-copy" name="demo-copy"
					required> <label for="demo-copy">동의함</label> <a
					href="https://policy.naver.com/policy/service.html"><br> <br>개인정보
					수집 및 이용 동의(필수)</a> <input type="checkbox" id="demo-human"
					name="demo-human" required> <label for="demo-human">동의함</label>

			</fieldset>
			<br> <input type="submit" value="회원가입"
				onclick="return validate()"> <input type="reset"
				value="다시입력">
			<button type="button">이전으로</button>
			<br> <br>
		</form>
	</div>
	<script>
	$(function(){
		 var now = new Date();
		 var year = now.getFullYear();
		for(var i = 1900 ; i <= year ; i++) {
	        $('#year').append('<option value="' + i + '">' + i + '</option>');    
	    }
	})
	</script>
	<script>
		//유효성 검사(사용자가 입력한 값들이 유효한 값의 형태인지)
		function validate() {
			//유효성검사: 아이디, 비밀번호, 비밀번호 일치, 이름(생략가능)
			var userId = document.getElementById("userId");
			var userPwd1 = document.getElementById("userPwd1");
			var userPwd2 = document.getElementById("userPwd2");
			var userEmail = document.getElementById("email");
			var userIrum = document.getElementById("userIrum");

			//1)아이디검사:아이디, 비밀번호,비밀번호일치, 이름
			//유효성검사 :
			//영소문자,숫자로만 총4~12글자로 이루어져야 함
			//단, 첫글자는 반드시 영소문자여야 됨,
			var regExp = /^[a-z][a-z\d]{3,11}$/;
			if (!regExp.test(userId.value)) {
				alert("유효한 아이디를 입력해 주세요");
				userId.select();
				return false;
			}
			//2)비밀번호 검사
			//영문자(대소문자),숫자,특수문자(!@#$%^&*)로 총 8~15글자 사이로 입력
			regExp = /^(?=.*[A-Za-z])(?=.*\d)(?=.*[@$!%*#?&])[A-Za-z\d@$!%*#?&]{8,15}$/;
			if (!regExp.test(userPwd1.value)) {
				alert("유효한 비밀번호를 입력해 주세요.");
				userPwd1.value = "";//공백
				userPwd1.focus();
				return false;
			}
			//3)비밀번호일치
			if (userPwd1.value != userPwd2.value) {
				alert("동일한 비밀번호를 입력해 주세요");
				userPwd2.value = "";//공백
				userPwd2.focus();
				return false;
			}
			regExp = /^([a-z0-9_\.-]+)@([\da-z\.-]+)\.([a-z\.]{2,6})$/;
			if (!regExp.test(userEmail.value)) {
				alert("이메일 형식이 잘못되었습니다.");
				userEmail.value = "";//공백
				userEmail.focus();
				return false;
			}
			// 5) 이름
			//    한글(결합)로만 2글자 이상
			regExp = /^[가-힣]{2,}$/;
			if (!regExp.test(userIrum.value)) {
				alert("유효한 이름을 입력해주세요");
				userIrum.select();
				return false;
			}
		}
	</script>
	<script>
		function emailAdd(){
			var userEmailAddr = document.getElementById("emailAddr");
			var userEmail = document.getElementById("email");
			userEmail.value=userEmail.value+userEmailAddr.value;
		}
	</script>
	<script>
		$('.userId').focusout(function(){
			let userId = $('.userId').val(); //input_id에 입력되는 값
			console.log(userId);
			
			$.ajax({
				url:"idCheck.do",//던질 URL
				type: "post", //방식
				data: {userId:userId}, //던지는 파라미터
				dataType: 'json',
				success:function(result){//성공시 result에 값이 들어옵니다.
					if(result==1){
						$("#checkId").html('사용할수 없는 아이디입니다.');
						$("#checkId").attr('color','red');
					}else{
						$("#checkId").html('사용할수 있는 아이디입니다.');
						$("#checkId").attr('color','green');
					}
				},
				error:function(){
					alert("서버요청실패");
				}
				
			});
		})
	</script>
	
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

	<script>
		$(function() {
			$("#pw_success").hide();
			$("#pw_fail").hide();
			$("#userPwd2").keyup(function() {
				var pwd1 = $("#userPwd1").val();
				var pwd2 = $("#userPwd2").val();
				if (pwd1 != "" || pwd2 != "") {
					if (pwd1 == pwd2) {
						$("#pw_success").show();
						$("#pw_fail").hide();
					} else {
						$("#pw_success").hide();
						$("#pw_fail").show();
					}
				}
			});
		});
	</script>
	
	<script>
		$(function(){
			  const pwInput1 = $("#userPwd1");
			  const pwInput2 = $("#userPwd2");
			    $('.pw_show input[type="checkbox"]').on('change', function() {
			        if (this.checked) {
			            pwInput1.prop("type", "text");
			            pwInput2.prop("type", "text")
			        } else {
			            pwInput1.prop("type", "password");
			            pwInput2.prop("type", "password");
			        }
			});
		});
	</script>
</body>
</html>
