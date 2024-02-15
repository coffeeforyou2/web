<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<style>
div,
input,
textarea {
    box-sizing: border-box;
}
.all{
  width: 100%;
  height: 100%;
}
a{
    text-decoration: none;
    color: black;
}
        *{
  margin: 0px;
  padding: 0px;

}
.container{
  width: 1000px;
  margin: auto;
  margin-top: 10px;
  margin-left: 30%;
}
.container div{
  
  display: table;
}

.middle{
  margin-top: 20px;
  width: 1000px;
  height: 500px;
  position: relative;
}
.info{
  position: absolute;
  top: 0px;
  width: 800px;
  height: 400px;
  background-image: url(image/profile.png);
  background-size: 100%;
  z-index: -999;
}
.bg{background-color: #f8f8f8;}

.middle-right{
  position: absolute;
  top: 0px;
  left: 620px;
  width: 380px;
  height: 500px;
}


.div-list{
  width: 204px;
  height: 630px;
  position: static;
  margin-top: 0%;
  margin-left: -20%;
  list-style-type: none;
  text-align: left;
  font-size: small;
}
.div-list p{
  padding-left: 20px;
  font-size: 15px;
  font-family: 'Noto Sans KR',sans-serif;
  color: #666;
}
.div-list li{
  padding-bottom: 7px;
  padding-top: 7px;
  padding-left: 15px;
  font-family: 'Noto Sans KR',sans-serif;
  
}



.myinfo{
  margin-left: 50px;
  margin-top: -100px;

}
.div-list li:hover{
  background-color: red;
  color: white;
  border-radius: 5px;
}
.div-list p:hover{
  opacity: 100%;
  color: red;
  border-radius: 5px;
}

.heaader-container {
    display: flex;
    height: 80px;
    align-items: center;
    padding: 10px;
    width: 70%;
    margin: 0 auto;
}

.heaader-main {
    margin-left: 25px;
    font-size: 40px !important;
    letter-spacing: 4px;
    font-family: 'Black Han Sans', sans-serif;
}

.sub {
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
  .nav-item a:hover{color: red;}

.nav-item {
    margin: 60px;
    font-size: 20px;
    cursor: pointer;
    font-weight: bold;
}
.article-img{
    width: 70%;
    border-radius: 10px;
    opacity: 1;
	-webkit-transition: .5s ease-in-out;
	transition: .5s ease-in-out;
    position: relative;
}
#dot{
  display: none;}
  .Pimage {
            position: relative;
            display: inline-block;
            width: 160px;
            height: 160px;
            overflow: hidden;
            border-radius: 50%;
            margin-left: 14%;
           
        }
        .bottom{
margin-top: -22%;
  outline: 1px solid #9F9F9F;
  width: 811px;
  height: 140px;
  background-color: #f8f8f8;
  color: black;
  text-align: center;
}
.egg{
  float: left;
  padding-left: 50px;
  
  
}
.watched{
  float: left;
  padding-left: 80px;
 
}
.mvdiary{
  float: left;
  padding-left: 80px;
 
}
.user{background-color: red;
margin-top: 5%;
margin-left: 22%;
width: 600px;
background-color: #f8f8f8;
}
.place{
  position: absolute;
  top: 34.4%;
  left: 57.3%;
}

.place0{
  position: absolute;
  top: 34.4%;
  left: 67.8%;
}
.place p{
  font-size: 15px;
  font-family: 'Noto Sans KR',sans-serif;
  color: #666;
  
}


</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

 <header class="heaader-container">
        <div class="heaader-item heaader-main"><a href="main.jsp"> <img class="article-img" src="image/logo.png"></a></div>
        <div class="sub">CULTUREPLEX</div>
        <div style="flex-grow:1"></div>
        
        <c:choose> 
        <c:when test="${sessionScope.data.mbId!=null }">
         <div class="heaader-item"><a href="logout.do"><img src="image/loginPassword.png" width="36" height="36" >로그아웃</a></div>
        <div class="heaader-item"><a href="mypage.jsp"><img src="image/loginMember.png" width="36" height="36" >MY CGV</a></div>
         <div class="heaader-item"><a href="###"><img src="image/loginCustomer.png" width="36" height="36" >고객센터</a></div>
        </c:when>
        <c:otherwise>
         <div class="heaader-item"><a href="login.jsp"><img src="image/loginPassword.png" width="36" height="36" > 로그인</a></div>
        <div class="heaader-item"><a href="signup.jsp"><img src="image/loginJoin.png" width="36" height="36" >회원가입</a></div>
        <div class="heaader-item"><a href="mypage.jsp"><img src="image/loginMember.png" width="36" height="36" >MY CGV</a></div>
         <div class="heaader-item"><a href="###"><img src="image/loginCustomer.png" width="36" height="36" >고객센터</a></div>
        </c:otherwise>
        </c:choose>
       
       

    </header>
    <hr />
    <nav class="nav-container">
        <div class="nav-item"><a href="mvList.do">영화</a></div>
        <div class="nav-item"><a href="CGVName.html">극장</a></div>
        <div class="nav-item"><a href="ticket.jsp">예매</a></div>
        <div class="nav-item"><a href="mvSearch.jsp">검색</a></div>
    </nav>
    
</body>
</html>