<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<h1>회원가입</h1>
<form action="insertProc.jsp" method="post">
	아이디 <input type="text" name="id"> <br>
	비밀번호 <input type="text" name="passwd"> <br>
	이름 <input type="text" name="name"> <br><br>
	
	<input type="submit" value="가입하기">
</form>