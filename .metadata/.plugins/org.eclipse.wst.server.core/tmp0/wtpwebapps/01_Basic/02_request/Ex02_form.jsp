<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
Ex02_form.jsp <br>

<form action= "Ex02_result.jsp" method="post">
	아이디: <input type="text" name="id"><br>
	비밀번호: <input type="text" name="pw"><br>
	성별:
	<input type="radio" name="gender" value="남자">남자
	<input type="radio" name="gender" value="여자">여자 <br>
	
	취미:
	<select name="hobby">
		<option value="등산">등산</option>
		<option value="요리">요리</option>
		<option value="공부">공부</option>
		<option value="게임">게임</option>
	</select>
	<br>
	
	<input type = "submit" value ="전송">
    <input type = "reset" value ="초기화">

</form>