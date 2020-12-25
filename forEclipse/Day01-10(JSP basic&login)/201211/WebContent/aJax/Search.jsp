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
	<form name = 'form' method = 'post' id = 'form'>
		<label> 검색어를 입력하세요. </label>
		<input type = 'text' name ='findString' />
		<input type = 'button' value = '검색' id ='buttonFind' />
	</form>
	<hr/>
	<div class= 'employees'></div>
</div>
<script>

$('#buttonFind').on('click',function(){
	let parameter = $('#form').serialize();
	let request = new XMLHttpRequest();
	request.open('get','./aJax/empSearch.jsp?' + parameter);
	request.onreadystatechange = function(){
		console.log(request.status + "  , " + request.readyState);
		if(request.status == 200 && request.readyState == 4){
			$('.employees').html(request.responseText);
			}
		}
	request.send();
});


</script>
</body>
</html>