<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원관리 및 조회</title>
<link rel='stylesheet' type='text/css' href='./css/member.css' >
</head>
<body>
	<div id="member">
		<h3>회원 관리</h3>
		<form name="frm_member" method="post" id='frm_member'>
			<input type="button" value="입력" id="btnInsert" />
			<div>
				<input type="text" name="findStr" class="findStr" /> 
				<input type="button" value="검색" id="btnFind" />
			</div>
		</form>
		<div class='title'>
				<span class='no'> NO</span> 
				<span class='mid'> 아이디</span> 
				<span class='name'>성명</span> 
				<span class='email'>이메일</span>
				<span class='mdate'>가입일</span>
		</div>
		<div class='items'>
			<div class='item'>
				<span class='no'> 1</span> 
				<span class='mid'> hong</span> 
				<span class='name'>Gildong</span> 
				<span class='email'>hong@jobt.kr</span>
				<span class='mdate'>2020-01-01</span>
			</div>
			<div class='item'>
				<span class='no'> 2</span>
				<span class='mid'> kim</span> 
				<span class='name'>Gildong</span> 
				<span class='email'>kim@jobt.kr</span>
				<span class='mdate'>2020-02-01</span>
			</div>
			<div class='item'>
				<span class='no'> 3</span> 
				<span class='mid'> lee</span> 
				<span class='name'>Gildong</span> 
				<span class='email'>lee@jobt.kr</span>
				<span class='mdate'>2020-03-01</span> 
			</div>
		</div>
		
		<div class ='paging'>
			<input type="button" value ="처음" id="btnFirst"/>
			<input type="button" value ="이전" id="btnPrev"/>
			
			<input type="button" value ="1" id="btn1"/>
			<input type="button" value ="2" id="btn2"/>
			<input type="button" value ="3" id="btn3"/>
			<input type="button" value ="4" id="btn4"/>
			<input type="button" value ="5" id="btn5"/>
			
			<input type="button" value ="다음" id="btnNext"/>
			<input type="button" value ="끝" id="btnLast"/>
		</div>
		</div>
</body>
</html>