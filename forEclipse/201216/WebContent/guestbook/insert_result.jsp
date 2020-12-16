<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id ="dao" class="guestbook.GuestBookDao" />
<jsp:useBean id ="vo" class="guestbook.GuestBookVo" />
<jsp:setProperty property="*" name="vo" />

<% 

	String msg = dao.insert(vo);
	request.setAttribute("msg", msg);
	
%>

<script>
	let msg = '${msg}';
	alert(msg);
	location.href='../index.jsp?inc=./guestbook/select.jsp';
</script>