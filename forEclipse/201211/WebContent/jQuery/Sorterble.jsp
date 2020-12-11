<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel='stylesheet' type='text/css'
   href='https://code.jquery.com/ui/1.12.1/themes/south-street/jquery-ui.css'/>
<script src='http://code.jquery.com/ui/1.12.1/jquery-ui.js'></script>      

<style>
.items{
	list-style: none;
}
.items > li{
 	border: 2px dotted ivory;
 	width: 100px;
	text-align: center;
	background-color: powderblue;
	color:brown;		
}

.items > li:hover{
	cursor : pointer; /*UX에 해당하는 부분*/
}

</style>

</head>
<body>
	<div id = 'sorterble'>
		<ul class = 'items'>
			<li>HTML5</li>
			<li>CSS</li>
			<li>JAVASCRIPT</li>
			<li>JAVA</li>
			<li>JDBC</li>
			<li>JQUERY</li>
			<li>AJAX</li>
			<li>MABATIS</li>
			<li>JSP</li>
			<li>SPRINGBOOT</li>
			<li>FINALPROJECT</li>
		</ul>
	</div>
</body>
</html>