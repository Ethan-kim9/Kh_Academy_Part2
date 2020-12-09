<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
		String temp = request.getParameter("dan");
	List<String> list = new ArrayList<>();
	
	
	if (temp != null && !temp.equals("")) {
		int dan = Integer.parseInt(temp);
		
		for(int i = 1; i < 10; i++){
			list.add("'" + dan + " X " + i + " = " + dan*i + "'" );
		}
		
		String str = Arrays.toString(list.toArray());
		str = str.replaceAll("'", "\"");
		out.print(str);
	}
%>
