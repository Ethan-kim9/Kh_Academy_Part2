<%@page import="com.google.gson.JsonObject"%>
<%@page import="kh.model.vo.Kh"%>
<%@page import="com.google.gson.Gson"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String path = request.getContextPath();%>
<% JsonObject obj = (JsonObject)request.getAttribute("obj"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>학원 조회 페이지</title>
<script type="text/javascript" src="http://code.jquery.com/jquery-3.3.1.js"></script>
</head>
<body>
	<h2>학원 정보 조회하기</h2>
	<hr>
		<input type="text" name= "kh" />
		<input type="button" value="조회하기" class="btnSearch"/>
	<div id="answer">
	</div>
</body>
<script>
$('.btnSearch').on('click', function(){
	var value = $('input[name="kh"]').val();
	$.ajax({
		type : 'post',
		url  : '<%=path %>/searchKH',
		data : { searchName : value },
		success  : function(obj){
			var object =	"<ul>"
						+ 		"<li>"  + obj.name 	+ "</li>"
						+		"<li>"  + obj.addr 	+ "</li>"
						+		"<li>"  + obj.fax 	+ "</li>"
						+	"</ul>"
			alert('조회되었습니다.');
			document.getElementById("answer").innerHTML= object;
		},
		error    : function(){
			document.getElementById("answer").innerHTML="정보가 없습니다";
		}  		
	});
});

</script>
</html>