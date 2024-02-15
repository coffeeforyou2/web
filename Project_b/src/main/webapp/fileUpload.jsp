<%@page import="java.util.Enumeration"%>
<%@page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form name="filecheck" action="fileCheck.jsp" method="post">
<input type="hidden" name="name" value="${vo.name }">
<input type="hidden" name="subject" value="${vo.subject }">
<input type="hidden" name="filename1" value="${vo.filename1 }">
<input type="hidden" name="filename2" value="${vo.filename2 }">
<input type="hidden" name="origfilename1" value="${vo.origfilename1 }">
<input type="hidden" name="origfilename2" value="${vo.origfilename2 }">
</form>
<a href="#" onclick="javascript:filecheck.submit()">업로드 확인 및 다운로드 페이지 이동</a>

</body>
</html>