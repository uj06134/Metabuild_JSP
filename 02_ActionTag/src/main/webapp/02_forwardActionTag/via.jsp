<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
Ex01_via.jsp<br>

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	System.out.println("via id:" + id);
	System.out.println("via pw:" + pw);
%>

via.jsp <%= id %><br>
via.jsp <%= pw %><br>

<!-- 거쳐가는 페이지 -->
<jsp:forward page="Ex01_result.jsp">
	<jsp:param name="addr" value="서울" />
</jsp:forward>

<!-- 
sendRedirect: 브라우저가 새로 요청해서 URL이 바뀌고 request 데이터가 끊김 
forward: 서버 안에서 넘겨서 URL은 안 바뀌고 request 데이터가 유지 
-->

