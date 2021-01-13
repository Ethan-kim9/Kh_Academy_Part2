<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Member Select</title>
</head>
<body>
	<h3>회원조회</h3>
	<div id='memner_select'>
		<form name='frm' method ='post' action ='/210112/member.kim'>
			<input type="submit" value = '조회' />
			<a href =./filter/filter_main.jsp>HOME</a>		
		</form>
		<hr/>
		${msg }
	</div>
</body>
</html>