<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String num = request.getParameter("num");
	System.out.println("deleteProc.jsp num:" + num);
%>

<jsp:useBean id="mdao" class="myPkg.MemberDao"/>
<%
	int cnt = mdao.deleteMember(num);
	if(cnt != -1){
		response.sendRedirect("select.jsp");
	} else{
		response.sendRedirect("select.jsp");
	}
%>