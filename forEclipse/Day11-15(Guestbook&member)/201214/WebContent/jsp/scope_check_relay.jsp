<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setAttribute("msg", "relay를 적용한 msg 입니다.");
	RequestDispatcher requestDispatcher = request.getRequestDispatcher("scope_check.jsp");
	requestDispatcher.forward(request, response);
%>
</body>
</html>