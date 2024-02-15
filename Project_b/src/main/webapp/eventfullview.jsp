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


.heaader-container {
    display: flex;
    height: 80px;
    align-items: center;
    padding: 10px;
    padding-bottom:80px;
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
    margin: 16px;
    font-size: 20px;
    
}

.article-time2{
margin: -20px;
    font-size: 12px;
}
.p{
pading-top:80px}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <jsp:include page="header.jsp" />
  
                   
       <div class="article-card">
            <div class="article-card-each">
                <a href="eventdetailedpage1.jsp"><img class="article-img" src="image/E1.jpg" ></a>
                <div class="article-content">
                    <p>4DX 리미티드포스터</p>
                    <p>2023.12.17~2024.01.09</p>
                </div>
            </div>
            <div class="article-card-each">
                <a href="eventdetailedpage2.jsp"> <img class="article-img" src="image/E2.png"></a>
                <div class="article-content">
                    <p>전국 X 자랑</p>
                    <p>2023.12.08~2024.01.12</p>
                </div>
            </div>
            <div class="article-card-each">
                <a href="eventdetailedpage3.jsp"> <img class="article-img" src="image/E3.jpg"></a>
                <div class="article-content">
                    <p>이모티콘 이벤트</p>
                    <p>2023.12.21~2024.01.14</p>
                </div>
            </div>
            <div class="article-card-each">
                <a href="eventdetailedpage4.jsp"> <img class="article-img" src="image/E4.jpg"></a>
                <div class="article-content">
                    <p>4DX 스페셜굿즈</p>
                    <p>2023.12.29~2024.01.16</p>
                </div>
            </div>
           </div>

</body>
</html>