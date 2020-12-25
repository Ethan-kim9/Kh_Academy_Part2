<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<%
		String temp = request.getParameter("dan");
	if (temp != null && !temp.equals("")) {
		int dan = Integer.parseInt(temp);
		
		for(int i = 1; i < 10; i++){
			String str = dan + " X " + i + " = " + dan*i + " <br/>";
			out.print(str);
		}
	}
	%>
