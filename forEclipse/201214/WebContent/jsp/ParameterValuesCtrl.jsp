<%@page import="java.util.Set"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.Enumeration"%>
<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ParameterValues</title>
</head>
<body>
<%
	request.setCharacterEncoding("UTF-8");
	response.setContentType("text/html; charset = UTF-8");
	
	if(request.getMethod().equals("GET")){
		
		String memberId = request.getParameter("MemberId");
		String gender  = request.getParameter("gender");
		
		String [] hobby = request.getParameterValues("hobby");
		String [] subject = request.getParameterValues("subject");
		String [] attFile = request.getParameterValues("attFile");
	
		
		out.print("<li>아이디 : " + memberId);
		out.print("<li>성별 : " + gender);
		out.print("<li>취미 : " + Arrays.toString(hobby));
		out.print("<li>파일 : " + Arrays.toString(attFile));
		
		
		out.print("<h4>getParameterNames()</h4>");
		
		Enumeration<String> enumeration = request.getParameterNames();
		while(enumeration.hasMoreElements()){
			String str = enumeration.nextElement();
			out.print("<li>" + str);
		}
		
		out.print("<h4>getParameterMap()</h4>");
		Map <String, String[]> map = null;
		map = request.getParameterMap();
		
		Set<String> set = map.keySet();
		Iterator<String> iterator = set.iterator();
		
		while(iterator.hasNext()){
			String key = iterator.next();
			String[] values = map.get(key);
			out.print("<li>" + key + " : " + Arrays.toString(values));
		}
	}
%>

</body>
</html>