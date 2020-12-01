<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>filter</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>

</head>
<body>
	<div id='filter'>
		<fieldset>
			<legend>filter</legend>
			<ul>
				<li>선택된 요소중 필요한 요소만을 걸러내는 방법</li>
				<li>접두문자 ':'를 사용한다.</li>
				<li>필터와 필터를 연결하여 사용할 수 있다.</li>
				<li>종류 => : eq(index) , :even, :odd , :first, :last, :gt(index)</li>
			</ul>
		</fieldset>

		<ol start='0'>
			<li>설악산</li>
			<li>금강산</li>
			<li>설악산</li>
			<li>치악산</li>
			<li>내정산</li>
			<li>속리산</li>
			<li>한라산</li>
		</ol>
		
		<div class = 'items'>
		<div>방가</div>
		<div>방가</div>
		<div>방가</div>
		<div>방가</div>
		<div>방가</div>
		<div>방가</div>
		</div>
		
	</div>

	<script>
		$('#filter > ol > li:first').css('color', '#f00');
		$('#filter > ol > li:odd').css('font-weight', 'bolder');

		// UL 태그 안에 있는 첫번째 li
		
		$('#filter > ul > li:first').css('color', 'wheat');
		
		// items 안에 있는 div 의 색상을 홀짝수로 나뉘어 표시되도록 구성
		
		$('#filter > .items > div').css ('background-color', 'blue');
		$('#filter > .items > div:even').css ('background-color', 'tomato');
	</script>
</body>
</html>