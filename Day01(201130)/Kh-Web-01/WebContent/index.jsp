<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<script src='./resources/jquery-3.5.1.slim.min.js'></script>
<meta charset="UTF-8">
<title>index with Library</title>
</head>
<body>
<%
	String inc = "intro.jsp";
	if(request.getParameter("inc") !=null){
		inc =request.getParameter("inc");
	}
	
%>
	<div id='index'>
		<header id='header'> 헤더 </header>
		<section id='contents'>
			<article class='content'>
			<jsp:include page="<%=inc %>"></jsp:include> 
			<!-- inc 파라미터를 이용한 JSP 동적삽입 -->
			</article>
			<aside>
				<!-- 가상의 이미지 영역을 설정해주겠다. -->
				<img src='http://placehold.it/150X100'>
			</aside>
		</section>
		<footer id='footer'> 융합 S/W 개발</footer>
	</div>



	<script>
		// 모든 기본태그의 마진, 패딩 0
		$('*').css('margin', '0px');
		$('*').css('padding', '0px');

		//패딩의 증가의 영향을 최소화 하기위해 조치를 취함.
		$('#index').css('box-sizing', 'border-box');

		//index 페이지의 넓이와 중앙으로 배치
		$('#index').css('width', '800px');
		$('#index').css('margin', 'auto');

		//header의 높이와 색을 지정
		$('#index > #header').css('height', '150px');
		$('#index > #header').css('background-color', '#ccc');
		$('#index > #header').css('margin-top', '5px');

		//contents 는 최소높이만

		$('#index>#contents').css('min-height', '250px');

		// footer 높이와 바탕색

		/*
		 * $('#index>#footer').css('height','100px');
		 * $('#index>#footer').css('background-color','#bbb');
		 * $('#index>#footer').css('text-align','center');
		 * $('#index>#footer').css('line-height','100px');
		 */

		// JSON 표기법으로 footer 높이와 바탕색을 정하는법

		$('#index>#footer').css({
			'height' : '100px',
			'background-color' : '#bbb',
			'text-align' : 'center',
			'line-height' : '100px'
		});

		$('#index > #contents').css({
			'margin-top' : '3px',
			'margin-bottom' : '3px'
		});

		$('#index > #contents > .content').css({
			'width' : '650px',
			'float' : 'left'
		});

		$('#index > #contents > .aside').css({
			'width' : '150px',
			'float' : 'right'
		});
	</script>
</body>
</html>