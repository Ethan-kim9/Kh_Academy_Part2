<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
			String temp = request.getParameter("num");
			String msg = "수를 입력해주세요.";
		int num = 0;
		if (temp != null && !temp.equals("")) {
			num = Integer.parseInt(temp);
			if (num % 2 == 0) msg = num + "는 짝수입니다.";
			else msg = num + "는 홀수 입니다.";
		}
		
		out.print(msg);
%>