<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "myPkg.SimpleBean"%>
Ex01_result.jsp<br>
<%
	request.setCharacterEncoding("UTF-8");
	String msg = request.getParameter("message");
	System.out.println("msg:" + msg);
%>

msg: <%= msg %> <br>
<!-- 자바 객체 생성 -->
<%
	SimpleBean sb = new SimpleBean();
	sb.setMsg(msg);
	String returnMsg = sb.getMsg();
	System.out.println("returnMsg:" + returnMsg);
%>
returnMsg: <%=returnMsg %> <br>
<!-- JSP 객체 생성 -->
<jsp:useBean id="sb2" class="myPkg.SimpleBean"/>
<!-- set메서드(JSP) -->
<jsp:setProperty property="msg" name="sb2"/>
<!-- get메서드(JSP) -->
<jsp:getProperty property="msg" name="sb2"/>

 




