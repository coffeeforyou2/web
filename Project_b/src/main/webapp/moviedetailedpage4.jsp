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
				<img class="article-img-a" src="image/4.jpg">
				<div class="article-content">
					<p class="article-time">노량-죽음의 바다</p>
					<p>
						<img src="image/egg.png">
						<p1>99% &nbsp;&nbsp;&nbsp;</p1>
						예매률:4.5%
					</p>
					<br>
					<hr>
					<p>
						감독 : 김한민 / 프로듀서 : 이대희 , 이나라  / 배우 :  
						김윤석 ,  백윤식 ,  정재영 ,  허준호 ,  김성규 ,  이규형 ,  이무생 ,  최덕문 ,  안보현 ,  박명훈 ,  박훈 ,  문정희 <br>
						장르 : 액션, 드라마 / 기본 정보 : 12세이상관람가, 153분, 한국<br> 
						개봉 : 2023.12.20
					</p>
					<hr>
					<div>
						<ul class="tab-menu">
							<li class="on"><a title="현재 선택됨" href="movies/detail-view/?midx=87907#menu">주요정보 </a></li>
							<li><a href="movies/detail-view/trailer.aspx?midx=87907#menu">트레일러</a></li>
							<li><a href="movies/detail-view/still-cut.aspx?midx=87907#menu">스틸컷</a></li>
							<li><a href="movies/detail-view/?midx=87907#commentReg">평점/리뷰</a></li>
							<li class="last"><a href="movies/detail-view/show-times.aspx?midx=87907#menu">상영시간표</a></li>
						</ul>
						<a class="link-reservation" href="ticket.jsp">예매하기</a>
					</div>
				</div>
			</div>
			<div class="sect-story-movie">
				<p>
				임진왜란 발발로부터 7년이 지난 1598년 12월.<br>
				순신(김윤석)은 왜군의 수장이던 도요토미 히데요시가 갑작스럽게 사망한 뒤 왜군들이 조선에서 황급히 퇴각하려 한다는 것을 알게 된다.<br>
				“절대 이렇게 전쟁을 끝내서는 안 된다”<br>
				왜군을 완벽하게 섬멸하는 것이 이 전쟁을 올바르게 끝나는 것이라 생각한 이순신은<br>
				명나라와 조명연합함대를 꾸려 왜군의 퇴각로를 막고 적들을 섬멸하기로 결심한다.<br>
				하지만 왜군의 뇌물 공세에 넘어간 명나라 도독 진린(정재영)은 왜군에게 퇴로를 열어주려 하고,<br>
				설상가상으로 왜군 수장인 시마즈(백윤식)의 살마군까지 왜군의 퇴각을 돕기 위해 노량으로 향하는데…<br>
				2023년 12월, 모두를 압도할 최후의 전투가 시작된다!<br>
				</p>
			</div>
		</div>
	</div>
	<script>
	$("#sand4").on("click",function(){
		var movieSand = $("body > article:nth-child(5) > div.article-card > div:nth-child(4) > div.article-content > p:nth-child(1)").text();
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