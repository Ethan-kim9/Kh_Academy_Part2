<%@page import="bean.EmpDao"%>
<%@page import="bean.EmpVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String findString = request.getParameter("findString");
	EmpDao dao = new EmpDao();
	List<EmpVo> list = dao.search(findString);
%>