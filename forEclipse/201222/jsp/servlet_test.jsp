<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Servlet test</title>
</head>
<body>
	<div id='servlet_test'>
	<h3>Servlet Test(GET|POST)</h3>
		<div>
			이클립스 콘솔창 확인.
		</div>
	<ul>
		<li><a href='test.do?mid=hong&phone=010-1111-1111'>GET TEST</a></li>
	</ul>
	</div>
	<form action="test.do" name="frm" method="post">
		<label>이름</label>
		<input type="text" name="name" value="남궁" />
		<br/>
		<label>주소</label>
		<input type="text" name="address" value="인천 광역시" />
		<br/>
		<input type="submit" value="POST 타입 전송" />
	</form>
</body>
</html>