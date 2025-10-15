<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	document.write("안녕하세요")
	document.write("<br>")
</script>
</head>
<body>
	안녕하세요2 <br>
	<% 	
	String s = "안녕하세요3";
	%>
	<%= s%> <br>
</body>
</html>
<%-- 
Scriptlet: JSP 페이지 안에 직접 자바 코드를 삽입
<% %>
<%= %>: 표현식
<%@ %>: 지시어 
<%! %>: 선언문
--%>