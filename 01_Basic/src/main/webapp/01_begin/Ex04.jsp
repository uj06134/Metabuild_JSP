<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int sum=0;
	for(int i=1;i<=10;i+=1){
		sum+=i;
		out.print(i + "<br>");
	}
	out.print("합계: " + sum);
%>
<%
    int sum2 = 0;
    for(int i=1; i<=10; i++){
        sum2 += i;
%>
        <%= i %><br>

<%}     %>

합계 : <%= sum %>
