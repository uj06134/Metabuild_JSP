<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
Ex02_via.jsp<br>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String color = request.getParameter("color");
	String selectedColor = color + ".jsp";
%>

via.jsp <%=name %><br>
via.jsp <%=color %><br>

<jsp:forward page="<%=selectedColor%>"/>
