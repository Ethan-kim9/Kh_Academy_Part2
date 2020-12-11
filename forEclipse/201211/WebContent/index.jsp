<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<script src="https://code.jquery.com/jquery-3.5.1.js" 
	        integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc=" 
	        crossorigin="anonymous"></script>   
   
<meta charset="UTF-8">
<title>index with Library</title>
</head>
<body>
	<%
		String inc = "intro.jsp";
	if (request.getParameter("inc") != null) {
		inc = request.getParameter("inc");
	}
	%>


	<%
		//Sub
	String sub = "./jQuery/menu.jsp";
	if (request.getParameter("sub") != null) {
		sub = request.getParameter("sub");
	}
	%>

	<div id='index'>
<%--header 영역 --%>
<%@ include file= "header.jsp" %>
		<section id='contents'>
			<article class='content'>
				<jsp:include page="<%=inc%>" />
				<!-- inc 파라미터를 이용한 JSP 동적삽입 -->
			</article>
			
			<aside>
				<!-- 가상의 이미지 영역을 설정해주겠다. -->
				<img src='http://placehold.it/150X100'>
				<div id='sub_menu'>
					<jsp:include page="<%=sub%>" />
				<!-- Sub 파라미터를 이용한 JSP 동적삽입 -->
					
				</div>
			</aside>
			
		</section>
		<%--  footer영역 --%>
		<%@ include file= "footer.jsp" %>
		
	</div>



	<script>
		// 모든 기본태그의 마진, 패딩 0
		$('*').css('margin', '0px');
		$('*').css('padding', '0px');
		//패딩의 증가의 영향을 최소화 하기위해 조치를 취함.
		$('*').css('box-sizing', 'border-box');
		$('a').css('text-decoration', 'none'); // 링크의 언더라인을 제거함

		//index 페이지의 넓이와 중앙으로 배치
		$('#index').css('width', '800px');
		$('#index').css('margin', 'auto');

		//header의 높이와 색을 지정
		$('#index>#header').css('height', '150px');
		$('#index>#header').css('background-color', '#ccc');
		$('#index>#header').css('margin-top', '5px');
		$('#index>#header').css('position', 'relative');

		$('#header > #navigation').css({
			'position' : 'absolute',
			'right' : '2px',
			'bottom' : '2px'
		});

		$('#header > #navigation > ul').css({
			'list-style' : 'none'
		});

		$('#header > #navigation > ul > li').css({
			'display' : 'inline-block',
			'padding' : '3px',
			'width' : '70px',
			'text-align' : 'center',
			'background-color' : '#99f'
		});

		$('#header > #navigation > ul > li').first().css('border-radius',
				'8px 0 0 8px');
		$('#header > #navigation > ul > li').last().css('border-radius',
				'0 8px 8px 0');

		//Header 설정 끝

		//Content 설정

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
			'display': 'inline-block',
			'vertical-align' : 'top'
		});

		$('#index > #contents > aside').css({
			'width' : '150px',
			'display': 'inline-block',
			'margin-left' : '-6px',
			'vertical-align' : 'top'
					
		});

		$('#index > #contents > aside > #sub_menu').css({
			'width' : '150px'
		});

		$('#index > #contents > aside > #sub_menu > ol').css({
			'margin-left' : '20px'
		});
	</script>
</body>
</html>