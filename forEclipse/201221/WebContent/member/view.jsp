<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리(View)</title>
</head>
<body>
	<div id='member'>
		<h2>회원 관리</h2>
		<form name='frm_member' method='post'>
			<label>아이디</label>
			<input type='text' name='mid' /><br/>

			<label>성명</label>
			<input type='text' name='name' /><br/>

			<label>이메일</label>
			<input type='email' name='email' size='40' /><br/>

			<label>연락처</label>
			<input type='text' name='phone' size='30' /><br/>

			<label>우편번호</label>
			<input type='text' name='zipcode' /> <br/>

			<label>주소</label>
			<input type='text' name='address' size='50'/> <br/>

			<img src='http://placehold.it/150x200'> <br/>
			<hr/>
			
			<div class='btns'>
				<input type='button' value='저장' id='btnModify'/>
				<input type='button' value='삭제' id='btnDelete'/>
				<input type='button' value='목록으로' id='btnSelect'/>
		</div>	
		</form>
	</div>
</body>
</html>