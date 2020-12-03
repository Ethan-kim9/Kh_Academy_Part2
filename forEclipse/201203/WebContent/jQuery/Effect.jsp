<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Effect</title>
<style>
.targetbox{
	height: 210px;
}
.target{
background-image: url('./images/1.jpg'); /* url은 index 기준*/
background-size: 10%;
border-radius: 10px;
width : 90%;
height: 200px;
}
</style>
</head>
<body>
	<div id='effect'>
		<div class="targetbox">
			<div class = 'target'></div>
		</div>
	<input type='button' value= 'SHOW' 			id='buttonShow'/>
	<input type='button' value= 'HIDE' 			id='buttonHide'/>
	<input type='button' value= 'TOGGLE' 		id='buttonToggle'/>
	<input type='button' value= 'SLIDE DOWN' 	id='buttonSlideDown'/>
	<input type='button' value= 'SLIDE UP' 		id='buttonSlideUp'/>
	<input type='button' value= 'SLIDE TOGGLE' 	id='buttonSlideToggle'/>
	<input type='button' value= 'FADE IN' 		id='buttonFadeIn'/>
	<input type='button' value= 'FADE OUT' 		id='buttonFadeOut'/>
	<input type='button' value= 'ANIMATION' 	id='buttonAnimation'/>
	
	</div>
	
<script>

$('#buttonShow').on('click', function(){
	$('.target').show(2000);
});
$('#buttonHide').on('click', function(){
	$('.target').hide(2000);
});
$('#buttonToggle').on('click', function(){
	$('.target').toggle(700);
});
$('#buttonSlideDown').on('click', function(){
	$('.target').slideDown();
});
$('#buttonSlideUp').on('click', function(){
	$('.target').slideUp(1000);
});
$('#buttonSlideToggle').on('click', function(){
	$('.target').slideToggle(1000);
});
$('#buttonFadeIn').on('click', function(){
	$('.target').fadeIn(700);
});
$('#buttonFadeOut').on('click', function(){
	$('.target').fadeOut(700);
});

</script>
</body>
</html>