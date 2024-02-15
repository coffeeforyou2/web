<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<style>
body {
	margin: 0px;
	font-family: 'Gowun Dodum', sans-serif;
	box-sizing: border-box;
}

div {
	display: block;
	font-family: 'Noto Sans KR', 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum,
		sans-serif;
	font-size: 100%;
	margin: 0;
	padding: 0;
	border: 0;
	vertical-align: baseline;
	word-break: break-all;
}

div, input, textarea {
	box-sizing: border-box;
}

dd {
	font-family: 'Noto Sans KR', 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum,
		sans-serif;
	font-size: 100%;
	margin: 0;
	padding: 0;
	border: 0;
	vertical-align: baseline;
	word-break: break-all;
	display: block;
	margin-inline-start: 40px;
}

a {
	text-decoration: none;
	color: black;
}

strong {
	font-weight: 500;
}

em {
	font-style: normal;
}

main-background {
	width: 100%;
	height: 500px;
	background-image: url(../img/background2.png);
	background-size: 100%;
	background-repeat: no-repeat;
	background-size: cover;
	background-position: center;
	padding: 1px;
	position: relative;
}

#header-container {
	display: flex;
	height: 80px;
	align-items: center;
	padding: 10px;
}

.header-main {
	margin-left: 25px;
	font-size: 40px !important;
	letter-spacing: 4px;
	font-family: 'Black Han Sans', sans-serif;
}

.-sub {
	margin-left: -20px;
}

.header-item {
	margin-right: 25px;
	font-size: 20px;
	cursor: pointer;
}

#contanier {
	width: 100%;
	z-index: 7;
}

.article-main {
	clear: both;
	padding-bottom: 50px;
	position: relative;
	width: 1500px;
	margin: 0 auto;
}

.article-card-each {
	margin-left: 20px;
	padding-top: 20px;
	clear: both;
	zoom: 1;
	'
}

.article-img {
	width: 80%;
	border-radius: 10px;
}

.article-img-a {
	width: 340px;
	height: 400px;
}

.article-content {
	width: 750px; margin-top : -400px;
	margin-left: 400px;
	margin-top: -400px;
}

.article-time {
	font-size: 25px;
}

tab-menu li:first-child a {
	background: #fb4357;
}

.tab-menu li a {
	display: inline-block;
	position: relative;
	height: 39px;
	padding: 0 15px;
	color: #ffffff;
	background-color: red; font-size : 15px;
	font-weight: 500;
	text-align: center;
	line-height: 39px;
	font-size: 15px;
}

li {
	text-align: -webkit-match-parent;
}

.tab-menu li {
	display: inline-block;
	margin-left: -4px;
}

ul {
	font-family: 'Noto Sans KR', 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum,
		sans-serif;
	font-size: 100%;
	margin: 0;
	padding: 0;
	border: 0;
	vertical-align: baseline;
	word-break: break-all;
	display: block;
	margin-block-start: 1em;
	margin-block-end: 1em;
	margin-inline-start: 0px;
	margin-inline-end: 0px;
	padding-inline-start: 40px;
}

ol, ul {
	list-style: none;
}

ul:after {
	content: '';
	clear: both;
	display: block;
}

.link-reservation {
	margin: 37px; display : inline-block;
	position: relative;
	height: 39px;
	padding: 0 15px;
	color: #ffffff;
	background-color: blue;
	font-size: 30px;
	font-weight: 500;
	text-align: center;
	line-height: 39px;
	display: inline-block;
}
.sect-story-movie{
margin-left: 20px;
margin-top: 80px;
}

