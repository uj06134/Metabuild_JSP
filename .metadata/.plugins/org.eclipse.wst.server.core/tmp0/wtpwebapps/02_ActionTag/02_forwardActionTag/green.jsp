<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
green.jsp

<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String color = request.getParameter("color");
	String imgSrc = "../images/" + color + ".jpg";
%>

<%= name %>
<%= color %>
<img src = "<%= imgSrc %>">