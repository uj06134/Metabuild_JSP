<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
Ex03_form.jsp<br>

<form name="myform" action="Ex03_result.jsp" method="post">
	이름 : <input type="text" name="name" value="홍길동"><br>
	비번 : <input type="password" name="password" value="1234"><br><br>
	
	좋아하는 과일<br>
 	<input type="checkbox" name="fruit" value="귤">귤<br>
	<input type="checkbox" name="fruit" value="딸기">딸기<br>
	<input type="checkbox" name="fruit" value="사과">사과<br>
	<input type="checkbox" name="fruit" value="포도">포도<br>
	<input type="submit" value="전송" onclick="return inputCheck()">
	<input type="reset" value="취소"><br>
		
	</form>