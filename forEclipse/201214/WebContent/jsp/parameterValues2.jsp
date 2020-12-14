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
	
	if(request.getMethod().equals("POST")){
		
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
<div id = 'parameter'>
	<h3> Parameter Values2</h3>
	
	<form name = 'frm_param' method = 'post'> 
	<!-- 폼태그에 액션이 없을 경우, 페이지 스스로에게 정보가 전달됨 -->
	
	<input type="text" id ='MemberId' name = 'MemberId' value = '김 씨' />
	<br/>
	<label> 성별 </label>
	<label><input type='radio' name = 'gender' value= 'M'>남성</label>
	<label><input type='radio' name = 'gender' value= 'F'>여성</label>
	<br/>
	<label>취미</label>
	<label><input type="checkbox" value = '축구' name='hobby'>축구</label>
	<label><input type="checkbox" value = '야구' name='hobby'>야구</label>
	<label><input type="checkbox" value = '농구' name='hobby'>농구</label>
	<label><input type="checkbox" value = '배구' name='hobby'>배구</label>
	<label><input type="checkbox" value = '탁구' name='hobby'>탁구</label>
	<br/>
	<label>선택과목</label>
	<select name = 'subject' size = '5' multiple="multiple">
		<option value = 'html5'>HTML5</option>
		<option value = 'CSS'>CSS</option>
		<option value = 'JAVASCRIPT'>JAVASCRIPT</option>
		<option value = 'JAVA'>JAVA</option>
		<option value = 'JSP'>JSP</option>
		<option value = 'AJAX'>AJAX</option>
		<option value = 'JQUERY'>JQUERY</option>
	</select>
	<br />
	<label>첨부파일</label>
	<input type="file" name = 'attFile' multiple="multiple" />
	<p/>
	<input type="submit" value = '등록' />
	</form>
</div>
</body>
</html>