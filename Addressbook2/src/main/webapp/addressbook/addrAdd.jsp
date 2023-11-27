<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<title>주소 등록 처리</title>
<link rel="stylesheet" href="../resources/css/style.css">

<jsp:useBean id="addrBook" class="addressbook.AddrBook"/>
<jsp:setProperty property="*" name="addrBook"/>
<jsp:useBean id="abDAO" class="addressbook.AddrBookDAO" scope="application"/>
<%
	abDAO.addAddrBook(addrBook); //주소 추가
	//회원 가입후 자동로그인
	session.setAttribute("sessionId", addrBook.getEmail());
	session.setAttribute("sessionName", addrBook.getUsername());	
%>
	<div id = "contaniner">
		<h2>등록 내용</h2>
		<hr>
		<p>이름: <%=addrBook.getUsername() %> </p>
		<p>전화번호: <%=addrBook.getTel() %> </p>
		<p>이메일: <%=addrBook.getEmail() %> </p>
		<p>성별: <%=addrBook.getGender() %> </p>
		<hr>
		<p><a href="addrlist.jsp">목록보기</a></p>
	</div>