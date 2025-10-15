<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

Ex04_result.jsp <br>
    
<% 
	request.setCharacterEncoding("UTF-8");
%>  

<!-- 자바의 switch ~ case ~ default 와 비슷 -->
<c:choose>
	<c:when test="${param.food == '피자'}">
		피자는 맛있다
	</c:when>
	<c:when test="${param.food == '피자'}">
		떡볶이는 맛있다
	</c:when>
	<c:when test="${param.food == '피자'}">
		짜장면은 맛있다
	</c:when>
	<c:otherwise>
		치킨은 맛있다
	</c:otherwise>
</c:choose>