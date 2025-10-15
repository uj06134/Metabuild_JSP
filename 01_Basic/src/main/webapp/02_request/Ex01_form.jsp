<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
Ex01_form.jsp<br>

<!-- Ex01_form에서 요청 -->
<form action="Ex01_result.jsp" method="post">  
<!-- get: 주소창에 값이 그대로 보임 (기본값) -->
<!-- post: 주소창에 값이 보이지 않음 -->	

	이름: <input type="text" name="name"><br>
	나이: <input type="text" name="age"><br><br>
	<input type ="submit" value="확인"> 
</form>
