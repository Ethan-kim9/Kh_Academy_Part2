<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<script src='./js/logininfo.js'></script>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div id = "logininfo">
	<%
		if( session.getAttribute("MemberId") == null){
	%>
	<form name = "form_log" method = "post">
		<label for="MemberId">아이디</label><br />
		<input type ="text" id= "MemberId" name= "MemberId" value ="kim" size = "10"
			   pattern='[A-Za-z0-9]{8,20}' /><br />
		<label for="Password">암호</label><br />
		<input type="password" id = "Password" name = "Password" value = "1111" size = "10"/>
		<input type ="button" id ="btnLogin" value ="로그인" />
	</form>
	<br/>
	<a href="">아이디 | 암호찾기</a>
	<% }else{ %>
	<%-- 로그인 이후 화면 --%>
	<span>[<%= session.getAttribute("MemberId") %>]님 안녕</span>
	<input type = 'button' id = 'btnLogout' value = '로그아웃' />
	
	<% } %>
</div>
<script>logInAndOut()</script>
</body>
</html>