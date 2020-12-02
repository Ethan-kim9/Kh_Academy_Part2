<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Intro with CDN</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
</head>
<body>
	<%
		out.print("hi jQuery");
	%>

	<header>
		<h1 id='header'>Tag for jQueryTest</h1>
		<ul>
			<li><a href='index.jsp?inc=./jQuery/filter.jsp'>FIlTER</a></li>
			<li><a href='index.jsp?inc=./jQuery/traverse.jsp'>TRAVERSE</a></li>
		</ul>
	</header>
	<script>
		$('#header').css('color', '#ff0000');
	</script>
</body>
</html>