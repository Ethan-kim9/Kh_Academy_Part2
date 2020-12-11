<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Built In Object</title>
</head>
<body>
	<h3>JSP 내장객체</h3>
	<div id="implict">
		<h3>1. out.print()</h3>
		<ul>
			<li>result = <%
				out.print("HELLO JSP");
			%>
			</li>
			<li>result2 = <%="HELLO JSP2"%></li>
		</ul>

		<h3>2.Request 내장객체</h3>
		<ul>
			<li>프로토콜 : <%=request.getProtocol()%></li>
			<li>서버명 : <%=request.getServerName()%></li>
			<li>웹루트 : <%=request.getContextPath()%></li>
			<li>현재경로 : <%=request.getRequestURI()%></li>
			<li>실제경로 : <%=request.getRealPath(".")%></li>
		</ul>
		<h3>2.Response 내장 객체</h3>
		<ul>
			<li> 리다이렉트 넘어가자 <%response.sendRedirect("./index.jsp"); %></li>
		</ul>
	</div>

</body>
</html>