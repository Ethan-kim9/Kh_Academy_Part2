<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String MemberId = request.getParameter("MemberId");
	String Password = request.getParameter("Password");
	
	session.setAttribute("MemberId", MemberId);
	response.sendRedirect("../index.jsp");
	
%>