<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
Ex01_result2.jsp<br>
<%
	request.setCharacterEncoding("UTF-8");
	String msg = request.getParameter("msg");
	System.out.println("result2: " + msg);
	
%>

result2: <%= msg %>