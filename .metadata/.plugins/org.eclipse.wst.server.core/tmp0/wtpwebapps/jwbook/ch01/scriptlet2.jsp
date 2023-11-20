<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>배열과 리스트 활용</title>
</head>
<body>
	<h3>배열과 리스트 활용</h3>
	<%
	//배열
	int[] arr = new int[] { 10, 20, 30 };
	for (int i = 0; i < arr.length; i++) {
		out.println(arr[i]);
	}
	out.println("<br>");

	//Arrays 클래스
	int arr2[] = new int[] { 40, 50, 60 };
	out.println(Arrays.toString(arr2));

	//ArrayList 클래스
	ArrayList<String> cart = new ArrayList<>();
	cart.add("우유");
	cart.add("콩나물");
	cart.add("딸기잼");

	out.println("<br>");

	//향상 for문
	for (String c : cart) {
		out.println(c);
	}
	%>

	<p>
		cart의 2번 인덱스 값:
		<%=cart.get(2)%></p>
</body>
</html>