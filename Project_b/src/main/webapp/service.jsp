<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.div-list1 {
	width: 204px;
	height: 630px;	
	
	  list-style-type: none;
  text-align: left;
  font-size: small;

}

.div-list1 p {
	padding-left: 20px;
	font-size: 15px;
	font-family: 'Noto Sans KR', sans-serif;
	color: #666;
}

.div-list1 li {
	padding-bottom: 7px;
	padding-top: 7px;
	padding-left: 15px;
	font-family: 'Noto Sans KR', sans-serif;
	list-style-type: none;
}

.div-list1 li:hover {
	background-color: red;
	color: white;
	border-radius: 5px;
}

.div-list1 p:hover {
	opacity: 100%;
	color: red;
	border-radius: 5px;
	
}

div.a1{
float:left;
width:200px;
height:300px;
  background-color: rgb(224, 217, 217);
 margin-left:30px;
 margin-top:10px;
  display: block;
    text-align: center;
    border-right: 1px solid #dedace;

    font-size: 16px;
    color: #222;
}
div.a2{

width:200px;
height:300px;
     background-color: aliceblue;
  margin-left:30px;
   margin-top:10px;
    display: block;
    text-align: center;
    border-right: 1px solid #dedace;
}
.p1{
    overflow: hidden;
    display: block;
    width: 100px;
    font-size: 12px;
        color: white;
    letter-spacing: -0.042em;
    line-height: 23px;
    text-align: center;
    background-color: #666;
    border-radius: 4px;
    margin-top: 10%;
    margin-left: 25%;
}
.ap{   
margin-top: 10%;
}
.bp{
margin-top: 5%;
 font-size: 10px;
}
.imgg{
width:70px;
height:55px;
margin-top:40%;
}
</style>
</head>
<body>
<jsp:include page="header.jsp" />
	<div style=" width: 1000px; margin: 0 auto; ">
<div class="div-list1" style="float: left;">
		<li><h2>MY CGV HOME</h2></li> <a href="###"><li><h2>나의예매내역</h2></li>
			<p>신용카드 영수증 출력</p> <a href="###">
				<li><h2>회원정보</h2></li> <a href="mbEdit.jsp">
					<p>개인정보변경</p> <a href="mbEdit.jsp">
						<p>회원정보설정</p> <!--링크 미설정 목록-->
						<li><h2>CJ ONE POINT</h2></li>
						<p>적립/사용내역</p>
						<p>CGV 이용내역</p>

						<li><h2>이벤트 참여내역</h2></li>
						<li><h2>기프트샵</h2></li>
						<p>내 기프티콘</p>
						<p>결제 내역</p>
						<li><h2>프로필 관리</h2></li> </span>
						<li><h2>나의 문의 내용</h2></li>
						<p>1:1 문의</p>
						<p>분실문 문의</p>
	</div>

<div class="a1"><img src="image/sev1.png" class="imgg"><p class="ap">상담톡이용</p><p class="bp">상담 톡을 이용해보세요.</p><a href="###" target="_blank" class="p1">상담톡연결하기</a></div>
<div class="a1"><img src="image/sev2.png"class="imgg"><p class="ap">게시판문의</p><p class="bp">24시간 365일 언제든지 문의주세요.</p><a href="###" target="_blank" class="p1">문의하기</a></div>
<div class="a1"><img src="image/sev3.png"class="imgg"><p class="ap">상담내역확인</p><p class="bp">문의하신 내용을 확인하실 수 있습니다.</p><a href="###" target="_blank" class="p1">문의내역 조회</a></div>
<div class="a1"><img src="image/sev4.png"class="imgg"><p class="ap">아이디/비밀번호찾기</p><a href="###" target="_blank" class="p1">문의하기</a></div>
<div class="a1"><img src="image/sev5.png"class="imgg"><p class="ap">예매내역</p><a href="###" target="_blank" class="p1">확인하기</a></div>
<div class="a1"><img src="image/loginMember.png"class="imgg"><p class="ap">나의정보</p><a href="###" target="_blank" class="p1">확인하기</a></div>
</div>

	
</body>
</html>