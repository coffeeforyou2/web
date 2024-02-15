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
				<img class="article-img-a" src="image/2.jpg">
				<div class="article-content">
					<p class="article-time">지오디마스터피스</p>
					<p>
						<img src="image/egg.png">
						<p1>99% &nbsp;&nbsp;&nbsp;</p1>
						예매률:12.4%
					</p>
					<br>
					<hr>
					<p>
						장르 : 다큐멘터리 / 기본 정보 : 전체관람가, 107분, 한국<br> 개봉 : 2024.01.10
					</p>
					<hr>
					<div>
						<ul class="tab-menu">
							<li class="on"><a title="현재 선택됨" href="movies/detail-view/?midx=87950#menu">주요정보 </a></li>
							<li><a href="movies/detail-view/trailer.aspx?midx=87950#menu">트레일러</a></li>
							<li><a href="movies/detail-view/still-cut.aspx?midx=87950#menu">스틸컷</a></li>
							<li><a href="movies/detail-view/?midx=87950#commentReg">평점/리뷰</a></li>
							<li class="last"><a href="movies/detail-view/show-times.aspx?midx=87950#menu">상영시간표</a></li>
						</ul>
						<a class="link-reservation" href="ticket.jsp">예매하기</a>
					</div>
				</div>
			</div>
			<div class="sect-story-movie">
				<p>
				2023년 11월 12일 KSPO DOME에서 개최된 god's MASTERPIECE  공연 실황 영화. <br>
				'애수', '니가 있어야 할 곳', '보통날', '거짓말', '촛불하나', '길', '하늘색 풍선' 등 수많은 명곡으로 구성된 셋리스트.<br>
				전시와 공연을 결합한 새로운 형태의 구성과 차원이 다른 공연을 선보이며 전석 매진을 기록한<br><br>
				
				역대 최고의 명품 공연 실황 영화.<br>
				god 결성 25주년을 앞둔 멤버들의 진솔한 이야기와 공연 실황을 스크린에서 만날 수 있는 기회!<br><br>
				
				‘god가 완성되는 시간’
				2023 god's MASTERPIECE the Movie COMING SOON!
				
				</p>
			</div>
		</div>
	</div>
	<script >
	$("#sand2").on("click",function(){
		var movieSand = $("body > article:nth-child(5) > div.article-card > div:nth-child(2) > div.article-content > p:nth-child(1)").text();
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