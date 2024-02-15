<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<!-- 특별관부분 -->
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
   <script>
    $(function(){
      $("ul .theater1").mouseenter(function(){
        $("#specialHall_content_left_image").attr("src","image/specialHallLeftImage1.png")
      })
      $("ul .theater2").mouseenter(function(){
        $("#specialHall_content_left_image").attr("src","image/specialHallLeftImage2.png")
      })
      $("ul .theater3").mouseenter(function(){
        $("#specialHall_content_left_image").attr("src","image/specialHallLeftImage3.png")
      })
      $("ul .theater4").mouseenter(function(){
        $("#specialHall_content_left_image").attr("src","image/specialHallLeftImage4.png")
      })
    });
   </script>
   <style>
      #specialHall {
         width: 1000px;
         margin: 0px auto;
      }
      .specialHall_title_wrap {
         width: 100%;
         display: flex;
         flex-direction: row;
         justify-content: space-between;
         align-items: end;
      }
      .specialHall_content {
         width: 1000px;
         height: 250px;
         display: flex;
         justify-content: space-between;
      }
      .specialHall_content_left_image {
         width: 550px;
         height: 250px;
      }
      .specialHall_content_right_list {
         width: 450px;
         height: 270px;
      }
      .specialHall_content_left_image > img {
         width: 550px;
      }
      .specialHall_content > ul {
         display: flex;
         flex-direction: column;
         justify-content: space-between;
         list-style: none;
      }
      .specialHall_content > ul > li > a {
         display: flex;
         justify-content: space-between;
         padding: 10px;
         text-decoration: none;
      }
      .specialHall_content > ul > li > a > .specialHall_items {
         font-size: 20px;
      }
      .specialHall_content > ul > li:hover {
         border: 3px solid black;
         border-radius: 7px;
      }
      .specialHall_hashTag {
         font-size: 13px;
      }
      .specialHall_content > ul > li > strong {
         font-size: 18px;
      }
   </style>
<!-- 특별관부분 -->



	<style>
	
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
    
position: relative;


 /* 16:9 화면비율 */
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
}



