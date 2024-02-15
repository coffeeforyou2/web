<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<style >

body {
    margin: 0px;
    font-family: 'Gowun Dodum', sans-serif;
    box-sizing: border-box;
}

div,
input,
textarea {
    box-sizing: border-box;
}
a{
    text-decoration: none;
    color: black;
}
.container {
    display: block;
    margin-left: auto;
    margin-right: auto;
    width: 100px;
}

.heaader-container {
    display: flex;
    height: 80px;
    align-items: center;
    padding: 10px;
}

.heaader-main {
    margin-left: 25px;
    font-size: 40px !important;
    letter-spacing: 4px;
    font-family: 'Black Han Sans', sans-serif;
}

.-sub {
    margin-left: -20px;
}

.heaader-item {
    margin-right: 25px;
    font-size: 20px;
    cursor: pointer;    
}

.nav-container {
    display: flex;
    height: 40px;
    align-items: center;
    padding: 10px;
    justify-content: center;
    

}
  #nav-item a:hover{color: red;}

.nav-item {
    margin: 60px;
    font-size: 20px;
    cursor: pointer;
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

.main-title {
    color: white;
    font-size: 60px;
    margin-top: 100px;
    text-align: center;
    letter-spacing: 4px;

}

.para-title {
    color: white;
    font-size: 20px;
    letter-spacing: 7px;
    text-align: center;
}


.article-container {
    width: 1000px;
    margin-top: 40px;
    font-size: 27px;
    margin-bottom: 400px;
}


.article-title{
    margin-left: 30px;
}
.article-btn {
     padding: 4px 32px 4px 15px;
    font-size: 14px;
    color: #222;
    line-height: 1.429em;
    background: transparent url(image/b.png) calc(100% - 7px) center/8px 13px scroll no-repeat;
    border: 1px solid #e2e2e2;
    border-radius: 15px;
    box-shadow: 1px 1px 1px 0 rgba(0, 0, 0, 0.05);
}
.article-card{
    text-align: center;
    margin-top: 20px;
}
.article-card-each{
    width: 20%;
    float: left;
}
.article-card-each2{
    width: 25%;
    float: left;
}
.article-img{
    width: 80%;
    border-radius: 10px;
}
.article-img2{
    width: 80%;
    border-radius: 10px;
}
.article-content{
    margin: -20px;
    font-size: 20px;
    
}
.article-time{
margin: -20px;
    font-size: 15px;
}
.article-time2{
margin: -20px;
    font-size: 12px;
}

</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <heaader class="heaader-container">
        <div class="heaader-item heaader-main"><a href="main.html"> <img class="article-img" src="image/logo.png"></a></div>
        <div class="-sub">CULTUREPLEX</div>
        <div style="flex-grow:1"></div>
        <div class="heaader-item"><a href="login.html"> 로그인</a></div>
        <div class="heaader-item"><a href="signup.html">회원가입</a></div>
        <div class="heaader-item"><a href="mypage.html">MY CGV</a></div>

    </heaader>
    <hr />
  
                   
       <div class="article-card">
            <div class="article-card-each">
                <a href="moviedetailedpage1.jsp"><img class="article-img" src="image/1.jpg" ></a>
                <div class="article-content">
                    <p>외계+인 2부</p>
                    <p class="article-time"><img class="egg" src="image/egg.png">
                    <p1>99% &nbsp;&nbsp;&nbsp;</p1>예매율:39.7%</p>
                </div>
            </div>
            <div class="article-card-each">
                <a href="moviedetailedpage2.jsp"> <img class="article-img" src="image/2.jpg"></a>
                <div class="article-content">
                    <p>지오디마스터피스</p>
                    <p class="article-time"><img class="egg"img src="image/egg.png"><p1>99% &nbsp;&nbsp;&nbsp;</p1>예매율:12.4%</p>
                </div>
            </div>
            <div class="article-card-each">
                <a href="moviedetailedpage3.jsp"> <img class="article-img" src="image/3.jpg"></a>
                <div class="article-content">
                    <p>위시</p>
                    <p class="article-time"><img class="egg"img src="image/egg.png"><p1>86% &nbsp;&nbsp;&nbsp;</p1>예매율:12.4%</p>
                </div>
            </div>
            <div class="article-card-each">
                <a href="moviedetailedpage4.jsp"> <img class="article-img" src="image/4.jpg"></a>
                <div class="article-content">
                    <p>노량-죽음의 바다</p>
                    <p class="article-time"><img class="egg"img src="image/egg.png"><p1>99% &nbsp;&nbsp;&nbsp;</p1>예매율:4.5%</p>
                </div>
            </div>
            <div class="article-card-each">
                <a href="moviedetailedpage5.jsp"><img class="article-img" src="image/5.jpg"></a>
                <div class="article-content">
                    <p>서울의 봄</p>
                    <p class="article-time"><img class="egg"img src="image/egg.png"><p1>93% &nbsp;&nbsp;&nbsp;</p1>예매율:4.4%</p>
                </div>
            </div>
            
            

</body>
</html>