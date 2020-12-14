<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Scope Check</title>
</head>
<body>
<div id = "scope_check">
	<h3> Scope Area Message Check</h3>
	<ul>
	<li>Application : <%= application.getAttribute("msg") %></li>
	<li>Session : <%= session.getAttribute("msg") %></li>
	<li>Request : <%= request.getAttribute("msg") %></li>
	<li>pageContext : <%=pageContext.getAttribute("msg") %></li>
	</ul>
</div>
</body>
</html>