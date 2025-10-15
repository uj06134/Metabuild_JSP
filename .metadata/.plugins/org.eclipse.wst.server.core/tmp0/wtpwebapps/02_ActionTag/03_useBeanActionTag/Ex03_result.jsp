<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String [] fruit = request.getParameterValues("fruit");
%>
<hr>
<!-- FruitBean 클래스 안에 fruit 프로퍼티가 배열(String[]) 로 정의 -->
<jsp:useBean id="fb" class="myPkg.FruitBean"/>
<jsp:setProperty property="name" name="fb"/>
<jsp:setProperty property="password" name="fb"/>
<jsp:setProperty property="fruit" name="fb"/>

<!-- 위 3줄을 1줄로 표현 -->
<jsp:setProperty property="*" name="fb"/>


name: <jsp:getProperty property="name" name="fb"/> <br>
pw: <jsp:getProperty property="password" name="fb"/> <br>
fruit: 
<%
	String [] arr = fb.getFruit();
	for(int i=0;i<arr.length;i+=1){
		out.print(arr[i]+" ");
	}
%>
<hr>

<!-- FruitBean2 클래스 안의 fruit 프로퍼티는 문자열(String) 로 정의 -->
<jsp:useBean id="fb2" class="myPkg.FruitBean2"/>
<jsp:setProperty property="name" name="fb2"/>
<jsp:setProperty property="password" name="fb2"/>

<%
	String temp="";
	String [] fruit2 = request.getParameterValues("fruit");
	for(int i=0;i<fruit2.length;i+=1){
		temp += fruit2[i]+" ";
	}
	fb2.setFruit(temp);
%>
name: <jsp:getProperty property="name" name="fb2"/> <br>
pw: <jsp:getProperty property="password" name="fb2"/> <br>
fruit2: <jsp:getProperty property="fruit" name="fb2"/> <br>





