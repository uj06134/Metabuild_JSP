<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
Ex03_form.jsp<br>

<form action="Ex03_result.jsp" method="post">
	이름: <input type="text" name="name"><br>
	좋아하는 운동: <br>
	<input type="checkbox" name="sports" value="야구">야구
	<input type="checkbox" name="sports" value="배구">배구
	<input type="checkbox" name="sports" value="농구">농구
	<input type="checkbox" name="sports" value="축구">축구><br><br>
	
	<input type="submit" value="전송">

</form>