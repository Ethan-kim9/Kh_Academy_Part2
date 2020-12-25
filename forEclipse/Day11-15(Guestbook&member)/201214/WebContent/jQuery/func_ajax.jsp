<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ajax function in jQuery</title>
</head>
<body>
	<div id='func_ajax'>
		<h2>ajax를 이용한 구구단</h2>
		<form name="form" id="form" method="post">
			<label> 단수를 입력해주세요 : </label> 
			<input type="text" size="4" name="dan" value=" " /> 
			<input type="button" value="구구단 실행" id='btnRun' />
		</form>
		<div class='result'></div>
	</div>
	<script>
	
$('#btnRun').on('click', function(){
	
	let param = $('#form').serialize();

	$.ajax({
		type : 'get',
		url  : './jQuery/multiplefunction.jsp',
		data : param,
	
		dataType : 'html',
		success   : function(receiveData, status){
				$('.result').html(receiveData);
		},
		error	  : function(xhr, status, error){
			alert(status);
		}
		
	});
});

</script>

</body>
</html>