.main-background {
    width: 100%;
    height: 500px;
    background-size: 100%;
    background-repeat: no-repeat;
    background-size: cover;
    background-position: center;
    padding: 1px;
 
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
    margin-bottom: 350px;
   
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
    opacity: 1;
	-webkit-transition: .5s ease-in-out;
	transition: .5s ease-in-out;
    position: relative;
}
.article-img:hover{
	opacity: .5;
	
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



.article-2-img{
    float: left;
    width: 50%;
    margin-top: 20px;
    margin-left: 20px;
}

.float-l {
    font-size: 20px;
    float: left;
}
.w-40-r {
    font-size: 20px;
    float: right;
}

.img-style{
    width:80%; 
    border-radius: 20px;
}
.img-style2{
    width:50%; 
    border-radius: 20px;
    float: left;
}

.form-background {
    padding: 20px;
}
.form-white {
    background-color: white;
    padding: 30px;
    width: 80%;
    margin: auto;
}
.form-input {
    width: 100%;
    padding: 10px;
    font-size: 20px;
    border: 1px solid black;
    border-radius: 5px;
}

.w-50 {
    width: 50%;
    float: left;
    padding: 10px;
}
.w-100 {
    width: 100%;
    padding: 10px;
}
.form-long {
    height: 50%;
    font-size: 17px;
}
.send-button {
    width: 30%;
    padding: 10px;
    display: block;
    margin-left: auto;
    border: 1px solid black;
    border-radius: 5px;
}


.btn-area {
    margin-top: 30px;
}
.btn-area button {
    width: 100%;
    height: 50px;
    background: #153243;
    background: black;
    color: white;
    border-radius: 25px;
    border: none;
    font-size: 20px;
    cursor: pointer;
}
.detail-body {
    margin-top: 25px;
}
.info-box {
    width: 40%;
    height: 800px;
    padding: 25px;
    float: left;
}
.info-box img {
    width: 70%;
}
.detail-end {
    padding: 15px;
    clear: both;
}
.video-back{
    background-color: black;
    
}
.heaader{
            width: 65%;
            margin: 0 auto;
            margin: 0,70px,70px,0;
}
.specialHall{
	font-size: 28px;
  text-align: justify;
text-align-last: left;
-moz-text-align-last: left; 
    padding: 19px 15px 19px 19px;

}

     .special2{
	    padding: 2px 7px;
    font-size: 14px;
    color: #666;
    line-height: 1.429em;
    background-color: #f6f6f6;
    border-radius: 5px;
}
.egg{
	width: 12px;
	height: 12px;
	
}

.article-card-each:hover .overlay-text {
            display: block;
        }
       .article-card-each:hover .overlay-text2 {
            display: block;
        }
        .article-card-each:hover .overlay-text3 {
            display: block;
        }
        .article-card-each:hover .overlay-text4 {
            display: block;
        }
        .article-card-each:hover .overlay-text5 {
            display: block;
        }
        .overlay-text {
            display: none;
            position: absolute;
            background-image: linear-gradient( white 50%, red 50%);
            opacity: 80%;
            padding: 10px;
            font-size: 16px;
            text-align: center;
            border-radius: 20px;
            z-index: 999;
            color: gray;
            top: 120px;
            right: 86%;
        }
        .overlay-text2{
            display: none;
            position: absolute;
            background-image: linear-gradient( white 50%, red 50%);
            opacity: 80%;
            padding: 10px;
            font-size: 16px;
            text-align: center;
            border-radius: 20px;
            z-index: 999;
            color: gray;
            top: 120px;
            right: 66%;
        }
        .overlay-text3{
            display: none;
            position: absolute;
            background-image: linear-gradient( white 50%, red 50%);
            opacity: 80%;
            padding: 10px;
            font-size: 16px;
            text-align: center;
            border-radius: 20px;
            z-index: 999;
            color: gray;
            top: 120px;
            right: 46%;
        }
        .overlay-text4{
            display: none;
            position: absolute;
            background-image: linear-gradient( white 50%, red 50%);
            opacity: 80%;
            padding: 10px;
            font-size: 16px;
            text-align: center;
            border-radius: 20px;
            z-index: 999;
            color: gray;
            top: 120px;
            right: 26%;
        }
        .overlay-text5{
            display: none;
            position: absolute;
            background-image: linear-gradient( white 50%, red 50%);
            opacity: 80%;
            padding: 10px;
            font-size: 16px;
            text-align: center;
            border-radius: 20px;
            z-index: 999;
            color: gray;
            top: 120px;
            right: 6%;
        }
      

</style>
    <meta charset="UTF-8">
  
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
         <div  class="heaader-item"><a href="###"><img src="image/loginCustomer.png" width="36" height="36" >고객센터</a></div>
        </c:otherwise>
        </c:choose>
    </header>
    
    <hr />
    
    <nav class="nav-container">
        <div class="nav-item"><a href="mvList.do">영화</a></div>
        <div class="nav-item"><a href="CGVName.jsp">극장</a></div>
        <div class="nav-item"><a href="ticket.jsp">예매</a></div>
        <div class="nav-item"><a href="mvSearch.jsp">검색</a></div>
    </nav>

   
                    <div class="video-back" style="text-align: center">       
                    <video autoplay="" muted="" loop>  
                        <source src="https://adimg.cgv.co.kr/images/202312/Alienoid/0102_Alienoid_1080x608_PC.mp4" type="video/mp4">
                    </video>
                </div>
    

    <article class="container article-container">
        <div class="article-title">
            현재 상영 영화 목록
              <button class="article-btn"><a href="mvList.do">전체보기</a></button>
        </div>
        <div class="article-card">
            <div class="article-card-each">
                <div class="image-container">
                    <img class="article-img" src="image/1.jpg" alt="Image Description">
                    <div class="overlay-text">
                        <p id="sand1">예매하기</p>
                        <p><a href="moviedetailedpage1.jsp">상세정보</a></p>
                    </div>
                </div>
                <div class="article-content">
                    <p>외계+인 2부</p>
                    <p class="article-time"><img class="egg" src="image/egg.png"><p1>99% </p1>예매율:39.7%</p>
                </div>
            </div>
            <div class="article-card-each">
                <div class="image-container">
                <img class="article-img" src="image/2.jpg">
                <div class="overlay-text2">
                    <p id="sand2">예매하기</p>
                    <p><a href="moviedetailedpage2.jsp">상세정보</a></p>
                </div>
            </div>
                <div class="article-content">
                    <p>지오디마스터피스</p>
                    <p class="article-time"><img class="egg" src="image/egg.png"><p1>99% &nbsp;&nbsp;&nbsp;</p1>예매율:12.4%</p>
                </div>
            </div>
            <div class="article-card-each">
                <div class="image-container">
                <img class="article-img" src="image/3.jpg">
                <div class="overlay-text3">
                    <p id="sand3">예매하기</p>
                    <p><a href="moviedetailedpage3.jsp">상세정보</a></p>
                </div>
            </div>
                <div class="article-content">
                    <p>위시</p>
                    <p class="article-time"><img class="egg"  src="image/egg.png"><p1>86% &nbsp;&nbsp;&nbsp;</p1>예매율:12.4%</p>
                </div>
            </div>
            <div class="article-card-each">
                <div class="image-container">
                <img class="article-img" src="image/4.jpg">
                <div class="overlay-text4">
                    <p id="sand4">예매하기</p>
                    <p><a href="moviedetailedpage4.jsp">상세정보</a></p>
                </div>
            </div>
                <div class="article-content">
                    <p>노량-죽음의 바다</p>
                    <p class="article-time"><img class="egg" src="image/egg.png"><p1>99% &nbsp;&nbsp;&nbsp;</p1>예매율:4.5%</p>
                </div>
            </div>
            <div class="article-card-each">
                <div class="image-container">
                <img class="article-img" src="image/5.jpg">
                <div class="overlay-text5">
                    <p id="sand5">예매하기</p>
                    <p><a href="moviedetailedpage5.jsp">상세정보</a></p>
                </div>
            </div>
                <div class="article-content">
                    <p>서울의 봄</p>
                    <p class="article-time"><img class="egg" src="image/egg.png"><p1>93% &nbsp;&nbsp;&nbsp;</p1>예매율:4.4%</p>
                </div>
            </div>
            </div>
            
    </article>
    <form action="ticket.jsp" method="post" id="form-mslc">
		<input type="text" class="mslc" name="mslc" hidden="hidden">
		</form>
         <article class="container article-container">
			       <div class="article-title">
            EVENT
              <a href="eventfullview.jsp"><button class="article-btn">전체보기</button></a>
        </div>
        <div class="article-card">
            <div class="article-card-each2">
             <a href="eventdetailedpage1.jsp">   <img class="article-img2" src="image/E1.jpg"></a>
                <div class="article-content">
                    <p>4DX 리미티드포스터</p><tr>
                    <p class="article-time2">2023.12.17~2024.01.09</p>
                </div>
            </div>
            <div class="article-card-each2">
               <a href="eventdetailedpage2.jsp">  <img class="article-img2" src="image/E2.png"></a>
                <div class="article-content">
                      <p>전국 X 자랑</p><tr>
                    <p class="article-time2">2023.12.08~2024.01.12</p>
                </div>
            </div>
            <div class="article-card-each2">
               <a href="eventdetailedpage3.jsp">  <img class="article-img2" src="image/E3.jpg"></a>
                <div class="article-content">
                    <p>이모티콘 이벤트</p><tr>
                    <p class="article-time2">2023.12.21~2024.01.14</p>
                </div>
            </div>
            <div class="article-card-each2">
               <a href="eventdetailedpage4.jsp">  <img class="article-img2" src="image/E4.jpg"></a>
                <div class="article-content">
                      <p>4DX 스페셜굿즈</p><tr>
                    <p class="article-time2">2023.12.29~2024.01.16</p>
                </div>
            </div>
            </div>
        </div>
    </article>
    <article class="container article-container" style="margin-top: -100px;">
   <div id="specialHall">
      <div class="specialHall_title_wrap">
         <h1>특별관</h1>
         <a href="http://www.cgv.co.kr/theaters/special/defaultNew.aspx" id="btn_allView_Special" class="btn_allView">전체보기</a>              
      </div>
      <div class="specialHall_content">
         <a href="http://www.cgv.co.kr/theaters/special/defaultDetailNew.aspx?idx=7">
            <div class="specialHall_content_left_image">
               <img id="specialHall_content_left_image" src="image/specialHallLeftImage1.png">
            </div>
         </a>
         <ul class="specialHall_content_right_list">
            <li class="theater1">
               <a href="http://www.cgv.co.kr/theaters/special/defaultDetailNew.aspx?idx=7">
                  <div class="specialHall_items">SUITE CINEMA</div>
                  <div class="specialHall_hashTag_wrap">
                     <span class="specialHall_hashTag">#호텔 컨셉의 프리미엄관</span>
                  </div>
               </a>
            </li>
            <li class="theater2">
               <a href="http://www.cgv.co.kr/theaters/special/defaultDetailNew.aspx?idx=7">
                  <div class="specialHall_items">CINE & LIVINGROOM</div>
                  <div class="specialHall_hashTag">
                     <span class="specialHall_hashTag">#신개념 소셜 상영관</span>   
                  </div>
               </a>
            </li>
            <li class="theater3">
               <a href="http://www.cgv.co.kr/theaters/special/defaultDetailNew.aspx?idx=7">
                  <div class="specialHall_items">4DX</div>
                  <div class="specialHall_hashTag_wrap">
                     <span class="specialHall_hashTag">#모션시트 #오감체험</span>
                  </div>
               </a>
            </li>
            <li class="theater4">
               <a href="http://www.cgv.co.kr/theaters/special/defaultDetailNew.aspx?idx=7">
                  <div class="specialHall_items">CINE de CHEF</div>
                  <div class="specialHall_hashTag">
                     <span class="specialHall_hashTag">#쉐프가 있는 영화관</span>
                  </div>
               </a>
            </li>
         </ul>
      </div>
   </div>
    </article>
<!-- Tocplus 15.1 -->
	<script type="text/javascript">
		tocplusTop=1150;
		tocplusLeft=5;
		tocplusMinimizedImage='http://kr07.tocplus007.com/img/minimized_ko.gif';
		tocplusHAlign='right';
		tocplusWidth=180;
		tocplusHeight=220;
		tocplusUserName='손님';
		tocplusFrameColor='#red';
		tocplusFloatingWindow=true;
		var tocplusHost = (("https:" == document.location.protocol) ? "https://" : "http://");
		document.write(unescape("%"+"3Cscript src='" + tocplusHost + "kr07.tocplus007.com/chatLoader.do?userId=chokang123' type='text/javascript'"+"%"+"3E"+"%"+"3C/script"+"%"+"3E"));
		</script>
<!-- End of Tocplus -->
<script>
	$("#sand1").on("click",function(){
		var movieSand = $("body > article:nth-child(5) > div.article-card > div:nth-child(1) > div.article-content > p:nth-child(1)").text();
		$('.mslc').val(movieSand);
		$("#form-mslc").submit();
	});
	$("#sand2").on("click",function(){
		var movieSand = $("body > article:nth-child(5) > div.article-card > div:nth-child(2) > div.article-content > p:nth-child(1)").text();
		$('.mslc').val(movieSand);
		$("#form-mslc").submit();
	});
	$("#sand3").on("click",function(){
		var movieSand = $("body > article:nth-child(5) > div.article-card > div:nth-child(3) > div.article-content > p:nth-child(1)").text();
		$('.mslc').val(movieSand);
		$("#form-mslc").submit();
	});
	$("#sand4").on("click",function(){
		var movieSand = $("body > article:nth-child(5) > div.article-card > div:nth-child(4) > div.article-content > p:nth-child(1)").text();
		$('.mslc').val(movieSand);
		$("#form-mslc").submit();
	});
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

 <script>
        window.onload = pageLoad ; //브라우저에 웹페이지가 로드될 때 pageLoad()함수를 호출하여 실행합니다.
        function pageLoad(){
            var notShowPop = getCookieValue(); //notShowPop의 쿠키값을 getCookieValue()함수를 호출하여 얻습니다.
            if(notShowPop!="true"){
                window.open("popup.html","himedia","width=310, height=340")
                //notShowPop의 값이 true가 아니면 팝업창을 나타냅니다.
            }
        }
        function getCookieValue(){
            var result = "false";
            if(document.cookie != ""){
                cookie = document.cookie.split(";"); // document 쿠키의 속성으로 쿠키정보를 문자열로 가져온 후 세미클론으로 분리해 각각의 쿠키를 얻습니다. 
                for(var i=0;i<cookie.length;i++){
                    var element = cookie[i].split("=");
                    value = element[0];
                    value = value.replace(/^\s*/,''); //정규식을 이용해 쿠키이름 문자열의 공백(\s)을 제거합니다.
                    if(value=="notShowPop"){
                        result = element[1];
                    }
                }
            }
            return result;
        }
</script>
</body>
</html>
