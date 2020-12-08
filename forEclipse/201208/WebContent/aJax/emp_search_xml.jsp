<?xml version= '1.0' encoding = 'UTF-8' ?>
<%@page import="bean.EmpVo"%>
<%@page import="java.util.List"%>
<%@page import="bean.EmpDao"%>
<%@ page language="java" contentType="text/xml; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String findStr = request.getParameter("findStr");
	EmpDao dao = new EmpDao();
	List<EmpVo> list = dao.search(findStr);
%>

<emps> <% //root태그 , Parsing 시에도 에러처리가 안나오려면 이렇게 처리해줘야함 %>
	<%
	for(EmpVo vo: list) { %>
	<emp>
		<id><%= vo.getEmployee_id()%></id>
		<name><%= vo.getFirst_name()%></name>
		<email><%= vo.getEmail()%></email>
		<phone><%= vo.getPhone_number()%></phone>
		<salary><%= vo.getSalary()%></salary>
	</emp>
<% }%>