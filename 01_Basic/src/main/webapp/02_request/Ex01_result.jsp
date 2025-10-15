<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

Ex01_result.jsp<br>

<%	
	// 한글 처리는 먼저 실시
	request.setCharacterEncoding("UTF-8");

	// 내장객체: 이미 만들어져 있는 객체 
	// HttpServletRequest request = new HttpServletRequest()
	// request: 요청 정보를 가지고 있는 객체
	String name = request.getParameter("name"); // getParameter: 문자열로만 받음
	String age = request.getParameter("age");
%>
이름: <%= name %> <br>
나이: <%= age %> <br>