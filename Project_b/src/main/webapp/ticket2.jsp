<%@page import="java.io.Console"%>
<%@page import="CGVTicket.CGVTicketVO"%>
<%@page import="CGVTicket.CGVTicketDAO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">

<head>
<link rel="icon" type="image/png" sizes="16x16"	href="image/favicon-16x16.png">
	<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
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
	font-size: 80%;
	overflow:auto;
	white-space:nowrap;
	background-color: aqua;
	overflow: hidden;
	padding: 10px;
	text-overflow: ellipsis;
	float: left;
	object-fit: contain;
}
.v-select{
	width: 190px;
	font-size: 80%;
	overflow:auto;
	white-space:nowrap;
	background-color: aqua;
	overflow: hidden;
	padding: 10px;
	text-overflow: ellipsis;
	float: left;
	object-fit: contain;
}
#sit-box td{
	background-color: white;
	width: 30px;
	height: 30px;
	text-align: center;
	border-radius: 5px;
	border: solid 1px gray;
}

#sit-box .no{
	visibility : hidden;
}

#sit-box .use{
	background-color: gray;
	color: white;
}

#sit-box .slc{
	background-color: green;
	color: white;
}

#sit-box td:hover{
	background-color: black;
	color: white;
}

#sit-number{
	position: absolute;
	color: white;
}
.noneSlc{
	-webkit-touch-callout: none; 
    -webkit-user-select: none; 
    -ms-user-select: none; 
    user-select: none;

}
#Ticketing {
	font-size:20px;
	color:white;
	width: 120px;
	height: 120px;
	text-align:center;
	line-height: 15px;
	padding-top: 15px;
	float:right;
	background-color: red;
	font-weight: 700;
}
#Ticketing:hover{
background-color: #BC0404;
}

#Ticketing:hover img {
	transform: translateY(-0.25rem);
    transition: transform 0.1s ease-in-out;
}

#Ticketing img {
	transform: translateY(0rem);
    transition: transform 0.1s ease-in-out;
}



</style>
    <meta charset="UTF-8">
  
</head>

