<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SCOPE</title>
</head>
<body>
<div id ="scope">
<h3> Application | Session | Request | PageContext</h3>
</div>
	<%
		String msg = "Scope 테스트용 메세지입니다.";

		application.setAttribute("msg", msg);
		session.setAttribute("msg", msg);
		request.setAttribute("msg", msg);
		pageContext.setAttribute("msg", msg);
		
		//session 영역의 유지시간 설정 (5초)
		//session.setMaxInactiveInterval(5);
		// 개인별로 정보를 보존하기에 session 영역을 보통 login/logout을 구현할 때 많이쓴다.
		
		//request의 경우는 <form>영역을 받을 때 많이 쓴다.
	%>
	
	<a href = "scope_check.jsp">Scope Message Check</a>
</body>
</html>