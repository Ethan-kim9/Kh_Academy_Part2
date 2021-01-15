<%@page import="com.google.gson.JsonArray"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.google.gson.JsonObject"%>
<%@page import="com.google.gson.JsonElement"%>
<%@page import="com.google.gson.JsonParser"%>
<%@page import="com.google.gson.Gson"%>
<%@page import="bean.MemberVo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>json_toJson</title>
</head>
<body>
	<div id="json_toJson">

		<h3>Java Vo객체를 GSON 라이브러리를 사용하여 json구조로 변경</h3>
		<!-- Json은 문자열 형태로 데이터가 담긴다는 점을 생각하자 -->
		<%
			MemberVo mv = new MemberVo();
			mv.setMid("Kim");
			mv.setEmail("hey0507@gmail.com");
			mv.setZipcode("12345");
			mv.setPhoto("kim.png");
			mv.setPhone("010-1234-5678");
			
			Gson gson = new Gson();
			
			String str = gson.toJson(mv);
			//Json구조를 가진 문자열일 뿐 str은 Json Object가 아니다.
			
			out.print("vo객체를 json형태로 바꾼 결과 :" +str);
			out.print("<hr>");
			
			// 이후에 Json.parse라는 명령어를 통해 사용가능
			
			out.print("<h3> Json 형태의 str을 Json Object로 변경해보자 </h3>");
			JsonParser parser = new JsonParser();			
			JsonElement element= parser.parse(str);
			JsonObject obj = element.getAsJsonObject();
			
			
			
			out.print("<li> mid 	:"  + obj.get("mid") 	+ "</li>");
			out.print("<li> email 	:"  + obj.get("email") 	+ "</li>");
			out.print("<li> photo	:"  + obj.get("photo") 	+ "</li>");
			out.print("<li> zipcode	:"  + obj.get("zipcode") 	+ "</li>");
			out.print("<li> phone	:"  + obj.get("phone") 	+ "</li>");
			
			out.print("<hr>");
			
			out.print("<h3> List형태의 MemberVo를 Gson을 통해 Json 처리해보자!</h3>");
		
		
			List<MemberVo> list = new ArrayList<>();
			MemberVo mv2 = new MemberVo();
			
			mv2.setMid("Lee");
			mv2.setName("Smith");
			
			MemberVo mv3 = new MemberVo();
			
			mv3.setMid("Park");
			mv3.setName("James");
			
			
			list.add(mv2);
			list.add(mv3);
			
			str = gson.toJson(list);
			
			out.print("List to Json : " + str);
			
			element = parser.parse(str);
			// Json 배열로 element를 담아줌
			JsonArray array = element.getAsJsonArray();
			
			element = array.get(0);
			// element 에 array의 첫번째 값만 담아줌
			
			obj = element.getAsJsonObject();
			// 다시 Json 오브젝트화함
			out.print("<hr>");

			out.print("<li> mid 	:"  + obj.get("mid") 	+ "</li>");
			out.print("<li> name 	:"  + obj.get("name") 	+ "</li>");
			
			element = array.get(1);
			// element 에 array의 첫번째 값만 담아줌
			
			obj = element.getAsJsonObject();
			// 다시 Json 오브젝트화함
			out.print("<hr>");

			out.print("<li> mid 	:"  + obj.get("mid") 	+ "</li>");
			out.print("<li> name 	:"  + obj.get("name") 	+ "</li>");
			
			
		%>
	</div>
</body>
<script>

</script>
</html>