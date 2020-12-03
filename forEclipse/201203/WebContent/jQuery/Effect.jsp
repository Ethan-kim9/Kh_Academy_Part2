<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Effect</title>
<style>
.target{
background-image: url('./image/1.jpg'); /* url은 index 기준*/
background-size: 100% 100%;
border-radius: 10px;
width : 90%;
height: 200px;
}
</style>
</head>
<body>
	<div id='effect'>	
	<div class = 'target'>
	</div>
	<input type="button" value="SHOW" id="buttonShow">
	<input type="button" value="HIDE" id="buttonHide">
	<input type="button" value="TOGGLE" id="buttonToggle">
	<input type="button" value="SLIDE DOWN" id="buttonSlideDown">
	<input type="button" value="SLIDE UP" id="buttonSlideUp">
	<input type="button" value="SLIDE TOGGLE" id="buttonSlideToggle">
	<input type="button" value="FADE IN" id="buttonFadeIn">
	<input type="button" value="FADE OUT" id="buttonFadeOut">
	<input type="button" value="ANIMATION" id="buttonAnimation">
	</div>
</body>
</html>