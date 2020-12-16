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
<script src='./js/guestbook.js'></script>
</head>
<body>
	<jsp:useBean id="dao" class="guestbook.GuestBookDao"></jsp:useBean>

	<div id='guestbook'>
		<h2>방명록</h2>
		<%-- 검색바 --%>

		<form name='frm_gb' id='frm_gb' method="post">
			<input type="search" name='findStr' value='${param.findStr }'
				size='30' placeholder="작성자나 내용으로 검색"> <input type="submit"
				value="검색" id='btnFind' />
		</form>

		<%
			String findStr = "";
		if (request.getParameter("findStr") != null) {
			findStr = request.getParameter("findStr");
		}
		List<GuestBookVo> list = dao.select(findStr);

		request.setAttribute("list", list);
		%>

		<%-- 방명록 입력 화면 --%>
		<c:if test='${not empty sessionScope.mid}'>
			<%@include file="./Insert.jsp"%>
		</c:if>

		<c:if test='${empty sessionScope.mid}'>
			<font color="teal"> 로그인 후 방명록을 작성해주세요.</font>
		</c:if>

		<%--
	
	<c:choose>
	<c:when test="${not empty sessionScope.memberId}">
	</c:when>
	<c:otherwise>
		<font color="teal"> 로그인 후 방명록을 작성해주세요.</font>
	</c:otherwise>
	</c:choose>
	
	 --%>

<hr/>
		<%-- 방명록 --%>
		<div id='list'>

			<c:forEach var='gBookVo' items='${list }'>
				<div id='item'>
				<form name='frm_temp' method='post'>
					<label>작성자 :</label>
					<input type="text" class='memberId mid' name='mid' readonly="readonly">${gBookVo.memberId }</input>
					<label>작성일자 :</label>
					<output class='mdate'>${gBookVo.memberDate }</output>
					<br />
					<textarea rows="5" cols="80" disabled="disabled">${gBookVo.document }</textarea>
					<br />
					<c:if test= "${vo.mid == sessionScope.mid }">
					<div class='btns'>
						<input type="button" value='수정' id='btnUpdate' onclick='funcUpdate(this.form)'> 
						<input type="button" value='삭제' id='btnDelete' onclick='funcDelete(this.form)'>
					</div>
				</div>
			</c:if>
				<input type="hidden" name='serial' value='${vo.serial}' />
				<input type="hidden" name='pwd' />
				</form>
		</div>
	</div>

</body>
<script>
	guestbook()
</script>
</html>