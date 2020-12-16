<%@page import="java.io.PrintWriter"%>
<%@page import="bean.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<jsp:useBean id="dao" class="bean.MemberDao"/>
<jsp:useBean id="vo"  class="bean.MemberVo"/>

<%--vo객체가 가지고 있는 모든 setter를 사용하여 값을 대입 --%>
<jsp:setProperty property="*" name="vo"/>

    
<%
	vo.setMemberId(request.getParameter("mid"));
	vo.setPassWord(request.getParameter("pwd"));
	
	//response.setContentType("text/html;charset=utf-8");
	//String mid = request.getParameter("mid");
	//String pwd = request.getParameter("pwd");
	
	
	
	
	// database에 존재 유무
	
	//session.setAttribute("mid", mid);
	//response.sendRedirect("../index.jsp");
	
	
	//MemberDao dao = new MemberDao();
	//boolean b = dao.login(mid, pwd);
	
	boolean b = dao.login(vo.getMemberId(), vo.getPassWord() );
	
	if(b){
		session.setAttribute("mid", vo.getMemberId());
		response.sendRedirect("../index.jsp");
	}else{
		//로그인 실패
		%>
		<script>
			alert('fail');
			location.href='../index.jsp';	
		</script>
	
	<% } %>