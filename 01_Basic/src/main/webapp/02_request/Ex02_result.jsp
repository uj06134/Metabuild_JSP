<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
Ex02_result.jsp<br>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String gender = request.getParameter("gender");
	String hobby = request.getParameter("hobby");
	
	String addr = request.getParameter("addr");
	System.out.println("addr: " + addr);
%>

아이디: <%= id %> <br>
비밀번호: <%= pw %> <br>
성별: <%= gender %> <br>
취미: <%= hobby %>
주소: <%= addr %>