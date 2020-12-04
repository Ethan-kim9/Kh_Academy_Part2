<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>drag</title>
<link rel='stylesheet' type='text/css'
   href='https://code.jquery.com/ui/1.12.1/themes/south-street/jquery-ui.css'/>
<script src='http://code.jquery.com/ui/1.12.1/jquery-ui.js'></script>      
<style>
#drag>div {
	width: 150px;
	height: 150px;
	background: #88f;
	opacity: 0.5;
}
</style>
</head>
<body>
	<div id='drag'>
		<div class='target'>이 곳을 드래그</div>
		<div class='target'>이 곳을 드래그</div>
	</div>
	<script>
		$('.target').draggable();
	</script>
</body>
</html>