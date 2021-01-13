<%@page import="java.util.Arrays"%>
<%@page import="java.util.List"%>
<%@page import="bean.MemberVo"%>
<%@page import="com.google.gson.Gson"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>json_toClass</title>
</head>
<body>
	<div id ='json_toClass'>
		<h2> Json 타입의 데이터를 자바의 오브젝트로 변환시켜보자!</h2>
	</div>
	
	<%
		String json  = "{'mid' : 'hong' , 'name' : '홍길동'}".replaceAll("'", "\"");
		
		Gson gson = new Gson();
		
		MemberVo vo = gson.fromJson(json, MemberVo.class);
		
		out.print("<li>id	 	: " + vo.getMid() + "</li>");
		out.print("<li>name 	: " + vo.getName() + "</li>");
		
		
		out.print("<h2>Json Array를 자바의 List로 변환하기</h2>");
		
		String jsonarr = "[{'phone':'010-1234-5678'},{'phone' : '010-9999-8888'}]".replaceAll("'", "\"");
		
		MemberVo[] voArr = gson.fromJson(jsonarr, MemberVo[].class);
		
		List<MemberVo> list = Arrays.asList(voArr);
		
		out.print("<hr>");
		
		out.print("<h3>첫번째 Json Array를 자바의 List로 변환 후 출력</h3>");
		vo = list.get(0);
		out.print("<li>phone	 	: " + vo.getPhone() + "</li>");
		
		out.print("<hr>");
		out.print("<h3>두번째 Json Array를 자바의 List로 변환 후 출력</h3>");
		vo = list.get(1);
		out.print("<li>phone	 	: " + vo.getPhone() + "</li>");
		
		%>
</body>
</html>