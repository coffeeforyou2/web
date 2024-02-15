<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.time.format.DateTimeFormatter"%>
<%@page import="java.time.LocalDate"%>
<%@page import="CGVMAP.CgvMapVO"%>
<%@page import="CGVMAP.CgvMapDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="vo.MovieVO"%>
<%@page import="dao.MovieDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="https://code.jquery.com/jquery-3.6.4.min.js"></script>
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

heaader{
            width: 65%;
            margin: 0 auto;
            margin: 0,70px,70px,0;
}
.movie-select::-webkit-scrollbar {
	  display: none;
}
.m-select{
	width: 190px;
	font-size:80%;
	overflow:auto;
	white-space:nowrap;
	background-color: white;
	overflow: hidden;
	padding: 10px;
	text-overflow: ellipsis;
	float: left;
	text-align:left;
	justify-content: center;
	border-radius: 5px;
	
	
}
.m-select:hover{
	background-color: lightgray;
}
.m-select.m-slc{
	background-color: red;
	color: white;
}


.day-select{
	width: 190px;
	font-size:80%;
	overflow:auto;
	white-space:nowrap;
	background-color: white;
	overflow: hidden;
	padding: 10px;
	text-overflow: ellipsis;
	float: left;
	line-height:10px;
	text-align:left;
	justify-content: center;
	border-radius: 5px;
}

.movie-time{
	padding: 10px;
	width: 100%;
	background-color: #ECECEC;
	text-align: center;
	margin-bottom: 5px;
	border-radius: 5px;
}


.movie-time:hover{
	background-color: lightgray;
}
.movie-time.t-slc{
	background-color: red;
	color: white;
}

.v-select{
	width: 190px;
	font-size: 80%;
	overflow:auto;
	white-space:nowrap;
	background-color: white;
	overflow: hidden;
	padding: 10px;
	text-overflow: ellipsis;
	float: left;
	object-fit: contain;
	
}
.choose-main:hover{
	background-color: red;
}
.movie-buy{
	width: 80%;
	margin: 0 auto;
}
.rat-img{
	width: 20px;
}
.movie-time{
	padding: 10px;
}

.choose{
	padding: 10px;
	width: 150px;
	background-color: white;
	border-radius: 5px;
}
.choose-main{
	padding: 10px;
	width: 100px;
	background-color: lightgray;
	text-align: right;
	margin-right: 10px;
}

.day-select{
	width: 70%
}

.day-select:hover{
	background-color: #ECECEC;
}
#CGVover{
	height: 500px;
	overflow: auto;
}
#CGVover ::-webkit-scrollbar {
	  display: hidden;
}

#Ticketing {
	font-size:20px;
	color:white;
	width: 120px;
	height: 120px;
	text-align:center;
	line-height: 15px;
	padding-top: 15px;
	background-color: red;
	font-weight: 700;
	margin-left:100%;
	border-radius:10px;
}
#Ticketing:hover{
background-color: #BC0404;
}

.choose:hover{
background-color: #ECECEC;
}

.c-slc{
background-color: red;
color: white;
}

.choose.cc-slc{
background-color: red;
color: white;
}

.day-select.d-slc{
background-color: red;
color: white;
}

#Ticketing:hover img {
	transform: translateX(0.25rem);
    transition: transform 0.1s ease-in-out;
}

#Ticketing img {
	transform: translateX(0rem);
    transition: transform 0.1s ease-in-out;
}
.bot{
width: 70%; 
height: 120px; 
margin:auto; 
background-color: lightgray;
position:static;
border-radius:10px;
 }
</style>
    <meta charset="UTF-8">
</head>

