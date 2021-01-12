<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>fiter main</title>
</head>
<body>
<%
	session.setAttribute ("mid", "manager");
	session.removeAttribute("mid");

%>
	<div id='filter+main'>
		<h3>Filter를 사용한 로그인 체크</h3>
		<a href='member_select.jsp'>회원조회</a>
		<a href='sale_select.jsp'>판매조회</a>
	</div>
	
</body>
</html>