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
	<form method="post" id="searchUser">
		<input type="text" id="userNo">
		<input type="button" value="조회" id="btnSearch">
	</form>
</body>
<script>
let SearchUser = function(){
	let btnSearch = getID('btnSearch');
	
	if(btnSearch !=null){
		let search = document.searchUser;
		search.action = "/User.do?job=search";
		search.submit();
	}
}
</script>
</html>