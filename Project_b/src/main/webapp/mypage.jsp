<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
.place0 p{
  font-size: 15px;
  font-family: 'Noto Sans KR',sans-serif;
  color: #666;
}

.place1{
  outline: 2px solid #9F9F9F;
margin-top: 3.5px;
  width: 100px;
  height: 41px;
  background-color:#f8f8f8;
}
.place2{
  outline: 2px solid  #9F9F9F;
margin-top: 3.5px;
  width: 100px;
  height: 41px;
  background-color: #f8f8f8;

}
.place3{
  outline: 2px solid  #9F9F9F;
  margin-top: 3.5px;
  width: 100px;
  height: 41px;
  background-color: #f8f8f8;
  
}
.place4{
  outline: 2px solid   #9F9F9F;
 margin-top: 3.5px;
  width: 100px;
  height: 41px;
  background-color: #f8f8f8;
  
}
.place5{
  outline: 2px solid  #9F9F9F;
  margin-top: 3.5px;
  width: 100px;
  height: 41px;
  background-color: #f8f8f8;

}
.place6{
  outline: 2px solid  #9F9F9F;
  margin-top: 3.5px;
  width: 100px;
  height: 41px;
  background-color:  rgb(37, 37, 37);
</style>

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

  
		<div class="container">
			<!-- MIDDLE -->
			<div class="middle">

				<div class="info">
					<div class="user">
						<a href="###"><p style="float: left; font-size: 28px;">${data.mbIrum }</p></a>
						<p style="float: left; padding-left: 30px;">${data.mbId }</p>
					</div>
					<div>
						<form action="myticketList.do" id="ticketIdGO" method="post" hidden="hidden">
						<input type="text" name="idCheck" value="${data.mbId }"> 
						</form>
						
					</div>
				</div>
				<div class="div-list">
					<li><h2>MY CGV HOME</h2></li> <a href="###"></a><li><h2>나의예매내역
							</h2></li>
						<p>
							<img id="dot" src="image/dot point.png">신용카드 영수증 출력
						</p> <a href="###"></a>
							<li><h2>회원정보</h2></li>
								<p>
									<img id="dot" src="image/dot point.png">개인정보변경
								</p> <a href="mbEdit.jsp"></a>
									<p>
										<img id="dot" src="image/dot point.png">회원정보설정
									</p> <!--링크 미설정 목록-->
									<li><h2>CJ ONE POINT</h2></li>
									<p>
										<img id="dot" src="image/dot point.png"> 적립/사용내역
									</p>
									<p>
										<img id="dot" src="image/dot point.png">CGV 이용내역
									</p>

									<li><h2>이벤트 참여내역</h2></li>
									<li><h2>기프트샵</h2></li>
									<p>
										<img id="dot" src="image/dot point.png">내 기프티콘
									</p>
									<p id="ticketListMenu">
										<img id="dot" src="image/dot point.png">결제 내역
									</p>
									<li><h2>프로필 관리</h2></li> </span>
									<li><h2>나의 문의 내용</h2></li>
									<p>
										<img id="dot" src="image/dot point.png">1:1 문의
									</p>
									<p>
										<img id="dot" src="image/dot point.png">분실문 문의
									</p>
				</div>
				<div class="bottom">
					<div class="egg">
						<a href="#!#">	<img src="image/box1.png"></a>
						<h3>기대되는 영화</h3>
						<span>보고 싶은 영화들을 미리 <br>담아두고 싶다면?
						</span>
					</div>
					<div class="watched">
					<a href="##@">	<img src="image/box2.png"></a>
						<h3>내가 본 영화</h3>
						<span>관람한 영화들을 한번에 <br>모아 보고 싶다면?
						</span>

					</div>
					<div class="mvdiary">
						<a href="@##"><img src="image/box3.png"></a>
						<h3>내가 쓴 평점</h3>
						<span>관람 후 내 감상평을 적어 <br>추억하고 싶다면?
						</span>

					</div>
				</div>
				 <div class="place">

        <div class="place1"><a href="MVnav.jsp" onclick="window.open('MVnav.jsp','new','scrollbars=yes,resizable=no width=600 height=400, left=400,top=400');return false"><p>1.죽전</p></a></div>
        <div class="place2"><a href="MVnav.jsp" onclick="window.open('MVnav2.jsp','new','scrollbars=yes,resizable=no width=600 height=400, left=400,top=400');return false"><p>2.오리</p></a></div>
        <div class="place3"><a href="MVnav.jsp" onclick="window.open('MVnav3.jsp','new','scrollbars=yes,resizable=no width=600 height=400, left=400,top=400');return false"><p>3.동탄</p></a></div>
      </div>

    
        <div class="place0">

        <div class="place4"><a href="MVnav.jsp" onclick="window.open('MVnav4.jsp','new','scrollbars=yes,resizable=no width=600 height=400, left=400,top=400');return false"><p>4.강남</p></a></div>
        <div class="place5"><a href="MVnav.jsp" onclick="window.open('MVnav5.jsp','new','scrollbars=yes,resizable=no width=600 height=400, left=400,top=400');return false"><p>5.건대</p></a></div>
        <div class="place6"><p style="font-size: 10px;
  font-family: 'Noto Sans KR',sans-serif;
  color: rgb(192, 192, 192);">6.자주가는CGV<br>설정하기</p></div>
     
    </div>

				</div>
			</div>
		</div>
	</div>

	</div>
	<script>
	
	
	$("#ticketListMenu").on("click",function(){
	
		$("#ticketIdGO").submit();
	});
	
	
		
	</script>
</body>
</html>