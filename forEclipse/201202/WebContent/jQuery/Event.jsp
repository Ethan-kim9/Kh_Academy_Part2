<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event</title>
</head>
<body>
	<div id='serialize'>
		<form name='form_serialize' method="post" class ="form_serialize">
			<label> 아이디 </label> <input type="text" name="userId"value='hey00507'><br /> 
			<label> 이름 </label> <input type="text" name="userName" value='Ethan'><br /> 
			<label> 연락처 </label> <input type="text" name="userPhone" value='010-xxxx-xxxx'><br />
			<input type="submit" value="전송">
		</form>

	</div>

</body>
<script>
//$('.form_serialize')[0].onsubmit = function(){} - JavaScript 콜백함수를 통해 실행

// jQuery 용 문법

$('.form_serialize').submit(function(){
	let userData = $(this).serialize();
	
	console.log(userData);
	return false;
});

</script>
</html>