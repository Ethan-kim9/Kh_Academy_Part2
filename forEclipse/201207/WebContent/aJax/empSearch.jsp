<%@page import="bean.EmpDao"%>
<%@page import="bean.EmpVo"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String findString = request.getParameter("findString");
	

	EmpDao dao = new EmpDao();
	List<EmpVo> list = dao.search(findString);
	
	StringBuilder stringBuilder = new StringBuilder();
		String format =
				 "<div class = 'employee'>"
				+ "<div>사번		: %d		</div>" 
				+ "<div>성명		: %s		</div>" 
				+ "<div>이메일 	: %s		</div>" 
				+ "<div>연락처 	: %s		</div>"
				+ "<div>급여 	: %10.1f	</div>" 
				+ "</div>";
				
	for(EmpVo vo : list){
		String str = 
				String.format(format, 
				vo.getEmployee_id(),
				vo.getFirst_name(),
				vo.getEmail(),
				vo.getPhone_number(),
				vo.getSalary()
				);
		stringBuilder.append(str);				
	}
	
	out.print(stringBuilder.toString());
%>