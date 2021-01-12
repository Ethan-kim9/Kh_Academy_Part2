<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Filter Test</title>
</head>
<body>
	<div id='filter_test'>
		<h3>Filter Test</h3>
		<form name='frm' method='post' action=''>
		<label>답글내용</label> <br/>
		<textarea rows="5" cols="50" name='doc'>filter를 사용하여 한들 encoding을 테스트해봅시다.</textarea>
		<p/>
		<input type="submit" value="저장" />
		</form>
		<hr/>
		<h3>저장내용출력</h3>
		<%=request.getAttribute("doc") %>
	</div>
</body>
</html>