</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<header id="header-container">
	<div class="header-item header-main">
		<a href="main.html"> <img class="article-img" src="image/logo.png"></a>
	</div>
	<div class="-sub">CULTUREPLEX</div>
	<div style="flex-grow: 1"></div>
	<div class="header-item">
		<a href="login.html"> 로그인</a>
	</div>
	<div class="header-item">
		<a href="signup.html">회원가입</a>
	</div>
	<div class="header-item">
		<a href="mypage.html">MY CGV</a>
	</div>
	</header>

	<hr />
	
	<div id="contanier">
		<div class="article-main">
			<div class="article-card-each">
				<img class="article-img-a" src="image/3.jpg">
				<div class="article-content">
					<p class="article-time">위시</p>
					<p>
						<img src="image/egg.png">
						<p1>86% &nbsp;&nbsp;&nbsp;</p1>
						예매률:12.4%
					</p>
					<br>
					<hr>
					<p>
						감독 : 크리스벅 , 폰 비라선손 / 배우 : 아리아나 데보스 ,  크리스 파인 ,  알란 터딕 <br>
						장르 : 애니메이션 / 기본 정보 : 전체관람가, 95분, 미국<br> 
						개봉 : 2024.01.03
					</p>
					<hr>
					<div>
						<ul class="tab-menu">
							<li class="on"><a title="현재 선택됨" href="movies/detail-view/?midx=87945#menu">주요정보 </a></li>
							<li><a href="movies/detail-view/trailer.aspx?midx=87945#menu">트레일러</a></li>
							<li><a href="movies/detail-view/still-cut.aspx?midx=87945#menu">스틸컷</a></li>
							<li><a href="movies/detail-view/?midx=87945#commentReg">평점/리뷰</a></li>
							<li class="last"><a href="movies/detail-view/show-times.aspx?midx=87945#menu">상영시간표</a></li>
						</ul>
						<a class="link-reservation" href="ticket.jsp">예매하기</a>
					</div>
				</div>
			</div>
			<div class="sect-story-movie">
				<p>
				제81회 골든 글로브 장편 애니메이션상 노미네이트<br>
				<겨울왕국> 시리즈, <모아나>를 잇는 디즈니 100주년 기념작<br><br>
 
				“나 이렇게 소원을 빌어.<br>
				지금보다 더 큰 꿈 꿀 수 있는 우리”<br><br>
 
				소원이 실제로 이루어지는 마법의 왕국 ‘로사스’.<br>
				그 곳에 살고 있는 총명하고 꿈 많은 소녀 ‘아샤’는 마음 속 깊이 사랑하는 ‘로사스’에 도움이 되기 위해<br>
				모두의 존경을 받는 ‘매그니피코 왕’을 찾아갔다가 그의 숨겨진 계획을 알게 된다.<br><br>
 
				혼란에 빠진 ‘아샤’의 간절한 부름에 무한한 에너지를 지닌 특별한 ‘별’이 하늘에서 내려오고<br>
				귀여운 염소 친구 ‘발렌티노’와 함께 이들은 진심 어린 소원과 용기가 얼마나 놀라운 일들을 만들어낼 수 있는지 증명하기 위해 ‘매그니피코 왕’에 맞서기로 결심한다.<br><br>
 
				그러나 ‘매그니피코 왕’은 자신의 힘을 이용해 ‘아샤’와 친구들을 위협하게 되고<br>
				이들은 큰 난관에 부딪히게 되는데...<br><br>
 
				2024년 새해, <겨울왕국> 시리즈 제작진이 선사하는<br>
				마법 같은 이야기가 찾아옵니다.<br>
				</p>
			</div>
		</div>
	</div>
	<script>
	$("#sand3").on("click",function(){
		var movieSand = $("body > article:nth-child(5) > div.article-card > div:nth-child(3) > div.article-content > p:nth-child(1)").text();
		$('.mslc').val(movieSand);
		$("#form-mslc").submit();
	});
	$(".tab-menu>li").on("click",function(){
		event.preventDefault();
		var href = $(this).find("a").attr("href");
		var finalhref = "http://www.cgv.co.kr/"+href;
		window.location.href = finalhref;
	});
	</script>
</body>
</html>