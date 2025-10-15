<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
insertForm.jsp(9) => insertProc.jsp<br>
<%
	request.setCharacterEncoding("UTF-8");
%>
<!-- BookBean 객체 생성 -->
<jsp:useBean id="bb" class="myPkg.BookBean"/>
<jsp:setProperty property="*" name="bb"/>

<%
	// bookstore(다수) 넣는법
	String[] bs = request.getParameterValues("bookstore");
	String str = "";
	for(int i=0; i<bs.length; i+=1){
		str += bs[i] + " ";
	}
	bb.setBookstore(str);
%>

<!-- BookDao 객체 생성 -->
<jsp:useBean id="bdao" class="myPkg.BookDao"/>

<% 	
	int cnt = bdao.insertBook(bb);
	if (cnt != -1){
		response.sendRedirect("select.jsp");
	}else {
		response.sendRedirect("insertForm.jsp");
	}
%>