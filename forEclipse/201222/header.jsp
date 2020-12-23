<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<header id='header'>
	<nav id='nav'>
		<ul>
			<li><a href='index.jsp'>HOME</a></li>
			<li><a href='index.jsp?sub=./jquery/menu.jsp'>JQUERY</a></li>
			<li><a href='index.jsp?sub=./ajax/menu.jsp'>AJAX</a></li>
			<li><a href='index.jsp?sub=./mybatis/menu.jsp'>MYBATIS</a></li>
			<li><a href='index.jsp?sub=./jsp/menu.jsp'>JSP</a></li>
			<li><a href='index.jsp?inc=./guestbook/select.jsp'>방명록</a></li>
			<!--   <li><a href='index.jsp?inc=./member/select.jsp'>회원관리</a></li> -->
			<li><a href='member.do?job=select'>회원관리</a></li> <!-- 서블릿 코드가 모두 완성이 되었을 경우 -->
			
			<li>게시판</li>
		</ul>
	</nav>
</header>
    