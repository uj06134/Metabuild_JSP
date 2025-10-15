<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
result1.jsp


<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	
	/* 세션에 데이터를 저장할 때 사용하는 메서드 */
	session.setAttribute("sid", id);
	session.setAttribute("spw", pw);
	
	/* 세션 저장을 10초 유지 (기본 세션 유지시간은 30분) */
	// session.setMaxInactiveInterval(10);
%>
<%= id %> <br>
<%= pw %> <br>

<form method="post" action="result2.jsp">
	가장 좋아하는 스포츠를 선택하세요<br>
	<input type="radio" name="sports" value="태권도">태권도
	<input type="radio" name="sports" value="유도">유도
	<input type="radio" name="sports" value="축구">축구
	<input type="radio" name="sports" value="탁구">탁구
	<br>
	
	가장 좋아하는 게임을 선택하세요<br>
	<select name="game">
		<option value="카트라이더">카트라이더
		<option value="리니지">리니지
		<option value="메이플스토리">메이플스토리
	</select>
	<br>
	<input type="submit" value="전송">
</form>