<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>

<html lang="ko">

<head>
<link rel="icon" type="image/png" sizes="16x16"	href="image/favicon-16x16.png">
<meta charset="UTF-8">
<script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>글쓰기</title>
<style>

.card-header1 h1 {
	font-size: 30px;
	font-weight: 600;
	margin-top: 20px;
}

.card-write {
	margin-top: 20px;
	padding: 20px;
}

.card-write input, textarea {
	margin-left: 10px;
	padding: 10px;
	border: 1px solid #999;
	border-radius: 10px;
	box-shadow: 3px 3px 10px #e6e6e6;
}

.card-write .myinfo input[type="text"] {
	width: 25%;
	margin-right: 50px;
}

.card-write .myinfo input[type="password"] {
	width: 31%;
	/* margin-right: 50px; */
}

.card-write .title-w input[type="text"] {
	margin-top: 20px;
	margin-bottom: 20px;
	width: 85.5%;
}

.card-write .msg textarea {
	min-width: 85.5%;
	max-width: 85.5%;
	min-height: 200px;
	max-height: 200px;
	box-shadow: inset 3px 3px 10px #e6e6e6;
	/* vertical-align: 텍스트를 수직, 수평 정렬 할 수 있다. */
	vertical-align: top;
}

.card-write input[type="file"] {
	border: none;
	box-shadow: none;
	padding: 10px;
	margin-left: 40px;
}

.btn-w {
	right: 0;
	bottom: 0;
	margin: 10px 10px 20px 10px;
	padding: 10px;
	margin-top:-7%;
	margin-left:85%;
}

.btn-w div {
	background-color: tomato;
	padding: 10px;
	color: #fff;
	border-radius: 10px;
}

.al {

	width: 70%;
	border: 1px solid black;
	padding: 20px;
	border-radius: 5px;
	background-color: #fff;
	max-width: 800px;
	max-height: 600px;
}

.div-list1 {
	width: 204px;
	height: 630px;	
	
	  list-style-type: none;
  text-align: left;
  font-size: small;

}

.div-list1 p {
	padding-left: 20px;
	font-size: 15px;
	font-family: 'Noto Sans KR', sans-serif;
	color: #666;
}

.div-list1 li {
	padding-bottom: 7px;
	padding-top: 7px;
	padding-left: 15px;
	font-family: 'Noto Sans KR', sans-serif;
	list-style-type: none;
}

.div-list1 li:hover {
	background-color: red;
	color: white;
	border-radius: 5px;
}

.div-list1 p:hover {
	opacity: 100%;
	color: red;
	border-radius: 5px;
}
.#charCount{
	position: absolute;
}
</style>
</head>
<body>

	<jsp:include page="header.jsp" />
	<div style=" width: 1000px; margin: 0 auto; ">
<div class="div-list1" style="float: left;">
		<li><h2>MY CGV HOME</h2></li> <a href="###"><li><h2>나의예매내역</h2></li>
			<p>신용카드 영수증 출력</p> <a href="###">
				<li><h2>회원정보</h2></li> <a href="mbEdit.jsp">
					<p>개인정보변경</p> <a href="mbEdit.jsp">
						<p>회원정보설정</p> <!--링크 미설정 목록-->
						<li><h2>CJ ONE POINT</h2></li>
						<p>적립/사용내역</p>
						<p>CGV 이용내역</p>

						<li><h2>이벤트 참여내역</h2></li>
						<li><h2>기프트샵</h2></li>
						<p>내 기프티콘</p>
						<p>결제 내역</p>
						<li><h2>프로필 관리</h2></li>
						<li><h2>나의 문의 내용</h2></li>
						<p>1:1 문의</p>
						<p>분실문 문의</p>
	</div>

	<div class="al" style="float: left;"><!--boardinsert.do-->
	<form action="boardImgInsert.do" method="post" id='sandForm' enctype="multipart/form-data">
		<div class="card">
			<div class="card-header1">
				<h1>
					<a href="../BOARD/index.html" style="text-align: center;">게시판</a>
				</h1>
			</div>

			<div class="card-write">
				<div class="title-w">
				<input type="text" id="mvId" name="mvId" value="${sessionScope.data.mbId}" hidden="hidden" readonly="readonly">
					게시판 선택
					<select id="mvType" name="mvType" style="width: 78%; padding: 5px; border-radius: 10px; font-weight: 700;" >
					<option selected disabled hidden>선택해주세요.</option>
					<option>분실물</option>
					<option>건의사항</option>
					<option>예매문의</option>
					<option>결재문의</option>
					<option>포인트문의</option>
					<option>계정문의</option>
					<option>기타문의</option>
					</select>
					 <br> <br> <br> 제목<input name="mvTitle" id="mvTitle" type="text" placeholder="제목을 입력하세요.">
				</div>
				답변 받을 이메일 주소: <input name="email" type="text" style="width: 63%;" placeholder="이메일 입력">
				<br><br>
				<div class="msg">
					내용
					<textarea id="mvContent" name="mvContent" placeholder="내용을 입력하세요." maxlength="350" ></textarea>
					<p id="charCount"></p>
					<input type="file" name="fileName1" id="fileName1">
				</div>
			</div>
			<div class="btn-w">
				<div id="sanding">작성</div>
			</div>
		</div>
	</form>
	</div>
	</div>
<script>
	$('#sanding').on("click",function(){
		var type = $("#mvType").val();
		var title = $("#mvTitle").val();
		var contents = $("#mvContent").val();
		
    	if(type==null){
    		swal({
    		    title: "게시판를 선택해주세요.",
    		    icon: "warning"
    		});
    		return false;
    	}
    	if(title==""){
    		swal({
    		    title: "제목을 입력해주세요.",
    		    icon: "warning"
    		});
    		return false;
    	}
    	if(contents==""){
    		swal({
    		    title: "내용을 입력해주세요.",
    		    icon: "warning"
    		});
    		return false;
    	}
		$('#sandForm').submit();
	});
	$('#mvContent').on("input",function(){
		var text = $("#mvContent").val();
		var valSize = text.length;
		if (valSize > 350) {
			$('#charCount').stop(true, true);
            $("#contents").val(text.substring(0, 350));
            changeColor('#charCount', 'red', 'black', 200);
            return false;
        }
		
		
		
		$('#charCount').text(valSize + ' / ' + 350 + ' characters');
		
		 
	});
	
	function changeColor(element, startColor, endColor, duration) {
        $(element).css('color', startColor);
        $(element).animate({
            color: endColor
        }, {
            duration: duration,
            easing: 'linear',
            step: function (now, fx) {
                // 'step' 콜백 함수를 사용하여 각 단계마다 실행될 작업 수행 가능
                // 예: console.log(now);
            }
        });
    }
</script>

</body>
</html>