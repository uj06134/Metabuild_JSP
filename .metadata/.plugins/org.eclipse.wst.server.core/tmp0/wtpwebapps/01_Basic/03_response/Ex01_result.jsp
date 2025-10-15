<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 중간에 거쳐가는 페이지 -->
Ex01_result.jsp<br>
<%
	request.setCharacterEncoding("UTF-8");
	String msg = request.getParameter("msg");
	System.out.println("result: " + msg);
	
	/* HttpServletResponse response = new HttpServletResponse() */
	/* 다음 페이지 이동 */
	
	// 현재 페이지(JSP)에서 다른 페이지로 강제로 이동
	response.sendRedirect("Ex01_result2.jsp?msg="+msg);
%>

result1: <%= msg %>