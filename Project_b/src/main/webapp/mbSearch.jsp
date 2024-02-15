<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="icon" type="image/png" sizes="16x16"	href="image/favicon-16x16.png">
<meta charset="UTF-8">
<title>아이디/패스워드찾기</title>
<style>
* {
	padding: 0;
	margin: 0;
	border: none;
}

#div1 {
	padding-top: 30px;
}

body {
	font-size: 14px;
	font-family: 'Roboto', sans-serif;
}

fieldset {
	font-size : 16px;
	padding: 20px;
	margin: 0 auto; width : 400px;
	text-align: center;
	background: #50bcdf;
	width: 400px;
}

div.box {
	margin: 0 auto;
	width: 400px;
	height: 350px;
	padding: 40px;
	box-sizing: border-box;
	display: none;
	border: 1px solid black;
	border-radius: 30px;
}

#idSearchBox>h3 {
	font-size: 24px;
	color: #6A24FE;
	margin-bottom: 20px;
}

#idSearch-form>input {
	width: 100%;
	height: 48px;
	padding: 0 10px;
	box-sizing: border-box;
	margin-bottom: 16px;
	border-radius: 6px;
	background-color: #F8F8F8;
}

#idSearch-form>input::placeholder {
	color: #D2D2D2;
}

#idSearch-form>input[type="submit"] {
	color: #fff;
	font-size: 16px;
	background-color: #6A24FE;
	margin-top: 20px;
}
#pwSearchBox>h3 {
	font-size: 24px;
	color: #6A24FE;
	margin-bottom: 20px;
}

#pwSearch-form>input {
	width: 100%;
	height: 48px;
	padding: 0 10px;
	box-sizing: border-box;
	margin-bottom: 16px;
	border-radius: 6px;
	background-color: #F8F8F8;
}

#pwSearch-form>input::placeholder {
	color: #D2D2D2;
}

#pwSearch-form>input[type="submit"] {
	color: #fff;
	font-size: 16px;
	background-color: #6A24FE;
	margin-top: 20px;
}
</style>
<jsp:include page="header.jsp"/>
</head>
<body>
<div id="div1">
	<fieldset>
		<input type="radio" name="category" onclick="showDiv(this);"
			id="idSearch"> <label for="idSearch">아이디찾기</label>&nbsp;
		&nbsp; <input type="radio" name="category" onclick="showDiv(this);"
			id="pwSearch"> <label for="pwSearch">패스워드찾기</label>&nbsp;
		&nbsp;
	</fieldset>
	<hr><br><br>
	<div id="idSearchBox" class="box">
		<form method="post" action="idSearch.do" id="idSearch-form">
		 <h3>아이디 생성시 입력한 이메일을 입력하세요</h3><br>
			<input type="text" name="email" placeholder="이메일">
			<input type="submit" value="조회">
		</form>
	</div>
	<div id="pwSearchBox" class="box">
	<form method="post" action="pwSearch.do" id="pwSearch-form">
		 <h3>비밀번호를 찾을 ID를 입력하세요</h3><br>
			<input type="text" name="id" placeholder="아이디">
			<h3>아이디 생성시 입력한 이름를 입력하세요</h3><br>
			<input type="text" name="irum" placeholder="이름">
			<input type="submit" value="조회">
		</form>
	</div>
</div>
	<script>
        function showDiv(element){
            var tag = document.getElementsByClassName("box");

            for(var i=0;tag.length;i++){
                if(element.id+"Box"==tag[i].id){
                    tag[i].style.display = "block";
                } 
                else{
                    tag[i].style.display = "none";
                }
            }
        }
    </script>
    <jsp:include page="mbSearchInfo.jsp"/>
</body>
</html>