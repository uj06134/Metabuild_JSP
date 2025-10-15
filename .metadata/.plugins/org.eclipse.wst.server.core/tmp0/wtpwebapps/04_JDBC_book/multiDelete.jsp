<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:useBean id="bdao" class="myPkg.BookDao"/>

<!-- 내가 선택한 번호 콘솔창에 출력  -->
<%
    String[] no = request.getParameterValues("rowCheck");

    for(String str : no) {
        System.out.println(str);
    }
    int cnt = bdao.multiDeleteBook(no);
%>

<jsp:forward page= "select.jsp"/>