<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
	<% int num = 10;
	if(num > 10){%>
		10보다 크다.
	<%}else if (num < 10){%>
		10보다 작다.
	<%}else { %>
		10과 같다.
	<%} %>
	<br>
	<% 
	int num2 = 10;
	if(num2 > 10){
		out.print("10보다 크다.");
	}else if (num2 < 10){
		out.print("10보다 작다.");
	}else {
		out.print("10과 같다.");
	}
	%>
