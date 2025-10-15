<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
result2.jsp <br>

<%
	request.setCharacterEncoding("UTF-8");

	/* 세션에 저장된 값을 꺼내기 */
	Object sid = session.getAttribute("sid");
	String spw = (String)session.getAttribute("spw");

	String sports = request.getParameter("sports");
	String game = request.getParameter("game");
%>
<%= sid %> <br>
<%= spw %> <br>
<%= sports %> <br>
<%= game %> <br>

<%
	/* 세션 무효화 */
	session.invalidate();
%>