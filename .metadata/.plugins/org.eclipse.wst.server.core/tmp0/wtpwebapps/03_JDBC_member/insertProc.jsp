<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	System.out.println("insertProc.jsp");
%>
<!-- Dao 객체생성  -->
<jsp:useBean id="mdao" class="myPkg.MemberDao"/>
<%
	int cnt = mdao.insertMember(id,passwd,name);
	if (cnt != -1){
		response.sendRedirect("select.jsp");
	}else {
		response.sendRedirect("insertForm.jsp");
	}
%>