<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
select.jsp(no) => deleteProc.jsp<br>
<%
	String no = request.getParameter("no");
%>

<jsp:useBean id="bdao" class="myPkg.BookDao"/>

<%
	int cnt = bdao.deleteBook(no);
	if (cnt != -1){
		response.sendRedirect("select.jsp");
	}else {
		response.sendRedirect("select.jsp");
	}
%>