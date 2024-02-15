<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
    <fmt:requestEncoding value="utf-8"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>파일업로드Info</title>
</head>
<body>

올린 사람 : ${param.name }<br>
제목 : ${param.subject }<br>
파일명1 : <a href="filedown2.do?file=${param.filename1 }">${param.origfilename1}</a><br>
파일명2 : <a href="filedown2.do?file=${param.filename2 }">${param.origfilename2}</a><p>

</body>
</html>