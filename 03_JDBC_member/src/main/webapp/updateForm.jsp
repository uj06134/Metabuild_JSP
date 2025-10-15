<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "myPkg.*" %>
<%
	String num = request.getParameter("num");
%>

<jsp:useBean id ="mdao" class="myPkg.MemberDao"/>
<%
	MemberBean mb = mdao.getMember(num);
%>

num: <%=num %> <br>

<h1>회원수정</h1>
<form action="updateProc.jsp" method="post">
	<input type="hidden" name="num" value="<%=num%>">
	아이디 <input type="text" name="id" value="<%=mb.getId()%>"> <br>
	비밀번호 <input type="text" name="passwd" value="<%=mb.getPasswd()%>"> <br>
	이름 <input type="text" name="name" value="<%=mb.getName()%>"> <br><br>
	
	<input type="submit" value="수정하기">
</form>