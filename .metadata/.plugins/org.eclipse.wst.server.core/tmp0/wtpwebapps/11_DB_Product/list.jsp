<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

list.jsp<br>

<table border="1" >
	<tr>
	    <th>아이디</th>
	    <th>이름</th>
	    <th>단가</th>
	    <th>제조사</th>
	    <th>입고일자</th>
	    <th>수정</th>
	    <th>삭제</th>
	</tr>
	<c:forEach var="pb" items="${lists}">
		<tr>
			<td>${pb.id}</td>
			<td>${pb.name}</td>
			<td>${pb.price}</td>
			<td>${pb.company}</td>
			<td>${pb.regdate}</td>
			<td><a href = "updateForm.prd?id=${pb.id}">수정</a></td>
			<td><a href = "delete.prd?id=${pb.id}">삭제</a></td>
		</tr>
	</c:forEach>
</table>
<br>
<a href="insertForm.jsp">삽입</a>

<!-- 
MVC 패턴 정리

Model  : DB/비즈니스 로직 담당 (DAO, Bean)
View   : 화면 출력 담당 (JSP)
Controller : 요청/응답 흐름 제어 (Servlet)

흐름 : 
사용자 요청 → Controller → Model(DB 처리) → 결과 전달 → View(JSP 출력)
-->