<body>

  <jsp:include page="header.jsp" />

       <div hidden="hidden">
       	<input type="text" id="idCheck" value="${sessionScope.data.mbId}">
       </div>
    
    <h1 style="text-align: center; margin: 0 auto; padding: 10px" >예매하기</h1>
    <p style="text-align: center;">자리선정과 결재를 단 한번에!</p>
    <br>
    <div class="header-main" style=" margin: 0 auto; width: 850px; height:500px; box-shadow: 0px 0px 15px lightgray; border-radius: 10px; ">
	    <div class="movie-select" style="width: 210px ; overflow:auto; height:490px; float: left; margin: 10px;">
	    	<%
	    	request.setCharacterEncoding("utf-8");
	   		String mslc = request.getParameter("mslc");
	   		
			MovieDAO dao = new MovieDAO();
			MovieVO vo = new MovieVO();
			String title = null;
			String pos = null;
			String rating = null;
			ArrayList<MovieVO> list = dao.selectAll(vo);
			for(int i=0;i<list.size();i++){
				vo = list.get(i);
				title=vo.getMvTitle();
				int Mv=vo.getMvRank();
				pos=vo.getMvPos();
				
				rating = vo.getMvInfo();
				String rat[] = rating.split(",");
				
				if(title.equals(mslc)){
					out.print("<span class='m-select m-slc' id='"+Mv+"'alt='"+title+"'>");
					out.print("<input type=text class='sandingmv' value='"+title+"' hidden='hidden'>");
				}else{
					out.print("<span class='m-select' id='"+Mv+"'alt='"+title+"'>");
				}
				
				
				if(rat[0].equals("전체관람가")){
					out.print("<img class='rat-img' src='image/ALL.svg'>");
				}else if(rat[0].equals("12세이상관람가")){
					out.print("<img class='rat-img' src='image/12.svg'>");
				}else if(rat[0].equals("15세이상관람가")){
					out.print("<img class='rat-img' src='image/15.svg'>");
				}else if(rat[0].equals("18세이상관람가")){
					out.print("<img class='rat-img' src='image/18.svg'>");
				}
				out.print("&nbsp;"+title+"</span>");
			}
			%>
	    </div>
	    <div class="movie-select" style="width: 280px ; overflow:auto;height:500px; float: left;">
	    	<div style="float: left">
	    		<%
	    		
	    			CgvMapDAO Cdao = new CgvMapDAO();
	    			CgvMapVO Cvo = new CgvMapVO();
	    			ArrayList<CgvMapVO> Cdatas = Cdao.group(Cvo);
	    			String cityDiv = null;
	    			for(int i=0;i<Cdatas.size();i++){
	    				Cvo = Cdatas.get(i);
	    				String City = Cvo.getCGVCity();
	    				out.print("<div>");
	    				out.print("<div class='choose-main' id='"+cityDiv+"'>");
	    				out.print(City);
	    				out.print("</div>");
	    				out.print("</div>");
	    			}
	    		%>
	    	</div>
	    	<div id="CGVover"></div>
	    </div>
	    <div class="movie-select" style="width: 70px ; overflow:auto; height:500px; float: left;">
		    <% 
		    	LocalDate now = LocalDate.now();
		    	DateTimeFormatter formatter = DateTimeFormatter.ofPattern("MM");      
		    	String formatedNow = now.format(formatter);
		    
		    	System.out.print(formatedNow);
		    %>
		    <div style="text-align: center; font-size: 150%;"><%= formatedNow %></div>
		    <%
		    	String morth = formatedNow;
		    	formatter = DateTimeFormatter.ofPattern("dd");
		    	formatedNow = now.format(formatter);
		    	
		    	GregorianCalendar today = new GregorianCalendar ( );
		    	int maxday = today.getActualMaximum((today.DAY_OF_MONTH));
	    		System.out.println(formatedNow);
		    	System.out.println(maxday);
		    	int formatterNow =Integer.parseInt(formatedNow);
		    	for(int i = formatterNow; i<=maxday ; i++){
		    		out.print("<span class='day-select' id='"+morth+"/"+i+"'>"+i+"</span>");
		    	}
		    %>
		    
	    </div>
	    <div class="movie-select" style="width: 250px ; margin: 0 auto; overflow:auto; height:500px; float: left; background-color: width: ;">
		    
		    <div id="mv-time-slc" style="margin: 10px;">
		    <div style="text-align: center; font-size: 80%;">상영시간</div><br>
		    <div id="mv-time-slc-btn" >
			    <!--  <input class="movie-time" type="button" value="9:00"><br>
			    <input class="movie-time" type="button" value="11:00"><br>
			    <input class="movie-time" type="button" value="13:00"><br>
			    <input class="movie-time" type="button" value="15:00"><br>
			    <input class="movie-time" type="button" value="16:00"><br>
			    <input class="movie-time" type="button" value="18:00">-->
			    <div class="movie-time">9:00</div>
			    <div class="movie-time">11:00</div>
			    <div class="movie-time">13:00</div>
			    <div class="movie-time">15:00</div>
			    <div class="movie-time">17:00</div>
			    <div class="movie-time">19:00</div>
		    </div>
		    </div>
	    </div>
	 </div>
	 <br>
	 <div class="movie-buy">
	 <form action="ticket2.jsp" method="post" id="form-sit">
	 	<div hidden="hidden">
	    	<input type="text" id="movie-sel" name="movie-name">
	    	<input type="text" id="center-sel" name="movie-center">
	    	<input type="text" id="day-sel" name="movie-day">
	    	<input type="text" id="time-sel" name="movie-time">
    	</div>
    	<!-- 
	 	<div style="text-align: center;">결재를 합시다.</div>
	 	<input type="button" id="select-result" value="값 가져오기">
	 	<input type="submit" id="select-dir" value="다음"> -->
	 	</form>
	 	<div class="bot">
	    	<div style="width: 80%; margin: 0 auto;">
		    	<div style="float: left; padding-top: 15px; ">
		    	
		    	</div>
		    	<div id="Ticketing" class="noneSlc">
		        <img src="image/nextIcon.png" width="100%" ><br><br>좌석선택</div>
	        </div>
    	</div>
	 </div>
	 <br>
	    <script>
	    /*
	    $(".m-select").hover(function() {
			$(this).css("background-color", "red");
	    },function(){
	    	$(this).css("background-color", "aqua");
		});
	    */
	    $(".m-select").on("click", function() {
			var mv = $(this).attr('alt');
			$(".m-select").removeClass("m-slc");
			$(this).addClass("m-slc");
			$("#movie-sel").val(mv);
		});
	    
	    $(document).ready(function(){
	    	var mv = $(".sandingmv").attr("value");
	    	$("#movie-sel").val(mv);
	    });
	    
	    
	    $(".day-select").on("click",function(){
	    	var day = $(this).attr('id');
	    	$(".day-select").removeClass("d-slc");
			$(this).addClass("d-slc");
			$("#mv-time-slc-btn").removeAttr("hidden");
	    	$("#day-sel").val(day);
	    	
	    });
	    
	    $(".movie-time").on("click",function(){
	    	var time = $(this).text();
	    	$(".movie-time").removeClass("t-slc");
			$(this).addClass("t-slc");
	    	$("#time-sel").val(time);
	    	
	    });
	    
	    
	    
	    $(".choose-main").on("click",function(){
	   	 var map= $(this).text();
	   	$(".choose-main").removeClass("c-slc");
		$(this).addClass("c-slc");
	   	 var requestData = {
	   		SandData: map,
	   	 };
	   	 
		   	 $.ajax({
		   		 method: "GET",
		   		 url: "ticketCityDB.jsp",
		   		 dataType: 'html',
		   		 data: requestData,
		   		 success: function (data) {
	                $("#CGVover").html(data);
	                
	                $("#CGVover").find(".choose").on("click",function(){
	                	var CGVCenterName = $(this).html();
				    	$(".choose").removeClass("cc-slc");
						$(this).addClass("cc-slc");
				    	$("#center-sel").val(CGVCenterName);
				    	
				    });
	             },
	
		   	 });
		   	 	//$(".allCGV").hide();
		   		//$("#"+map+"CGV").show();
	     });
	    $(document).ready(function() {
		    $("#Ticketing").on("click", function() {
		    	var mvName = $("#movie-sel").val();
		    	if(mvName==""){
		    		swal({
		    		    title: "영화를 선택해주세요.",
		    		    icon: "error"
		    		});
		    		return false;
		    	}
		    	var center = $("#center-sel").val();
		    	if(center==""){
		    		swal({
		    			title: "상영관을 선택해주세요.",
		    		    icon: "error"
		    		});
		    		return false;
		    	}
		    	var day = $("#day-sel").val();
		    	if(day==""){
		    		swal({
		    			title: "상영일을 선택해주세요.",
		    		    icon: "error"
		    		});
		    		return false;
		    	}
		    	var time = $("#time-sel").val();
		    	if(time==""){
		    		swal({
		    			title: "시간을 선택해주세요.",
		    		    icon: "error"
		    		});
		    		return false;
		    	}
		        $("#form-sit").submit();
		    });
		});
	    $(document).ready(function(){
	    	var idCheck = $("#idCheck").val();
	    	if(!idCheck){
	    		swal({
		            title: "로그인해야 접근이 가능합니다.",
		            icon: "error",
		          }).then(function() {
		            // 모달이 닫힌 후에 뒤로 가기
		            window.history.back();
		          });
	    	}
	    	
	    });
	    </script>
    </body>
    </html>