<body>

    <jsp:include page="header.jsp" />
    
    	<h1 style="text-align: center;">좌석을 선택해주세요.</h1>
    	<form action="ticket.do" method="post" id="form-ticket">
    	<fieldset style="width: 50%; margin: 0 auto">
    	<%
    		request.setCharacterEncoding("utf-8");
    		String CGVMv = request.getParameter("movie-name");
    		String CGVCenter = request.getParameter("movie-center");
    		String CGVDay = request.getParameter("movie-day");
    		String CGVTime = request.getParameter("movie-time");
    	%>
    	<div id="CGVLog" hidden="hidden">
    	선택된 지역:<span id="CGVCenter"><%= CGVCenter %></span><br>
    	선택된 영화:<span id="CGVMv"><%= CGVMv %></span><br>
    	선택된 관람일:<span id="CGVDay"><%= CGVDay %></span> <br>
    	선택된 상영시간:<span id="CGVTime"><%= CGVTime %></span>
    	<input type="text" name="CGVCenter"value="<%= CGVCenter %>">
    	<input type="text" name="CGVMv"value="<%= CGVMv %>">
    	<input type="text" name="CGVDay"value="<%= CGVDay %>">
    	<input type="text" name="CGVTime"value="<%= CGVTime %>">
    	<input type="text" name="CGVId" value="${sessionScope.data.mbId}">
    	</div>
    	
    	
    	<input type="text" id="CGVSit" name="CGVSit" hidden="hidden">
    	<div id="StartFrom" hidden="hidden"></div>
    	<br>
    	<div style="width: 550px; margin: 0 auto;">
    			<div style="text-align: center; margin: 0 auto; width: 400px; height: 30px; background-color: #FFD2D2; border-radius: 5px;">display</div>
    			<br>
    		<table id="sit-box">
    			<thead>
    				
    			</thead>
    			<tbody>
    				<%
    					CGVTicketDAO dao = new CGVTicketDAO();
    					CGVTicketVO vo = new CGVTicketVO();
    					vo.setCenter(CGVCenter);
    					ArrayList <CGVTicketVO> data = dao.sitUse(vo);
    					ArrayList<String> sitCheck = new ArrayList<>();
    					for(int i=0;i<data.size();i++){
	    				vo = data.get(i);
	    				String sit = vo.getSit();
	    				sitCheck.add(sit);
    					}

    					char c = 'A';
    					int snum = 1;
    					for(int i=1;i<12;i++){
    						
    						out.print("<tr>"+"<th>"+c+"</th>");
    						for(int j=1;j<16;j++){
    							String cjCheck = String.valueOf(c) + j;
    					        //System.out.println(cjCheck);
    					        boolean useSit = sitCheck.contains(cjCheck);
    						//System.out.println(useSit);
    							if(j==4){
    								out.print("<td class='no'>"+c+j+"</td>");
    							}else if(j==12){
    								out.print("<td class='no'>"+c+j+"</td>");
    							}else if(useSit){
    								out.print("<td class='use'>"+c+j+"</td>");
    							}else{
    								out.print("<td>"+c+j+"</td>");
    							}
    						}
    						c++;
    						out.print("</tr>");
    					}
    				%>    				
    			</tbody>
    		</table>
    	</div>
    	</fieldset>
    	</form>
    	<br><br>
    	<div style="width: 100%; height: 120px; background-color: lightgray;">
	    	<div style="width: 52%; margin: 0 auto;">
		    	<div style="float: left; padding-top: 15px; ">
		    	선택된 지역:<span><b><%= CGVCenter %></b></span><br>
		    	선택된 영화:<span><b><%= CGVMv %></b></span><br>
		    	선택된 관람일:<span><b><%= CGVDay %></b></span> <br>
		    	선택된 상영시간:<span><b><%= CGVTime %></b></span> <br>
		    	</div>
		    	<div id="Ticketing" class="noneSlc">
		        <img src="image/ticketIcon.png" width="80%"><br><br>예매하기</div>
	        </div>
    	</div>
    	<br>
    	<script>
    		$("#sit-box td").on("click",function(){
    			var x = $(this).closest('tr').index();
    		    var y = $(this).closest('td').index();
    		    y--;
    		    var tValue = $('#sit-box tr:eq('+x+')>td:eq('+y+')').text();
    		    var useCheck = $(this).attr("class");
    		    if(useCheck == "use"){
    		    	swal({
    	    			title: "이미 예매된 좌석입니다.",
    	    		    icon: "error"
    	    		});
    	    		return false;
    		    }
    		    $("#CGVSit").val(tValue);
    		    $("#sit-box td").removeClass("slc");
    		    $(this).addClass("slc");
    		});
    		$("#ticketBuy").on("click",function(){
    			var CGVCenter = $("#CGVCenter").text();
    			var CGVTime = $("#CGVTime").text();
    			var CGVDay = $("#CGVDay").text();
    			var CGVMv = $("#CGVMv").text();
    			var CGVSit = $("#CGVSit").val();
    			var CGVId = $("#CGVId").text();
    			alert(CGVId);
    			if(CGVSit==""){
    				swal({
    	    			title: "좌석을 선택해주세요.",
    	    		    icon: "error"
    	    		});
    	    		return false;
    			}
    			$("#StartFrom").prepend('<input type="text" id="CGVCenter" name="CGVCenter" value='+CGVCenter+'>');
    			$("#StartFrom").prepend('<input type="text" id="CGVTime" name="CGVTime" value='+CGVTime+'>');
    			$("#StartFrom").prepend('<input type="text" id="CGVDay" name="CGVDay" value='+CGVDay+'>');
    			$("#StartFrom").prepend('<input type="text" id="CGVMv" name="CGVMv" value='+CGVMv+'>');
    			$("#StartFrom").prepend('<input type="text" id="CGVId" name="CGVId" value='+CGVId+'>');
    		});
    		$(document).ready(function() {
    		    $("#Ticketing").on("click", function() {
    		    	var CGVSitCheck= $(CGVSit).val();
    		    	if(CGVSitCheck==""){
        				swal({
        	    			title: "좌석을 선택해주세요.",
        	    		    icon: "error"
        	    		});
        	    		return false;
        			}
    		        $("#form-ticket").submit();
    		    });
    		});
    	</script>
    </body>
    </html>