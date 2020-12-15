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
<div id = 'parameter'>
	<div id= 'result'></div>
	<h3> Parameter Values</h3>
	
	<form name = 'frm_param' method = 'POST' id = 'frm_param'> 
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
	<input type="button" value = '등록' id ="buttonRun"/>
	</form>
</div>

<script>

	$('#buttonRun').on('click', function(){
		let param = $('#frm_param').serialize();
		$('#result').load('./jsp/ParameterValuesCtrl.jsp', param);
	});
	
</script>
</body>
</html>