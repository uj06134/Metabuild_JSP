<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
result.jsp<br>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>

<%= id %><br>
<%= pw %><br>

<!-- include 지시어: 코드 자체를 복붙 -->
<%-- <%@ include file="include.jsp" %> --%>

<!-- include actiontag: 실행결과를 복붙 -->
<jsp:include page="include.jsp"/> <!-- request 객체를 공유 -->
