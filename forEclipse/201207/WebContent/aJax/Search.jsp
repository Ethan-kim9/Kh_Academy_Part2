<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Search Form</title>
</head>
<style>
.employees > div {
	display: inline-block;
	width: 200px;
	height: 200px;
	border:  1px solid #ccc;
	padding: 5px;
	box-shadow: 2px 2px 3px #999;
	border-radius: 9px;
}
</style>
<body>
<div id = 'Employee_search_form'>
	<form name = 'form' method = 'post'>
		<label> 검색어를 입력하세요. </label>
		<input type = 'text' name ='findString' />
		<input type = 'button' value = '검색' name ='buttonFind' />
	</form>
	<hr/>
	
	<div class= 'employees'>
		<div class ='employee'>
		</div>
		<div class ='employee'>
		</div>
		<div class ='employee'>
		</div>
	</div>
</div>

</body>
</html>