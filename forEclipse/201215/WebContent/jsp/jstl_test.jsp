<%@page import="bean.MemberVo"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!-- JSTL사용을 위한 지시문이 필요하다  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL_TEST</title>
</head>
<body>
	<div id='el_ctrl'>
		<h2>JSTL(JAVA STANDARD TAG LIBRARY) 제어문 연습</h2>

		<%
			String name = "Ethan kim";
		int score = 99;

		pageContext.setAttribute("page_name", name);
		pageContext.setAttribute("page_score", score);

		request.setAttribute("req_name", name);
		request.setAttribute("req_score", score);
		%>
		<h3>c:out -> JSTL을 이용한 출력 문장</h3>
		<ul>
			<li>Name : <c:out value='${pageScope.page_name }'
					default="이름을 입력하세요." /></li>
			<li>Score : <c:out value='${pageScope.page_score }' default="0점" /></li>
			<li>Name(req) : <c:out value='${requestScope.req_name }'
					default="이름을 입력하세요." /></li>
			<li>Score(req) : <c:out value='${requestScope.req_score }'
					default="0점" /></li>
			<li>Name(page) : <c:out value='${page_name }' /></li>
			<li>Score(page) : <c:out value='${page_score }' /></li>
		</ul>
		<br />
		<h3>c:set | c:remove | c:out</h3>
		<ul>
			<c:set var='score' value='100' />
			<li>Score 1 : <c:out value='${score }' />
			</li>
			<c:remove var='score' />
			<li>Score 2 : <c:out value='${score }' default='변수의 값이 삭제됨.' />
			</li>
		</ul>
		<br />
		<h3>c:if</h3>
		<br />
		<ul>
			<li><c:if test='${req_score >=90 }'>
					<font color='teal'>장학생</font>
				</c:if></li>
		</ul>
		<br />
		<h3>C:if 응용</h3>
		<br />
		<fieldset>
			<legend>c:if를 이용해서 해결해보기</legend>
			<div>
				<p>kor , eng 변수에 임의의 값을 대입, request 영역에 저장 후 두 수의 합이 180이상일 경우
					'우등생' 출력하기</p>
			</div>
			<%
				int kor = 90;
			int eng = 90;

			request.setAttribute("req_kor", kor);
			request.setAttribute("req_eng", eng);
			%>
			<ul>
				<li><c:if test='${(req_kor + req_eng) >= 180}'>
						<font color='teal'>우등생</font>
					</c:if></li>
			</ul>
		</fieldset>

		<br />

		<h3>c: choose | c: when | c:otherwise</h3>
		<br />
		<fieldset>
			<div>[c:choose] [c:when test= '조건식' T /c:when] [c:when test=
				'조건식' T /c:when] ... [c:otherwise>] 맞는 조건식이 없을 경우? [/c:otherwise>]
				[/c:choose>]</div>
		</fieldset>
		<br />

		<fieldset>
			<div>
				구매수량, 단가를 임의의 변수에 저장하여 scope 에 담고,<br /> 구매금액 (수량 * 가격)에 따라 사은품이
				지급되도록 choose문을 작성<br /> - 1000 이상 : 휴지<br /> - 10000 이상 : 자전거<br />
				- 100000 이상 : 아파트<br />
			</div>
			<hr />
			<h4>방법1(JSP)</h4>
			<br />
			<%
				int price = 500;
			int count = 500;

			request.setAttribute("priceProduct", price);
			request.setAttribute("countProduct", count);
			%>


			<c:choose>
				<c:when test='${(priceProduct * countProduct) >= 100000}'> 
				아파트<br />
				</c:when>
				<c:when test='${(priceProduct * countProduct) >= 10000}'>
				자전거<br />
				</c:when>
				<c:otherwise>
				휴지<br />
				</c:otherwise>
			</c:choose>
			<br />
			<hr />

			<h4>방법2</h4>

			<br />
			<c:set var='price' value='500' />
			<c:set var='count' value='500' />
			<c:choose>
				<c:when test='${(price * count) >= 100000}'> 
				아파트<br />
				</c:when>
				<c:when test='${(price * product) >= 10000}'>
				자전거<br />
				</c:when>
				<c:otherwise>
				휴지<br />
				</c:otherwise>
			</c:choose>
			<br />
		</fieldset>
		<br />
		<h3>c: forTokens</h3>
		<br />
		<fieldset>
			<div>[c:forTokens var ='변수명' items='토큰 문자열' delims='구분자']
				[/c:forTokens]</div>
		</fieldset>
		<br />

		<c:forTokens var='flowers' items="개나리,진달래,코스모스,장미,국화,무궁화" delims=",">
			<ul>
				<li><c:out value='${flowers }' /></li>
			</ul>
		</c:forTokens>
		<br />
		<h3>c:forEach</h3>
		<br />
		<fieldset>
			<div>[c:forEach var ='변수명' items='배열'| Collection' begin='시작값'<br/>
			end='끝값' step='증가값']</div>
		</fieldset>
		<br />
		<fieldset>
			<legend>1- 100 사이의 홀수만 출력</legend>
			<c:forEach var='i' begin='1' end='100' step='2'>
				<c:out value='${i }' />(${i })
		</c:forEach>
		</fieldset>
		<br />
		<fieldset>
			<legend>List[MemberVo] 타입의 데이터를 scope에 저장, for Each문으로 출력</legend>
		</fieldset>
		<br />
		<%
			List<MemberVo> list = new ArrayList<>();
			MemberVo mv1 = new MemberVo();
			mv1.setMemberId("Kim");
			mv1.setPhone("010-3234-1111");
			list.add(mv1);
			MemberVo mv2 = new MemberVo();
			mv2.setMemberId("Lee");
			mv2.setPhone("010-3234-2222");
			list.add(mv2);	
			MemberVo mv3 = new MemberVo();
			mv3.setMemberId("Park");
			mv3.setPhone("010-3234-3333");
			list.add(mv3);
			
			request.setAttribute("list", list);
			%>
			
		<c:forEach var='memberVo' items ='${list}'>
			<ol>
				<li>${memberVo.memberId} : ${memberVo.phone } </li>
			</ol>
		</c:forEach>
	</div>
</body>
</html>