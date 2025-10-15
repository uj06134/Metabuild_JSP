<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%
    request.setCharacterEncoding("UTF-8");
%>
<c:forEach var="i" begin="0" end="${fn:length(paramValues.fruit)-1}">
    ${paramValues.fruit[i]}
</c:forEach>

<br>

<c:forEach var="f" items="${paramValues.fruit}">
    ${f}	
</c:forEach>