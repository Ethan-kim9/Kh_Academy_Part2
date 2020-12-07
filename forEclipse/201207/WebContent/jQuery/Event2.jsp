<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Event2</title>
<style>
.target {
	border: 2px solid #bbb;
	width: 250px;
	height: 100px;
	font-weight: bolder;
	text-align: center;
	line-height: 100px;
	background-color: black;
}

#toggleButton {
	width: 120px;
	height: 30px;
	line-height: 30px;
}
</style>
</head>
<body>

	<div id='toggle'>
		<div class='target'></div>
		<br /> <input type='button' value='ON&OFF' id='toggleButton'>
	</div>

	<div id='one'>
		<div class='sendButtonBox'>
			<div class='sendmoney'>송금버튼을 누르세요</div>
			<input type="button" value="송금" id='sendButton'>
		</div>
	</div>
</body>
<script>
	$('#toggleButton').on('click', function() {
		$('.target').toggle();
	});

	let count = 0;
	
	$('#sendButton').on('click', function() {
		let++;
		$('.sendmoney').html("송금되었습니다.");

		if(count >= 1){
			$('#sendButton').toggle();
			}
	});
</script>
</html>