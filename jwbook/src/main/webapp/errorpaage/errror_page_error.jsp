<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page errorPage="error_page.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러가 있는 페이지</title>
</head>
<body>
	<%
	String str = null;
	//코드 오류 발생
	out.println(str.toString());
	%>
</body>
</html>