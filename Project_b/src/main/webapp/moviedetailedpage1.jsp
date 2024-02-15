<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
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
	padding-bottom:80px;
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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>

	<jsp:include page="header.jsp" />
	
	<div id="contanier">
		<div class="article-main">
			<div class="article-card-each">
				<img class="article-img-a" src="image/1.jpg">
				<div class="article-content">
					<p class="article-time">외계+인 2부</p>
					<p>
						<img src="image/egg.png">
						<p1>99% &nbsp;&nbsp;&nbsp;</p1>
						예매률:39.7%
					</p>
					<br>
					<hr>
					<p>
						감독 : 최동훈 / 배우 : 류준열 , 김태리 , 김우빈 , 이하늬 , 염정아 , 조우진 , 김의성 , 진선규<br> 
						장르 : / 기본 정보 : 12세이상관람가, 122분, 한국<br> 
						개봉 : 2024.01.10
					</p>
					<hr>
					<div>
						<ul class="tab-menu">
							<li class="on"><a title="현재 선택됨" href="movies/detail-view/?midx=87717#menu">주요정보 </a></li>
							<li><a href="movies/detail-view/trailer.aspx?midx=87717#menu">트레일러</a></li>
							<li><a href="movies/detail-view/still-cut.aspx?midx=87717#menu">스틸컷</a></li>
							<li><a href="movies/detail-view/?midx=87717#commentReg">평점/리뷰</a></li>
							<li class="last"><a href="movies/detail-view/show-times.aspx?midx=87717#menu">상영시간표</a></li>
						</ul>
						<a class="link-reservation" href="ticket.jsp">예매하기</a>
					</div>
				</div>
			</div>
			<div class="sect-story-movie">
				반드시 돌아가야 한다. 모두를 지키기 위해<br> <br> 
				
				인간의 몸속에 가둬진 외계인 죄수의 탈옥을 막으려다 과거에 갇혀버린 ‘이안’(김태리)은<br> 
				우여곡절 끝에 시간의 문을 열 수 있는 ‘신검’을 되찾고, ‘썬더’(김우빈)를 찾아 자신이 떠나온 미래로 돌아가려고 한다.<br>
				한편 이안을 위기의 순간마다 도와주는 ‘무륵’(류준열)은 자신의 몸속에 느껴지는 이상한 존재에 혼란을 느낀다.<br>
				 그런 ‘무륵’ 속에 요괴가 있다고 의심하는 삼각산 두 신선 ‘흑설’(염정아)과 ‘청운’(조우진),<br> 
				 소문 속 신검을 빼앗아 눈을 뜨려는 맹인 검객 ‘능파’(진선규),<br> 신검을 차지하려는
				‘자장’(김의성)까지 ‘이안’과 ‘무륵’을 쫓기 시작한다.<br> <br> 
				한편 현대에서는,<br> 
				탈옥한 외계인 죄수 ‘설계자’가 폭발 시킨 외계물질 ‘하바’로 인해 수많은 사람들이 죽고,<br> 
				우연히 외계인을 목격한 ‘민개인’(이하늬)은 이 사건을 파헤치기 시작한다.<br> <br>
				 
				모든 하바가 폭발하기까지 남은 시간은 단 48분,<br> 
				시간의 문을 열고 무륵, 썬더, 두 신선과 함께 현재로 돌아온 이안.<br>
				 마침내 모든 비밀이 밝혀진다!
			</div>
		</div>
	</div>
	
	<script >
	$("#sand1").on("click",function(){
		var movieSand = $("body > article:nth-child(5) > div.article-card > div:nth-child(1) > div.article-content > p:nth-child(1)").text();
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