<%@page import="java.util.Arrays"%>
<%@page import="java.util.ArrayList"%>
<%@page import="bean.EmpVo"%>
<%@page import="java.util.List"%>
<%@page import="bean.EmpDao"%>
<%@ page language="java" contentType="text/jsp; charset=UTF-8" pageEncoding="UTF-8"%>

<%
	String findStr = request.getParameter("findStr");
	EmpDao dao = new EmpDao();
	List<EmpVo> list = dao.search(findStr);
	List<String> sb = new ArrayList<>();
	
	//[{'id' : '%d', 'name' : '%s' ,'email' : '%s' ,'phone' : '%s','salary' : '%f'}, {} ]
	String fmt = "{"
			   + " 'id' 	: '%d' , "
			   + " 'name' 	: '%s' , "
			   + " 'email' 	: '%s' , "
			   + " 'phone' 	: '%s' , "
			   + " 'salary' : '%10.1f'"
			   + "}";
			   
			   
	for(EmpVo vo : list){
		String str = String.format(fmt,
				vo.getEmployee_id(),
				vo.getFirst_name(),
				vo.getEmail(),
				vo.getPhone_number(),
				vo.getSalary()
				);
		str = str.replaceAll("'", "\"");
		sb.add(str);
	}
	out.print(Arrays.toString(sb.toArray()));
	
%>
