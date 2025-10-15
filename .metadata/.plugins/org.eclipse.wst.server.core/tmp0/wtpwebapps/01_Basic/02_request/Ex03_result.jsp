<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
Ex03_result.jsp<br>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String[] sports = request.getParameterValues("sports"); // 여러개
%>

이름: <%= name %> <br>
좋아하는 운동:
<%
	if (sports == null){
		out.println("선택 안함");		
	}
	else{
		for(int i=0;i<sports.length;i+=1){
			if(sports.length -1 == i) {
				out.print(sports[i]);
			}
			else{
				out.print(sports[i] + ", ");
			}
		}
	}
%>