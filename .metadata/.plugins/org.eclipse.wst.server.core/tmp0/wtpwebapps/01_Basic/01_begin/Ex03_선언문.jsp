<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 선언문 -->
<%! 
	public int add(int x, int y){
		return x+y;
	}
%>
<% 
	int num1=3, num2=9;
	int sum = add(num1,num2);
	out.print("합계: " + sum + "<br>");
%>
</body>
</html>
