<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String num = request.getParameter("num");
	String id = request.getParameter("id");
	String passwd = request.getParameter("passwd");
	String name = request.getParameter("name");
	System.out.print(num);
%>

<jsp:useBean id="mdao" class="myPkg.MemberDao"/>
<%
	int cnt = mdao.updateMember(num,id,passwd,name);
	if (cnt > 0){
		response.sendRedirect("select.jsp");
	} else {
		response.sendRedirect("updateForm.jsp?num="+num);

	}
%>