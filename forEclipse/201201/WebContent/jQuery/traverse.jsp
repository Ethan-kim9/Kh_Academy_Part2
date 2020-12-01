<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>traverse</title>

</head>
<body>
	<div id='traverse'>
		<h1>TRAVERSE</h1>
		<fieldset>
			<legend>traverse</legend>
			<ul>
				<li>traverse는 '.'을 찍어서 표현한다.</li>
				<li>명령어는 filter와 traverse가 매우 유사하거나 상충되기 때문에 개인적 취향에 따라 사용 빈도수가
					달라질 수 있다.</li>
				<li>종류=> .eq(index), .first(), .last(), .slice(start [, end])</li>
				<li>method=> .children(expr), .find(expr), .parent(expr),
					.next(expr), .prev(expr)</li>
			</ul>
		</fieldset>

		<ul>
			<li>백두산</li>
			<li>금강산</li>
			<li>설악산</li>
			<li>치악산</li>
			<li>내장산</li>
			<li>속리산</li>
			<li>한라산</li>
		</ul>
		<div id = 'div1'>		
			<input type='button' value='x' class='btn1'/>
		</div>
		<div id = 'div2'>		
			<input type='button' value='x' class='btn2'/>
		</div>
		
	</div>
	<script>
		$('#traverse > ul > li').first().css('color', '#f00');
		$('#traverse > ul > li').filter(':odd').css('color', '#00f');
		$('#traverse > ul > li').slice(1,4).css('font-family','궁서체');


		// 1) div 1, div2 의 넓이와 높이를 지정하시오.
		
		$('#traverse > div').css({
			'width' : '300px',
			'height': '300px'
			});

		// 2) btn 1, btn2 의 넓이와 높이를 지정하시오
		$('#traverse > div > .btn1').css({
			'width' : '300px',
			'height': '300px'
			});

		$('#traverse > div > .btn2').css({
			'width' : '300px',
			'height': '300px'
			});
	</script>
</body>
</html>