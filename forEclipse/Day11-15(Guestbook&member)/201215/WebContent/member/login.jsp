<%@page import="bean.MemberDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:useBean id="dao" class="bean.MemberDao"/>
<jsp:useBean id="vo" class="bean.MemberVo"/>

<!-- vo객체가 가지고 있는 모든 setter를 사용하여 값을 대입 -->
<jsp:setProperty property="*" name="vo"/>


<% /*
   vo.setId(request.getParameter("id"));
   vo.setPwd(request.getParameter("pwd"));
   */
   //response.setContentType("text/html;charset=utf-8");
   //String id = request.getParameter("id");
   //String pwd = request.getParameter("pwd");
   
   
   
   
   
   
   // database 존재 유무

   
   /*
   session.setAttribute("id", id);
   response.sendRedirect("../index.jsp");
   */
   
   
   //MemberDao dao = new MemberDao();
   boolean b = dao.login(vo.getMemberId(), vo.getPassWord());
   
   if(b) {
      session.setAttribute("memberId", vo.getMemberId());
      response.sendRedirect("../index.jsp");
   } else {
      // 로그인 실패
      /*
      out.print("<script>");
      out.print("      alert('fail')");
      out.print("      location.href='../index.jsp'");
      out.print("</script>");
      */
%>

   <script>
      alert('fail');
      location.href='../index.jsp';
   </script>


   <% } %>