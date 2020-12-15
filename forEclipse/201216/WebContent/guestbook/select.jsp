<%@page import="guestbook.GuestBookVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SELECT</title>
<link rel='stylesheet' type="text/css" href="./css/guestbook.css">
<script src ='./js/guestbook.js'></script>
</head>
<body>
<jsp:useBean id="dao" class="guestbook.GuestBookDao"></jsp:useBean>

	<div id = 'guestbook'>
		<h2>방명록</h2>
	<%-- 검색바 --%>
	
	<form name='frm_gb' id='frm_gb' method="post">
	<input type="search" name='findStr' value='${param.findStr }' 
			size = '30' placeholder="작성자나 내용으로 검색">
	<input type="submit" value="검색" id = 'btnFind'/>
	</form>
	
	<%
		String findStr ="";
	if(request.getParameter("findStr") != null){
		findStr = request.getParameter("findStr");
	}
		List<GuestBookVo> list = dao.select(findStr);
		
		request.setAttribute("list", list);
	%>
	
	
	<%-- 방명록 --%>
	<div id = 'list'>
	<c:forEach var='gBookVo' items= '${list }'>
		<div id ='item'>
			<label>작성자 :</label>
			<output class = 'memberId'>${gBookVo.memberId }</output>
			<label>작성일자 :</label>
			<output class = 'mdate'>${gBookVo.memberDate }</output>
			<br />
			<textarea rows="5" cols="80">${gBookVo.document }</textarea>
			<br />
			<div class = 'btns'>
			<input type="button" value='수정' id ='btnUpdate'>
			<input type="button" value='삭제' id ='btnDelete'>
			</div>
		</div>
	</c:forEach>
	</div>
	</div>
		
</body>
</html>