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

	<jsp:include page="header.jsp" />
	
	<div id="contanier">
		<div class="article-main">
			<div class="article-card-each">
				<img class="article-img-a" src="image/5.jpg">
				<div class="article-content">
					<p class="article-time">서울의 봄</p>
					<p>
						<img src="image/egg.png">
						<p1>93% &nbsp;&nbsp;&nbsp;</p1>
						예매률:4.4%
					</p>
					<br>
					<hr>
					<p>
						감독 :  김성수    / 배우 :  황정민 ,  정우성 ,  이성민 ,  박해준 ,  김성균<br>
						장르 : 드라마 / 기본 정보 : 12세이상관람가, 141분, 한국<br> 
						개봉 : 2023.11.22
					</p>
					<hr>
					<div>
						<ul class="tab-menu">
							<li class="on"><a title="현재 선택됨" href="movies/detail-view/?midx=87554#menu">주요정보 </a></li>
							<li><a href="movies/detail-view/trailer.aspx?midx=87554#menu">트레일러</a></li>
							<li><a href="movies/detail-view/still-cut.aspx?midx=87554#menu">스틸컷</a></li>
							<li><a href="movies/detail-view/?midx=87554#commentReg">평점/리뷰</a></li>
							<li class="last"><a href="movies/detail-view/show-times.aspx?midx=87554#menu">상영시간표</a></li>
						</ul>
						<a class="link-reservation" href="ticket.jsp">예매하기</a>
					</div>
				</div>
			</div>
			<div class="sect-story-movie">
				<p>
					1979년 12월 12일, 수도 서울 군사반란 발생<br>
					그날, 대한민국의 운명이 바뀌었다<br><br>

					대한민국을 뒤흔든 10월 26일 이후,<br>
					서울에 새로운 바람이 불어온 것도 잠시<br>
					12월 12일, 보안사령관 전두광이 반란을 일으키고<br>
					군 내 사조직을 총동원하여 최전선의 전방부대까지 서울로 불러들인다.<br><br>
 
					권력에 눈이 먼 전두광의 반란군과<br>
					이에 맞선 수도경비사령관 이태신을 비롯한 진압군 사이,<br>
					일촉즉발의 9시간이 흘러가는데…<br><br>
  
					목숨을 건 두 세력의 팽팽한 대립<br>
					오늘 밤, 대한민국 수도에서 가장 치열한 전쟁이 펼쳐진다!<br>
				</p>
			</div>
		</div>
	</div>
	<script>
	$("#sand5").on("click",function(){
		var movieSand = $("body > article:nth-child(5) > div.article-card > div:nth-child(5) > div.article-content > p:nth-child(1)").text();
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