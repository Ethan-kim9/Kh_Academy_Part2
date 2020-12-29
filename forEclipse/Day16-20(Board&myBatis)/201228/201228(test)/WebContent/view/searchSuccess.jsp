<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "user.model.vo.User" %>
<%@ User user = req.getAttribute("USER") %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<table border="1">
	<th>회원번호</th>
	<th>회원아이디</th>
	<th>회원이름</th>
	<th>회원나이</th>
<tr>
	<th>${user.user_no }</th>
	<th>${user.user_id }</th>
	<th>${user.user_name }</th>
	<th>${user.user_age }</th>
</tr>
</table>
</body>
</html>