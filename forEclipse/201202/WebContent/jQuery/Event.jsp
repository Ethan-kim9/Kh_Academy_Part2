<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event</title>
<style>
	.keyupresult{
		border: 2px solid #aaa;
		border-radius: 10px;
		padding : 15px;
		width: 200px;
		height: 100px;
		background-color: #eee;
		box-shadow: 2px 2px 4px #999;
	}
</style>
</head>
<body>
<!-- 직렬화 Serialize -->
	<div id='serialize'> 
		<form name='form_serialize' method="post" class ="form_serialize">
			<label> 아이디 </label> <input type="text" name="userId"value='hey00507'><br /> 
			<label> 이름 </label> <input type="text" name="userName" value='Ethan'><br /> 
			<label> 연락처 </label> <input type="text" name="userPhone" value='010-xxxx-xxxx'><br />
			<input type="submit" value="전송">
		</form>

	</div>
	<!-- 키보드 이벤트 -->
	<div id = 'keyup'>
		<label>생년월일 :</label> <input type="text" name="birth" class= "birthday" placeholder ='YYYYMMDD'>
		<label> 성별 : </label> <input type= "text" class= "gender" size = "4">
		<p></p>
		<div class = "keyupresult"></div>
	
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

$( '#keyup > .birthday').keyup(function(event){
	let keyupToStr = event.keyCode;
	$('.keyupresult').text(keyupToStr);
	//console.log(event);
	
	//입력된 문자열의 길이가 8자 이상이면, 커서를 성별쪽으로 옮겨줌
	if($(this).val().length >= 8){
		$('.gender').focus();
		}
});

// 자연수를 받아 홀수일 경우 남, 짝수일 경우 여 로 표기
$ ('#keyup >.gender').keyup(function(){
	let userGender = $(this).val();
	let genderToString = '';
	if(userGender%2 == 0){genderToString = '여성입니다.';}
	else{genderToString = '남성입니다.';}
	$('.keyupresult').html(genderToString);
});

</script>
</html>