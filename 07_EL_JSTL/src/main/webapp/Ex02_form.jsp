<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
Ex02_form.jsp<br>
<form action="Ex02_result.jsp" method="post">
<table border="1">
    <tr>
        <td>아이디</td>
        <td><input type="text" name="id" value="wendy"></td>
    </tr>
    <tr>
        <td>이름</td>
        <td><input type="text" name="name" value="웬디"></td>
    </tr>
    <tr>
        <td>비밀 번호</td>
        <td><input type="password" name="password" value="1234"></td>
    </tr>
    <tr>
        <td>나이</td>
        <td><input type="text" name="age" value="30"></td>
    </tr>
    <tr>
        <td colspan="2">
            <input type="submit" value="전송하기">
        </td>
    </tr>
</table>
</form>