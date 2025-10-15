<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
updateForm.jsp(새로 입력한 항목) => updateProc.jsp <br>
<%
	request.setCharacterEncoding("UTF-8");
%>

<jsp:useBean id="bdao" class="myPkg.BookDao"/>
<jsp:useBean id="bb" class="myPkg.BookBean"/>
<jsp:setProperty property="*" name="bb"/>

<%
	// 새로 입력할 항목이 여러개일 수 도 있기 떄문에 작성
	String[] bs = request.getParameterValues("bookstore");
	String str = "";
	for(int i=0; i<bs.length; i+=1){
		str += bs[i] + " ";
	}
	bb.setBookstore(str);
%>

<%
	int cnt = bdao.updateBook(bb);
	if (cnt != -1){
		response.sendRedirect("select.jsp");
	}else {
		response.sendRedirect("updateForm.jsp?no=" + bb.getNo());
	}
%>
