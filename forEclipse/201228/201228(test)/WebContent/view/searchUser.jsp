<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>search User</title>
</head>
<body>
	<h1>회원 정보 조회</h1>
	<form action="searchUser.do" method="post" id="searchUser">
		<input type="text" id="userNo" name="userNo">
		<!-- name 은 파라미터 -->
		<input type="submit" value="조회" id="btnSearch">
	</form>
</body>
</html>