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
	width: 80px;
	height: 80px;
	background: #88f;
	opacity: 0.5;
}

.dropped{
	background-color : #aaa;
}

#drop > div {
	border : 2px solid #00f;
	width : 100px;
	height: 100px;
}
</style>
</head>
<body>
	<div id='drag'>
		<div class='target'>이 곳을 드래그</div>
	</div>
	
	<div id = 'drop'>
	<div class = 'drop'> 여기에 끌어다 두기</div>
	</div>
	<script>
		$('.target').draggable();
		
		$('.drop').droppable({
			drop : function (){
				$(this).addClass('dropped');
				$(this).html('DragOn');
				},
			out : function (){
				$(this).removeClass('dropped');
				$(this).html('DragOff');
				}
			});
	</script>
</body>
</html>