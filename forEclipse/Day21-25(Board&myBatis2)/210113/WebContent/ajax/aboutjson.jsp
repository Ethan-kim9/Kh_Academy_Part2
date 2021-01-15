<%@page import="com.google.gson.JsonElement"%>
<%@page import="com.google.gson.JsonArray"%>
<%@page import="java.util.Date"%>
<%@page import="com.google.gson.JsonObject"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSON</title>
</head>
<body>
	
</body>

<script>
/*
 * 문자열 패턴의 데이터 형식을 가지고 있다.
 */

</script>

<%
	out.print("<h2> Gson라이브러리를 통한 JSON 실습  </h2>");
	
	JsonObject obj1 = new JsonObject();
	//객체 생성
	
	obj1.addProperty("mid", "a001");
	obj1.addProperty("name", "Hong");
	obj1.addProperty("address", "busan");
	obj1.addProperty("phone", "010-1111-2222");
	obj1.addProperty("age", "25");
	obj1.addProperty("mdate", new Date().toString());
	//객체에 값을 담음
	
	
	out.print("<h3>Gson으로 생성한 json 오브젝트 </h3>");
	out.print(obj1);
	out.print("<hr>");
	
	out.print("<h3>Json 오브젝트 객체값을 하나하나 뽑아보자 </h3>");
	
	out.print("<hr>");
	
	out.print("<li> mid  	 : " + obj1.get("mid")		+"</li>");
	out.print("<li> name 	 : " + obj1.get("name")		+"</li>");
	out.print("<li> address  : " + obj1.get("address")	+"</li>");
	out.print("<li> phone  	 : " + obj1.get("phone")	+"</li>");
	out.print("<li> age  	 : " + obj1.get("age")		+"</li>");
	out.print("<li> mdate  	 : " + obj1.get("mdate")	+"</li>");
	
	out.print("<hr>");
	
	out.print("<h2> Gson에 내장된 Json배열구조  </h2>");
	
	
	JsonArray arr = new JsonArray();
	
	JsonObject jobj1 = new JsonObject();
	
	jobj1.addProperty("mid", "b001");
	jobj1.addProperty("name", "Kim");
	
	arr.add(jobj1);
	
	JsonObject jobj2 = new JsonObject();
	
	jobj2.addProperty("mid", "c001");
	jobj2.addProperty("name", "park");
	
	arr.add(jobj2);
	
	out.print("<h3> Json배열을 한번에 출력할 경우?  </h3>");
	
	out.print(arr);

	
	out.print("<hr>");
	
	out.print("<h3>Json 오브젝트 배열의 객체값을 하나하나 뽑아보자 </h3>");
	out.print("<hr>");
	
	JsonElement element = arr.get(0);
	
	out.print("<li> mid  	 : " + element.getAsJsonObject().get("mid")			+"</li>");
	out.print("<li> name 	 : " + element.getAsJsonObject().get("name")		+"</li>");
	out.print("<li> age  	 : " + arr.get(1).getAsJsonObject().get("mid")		+"</li>");
	out.print("<li> mdate  	 : " + arr.get(1).getAsJsonObject().get("name")		+"</li>");
%>

</html>