<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
include.jsp <br>

<% 
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>

include.jsp id: <%=id%> <br>
include.jsp pw: <%=pw%> <br>