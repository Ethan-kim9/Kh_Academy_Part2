<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Attribute</title>
<style>

	#attribute > .boxsize{
		width : 400px;
		height: 200px;
	}
	#attribute > .target{
		background-color: gray;
		border : 1px solid #aaa;
	}
	.type_A{
		background-color: #00f;
		color:#fff;
	}
	.type_A >h1{
		font-family : 궁서체;	
	}
	.type_B{
		background-color : tomato;
		color :teal;
	}
	.type_B > h1{
		font-weight :bolder;
		font-family: 명조체;
	}
</style>
</head>
<body>
	<div id="attribute">
		<div class ="boxsize target">
			<h1>jQuery Attribute Test</h1>
		</div>
		<div class="btns">
			<input type="button" value='A Type' id='ButtonAType' /> 
			<input type="button" value='B Type' id='ButtonBType' />
			<input type="button" value='Reset' id='ButtonOriginType' />
		</div>
	</div>
	<script>

	// A, B type 에 click event 추가
	
	let targetBox = $('#attribute > .target');
	
	$('#attribute > .btns > #ButtonAType')[0].onclick = function(){
		$(targetBox).attr('class', 'boxsize type_A');
	}

	$('#attribute > .btns > #ButtonBType')[0].onclick = function(){
		$(targetBox).attr('class', 'boxsize type_B');
	}
	$('#attribute > .btns > #ButtonOriginType')[0].onclick = function(){
		$(targetBox).attr('class', 'boxsize target');
	} 
	</script>
</body>
</html>