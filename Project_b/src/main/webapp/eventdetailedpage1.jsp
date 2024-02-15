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
	line-height: 1.2;
    color: #666;
    font-weight: 400;
}

div {
	font-family: 'Noto Sans KR', 'CJONLYONENEW', '맑은 고딕', '돋움', Dotum, sans-serif;
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

.article-img {
	width: 80%;
	border-radius: 10px;
}

#contaniner {
	position: relative;
	width: 100%;
	z-index: 7;
}

.tbl-viw-head {
	overflow: hidden;
	position: relative;
	padding: 25px 10px 0;
	line-height: 42px;
	width: 980px;
	margin: 0 auto;
}

.tbl-viw-head:before {
	content: '';
	clear: both;
	display: block;
	width: 100%;
	height: 42px;
	position: absolute;
	left: 0;
	bottom: 0;
	background-color: #f8f8f8;
	border-top: 1px solid #b8b6aa;
	border-bottom: 1px solid #d6d4ca;
	z-index: 1;
}

.tbl-viw-head h3 {
	float: left;
	position: relative;
	background: none;
	margin: 0;
	text-align: justify;
	z-index: 2;
}

.tbl-viw-head h3 em {
	margin-right: 8px;
}

.txt-lightblue {
	color: #2275a4 !important;
}

.tbl-viw-head .date {
	float: right;
	position: relative;
	line-height: 42px;
	z-index: 3;
}
.dir-prev {
	height: 40px;
    padding-bottom: 5px;
    border-bottom: 1px solid #CECCC1;
    width: 980px;
	margin: 8px auto;
    
}
.dir-prev a {
    float: right;
    font-weight: 450;
    font-size: 25px;
}

.bigimage {
	text-align: center;
	margin-top: 20px;
	
}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<jsp:include page="header.jsp" />

	<div id="contanier">
		<div class="tbl-viw-head">
			<h3>
				<em class="txt-lightblue">스페셜이벤트</em>4DX 리미티드포스터
			</h3>
			<em class="date"><span>기간: </span>2023.12.17~2024.01.09</em>
		</div>
	
		<div class="bigimage">
			<img class="bigimage-1" src="image/bigE1.jpg">
		</div>
		<div class="tbl-viw-nav">
    		<div class="dir-prev">
        		<a href="eventfullview.jsp">목록</a>
   			 </div>
		</div>
	</div>

</body>
</html>