<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

Ex03_result.jsp <br>

국어: ${param.kor}<br>
영어: ${param.eng}<br>
수학: ${param.math}<br>

<!-- 합계 -->
<c:set var="sum" value="${param.kor + param.eng + param.math}"/>
sum: ${sum} <br> 

<!-- 평균 -->
<c:set var="avg" value="${sum/3}" />
avg: ${avg} <br>

<!-- 학점 출력 -->
<c:if test="${avg >= 90}">
	A학점
</c:if>

<c:if test="${avg >= 80 and avg < 90}">
	B학점
</c:if>

<c:if test="${avg >= 70 and avg < 80}">
	C학점
</c:if>

<c:if test="${avg >= 60 and avg < 70}">
	D학점
</c:if>

<c:if test="${avg < 60}">
	F학점
</c:if>
