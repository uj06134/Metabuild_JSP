<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    request.setCharacterEncoding("UTF-8");

    String[] num = request.getParameterValues("rowcheck");

    for(String str : num){
        System.out.println(str);
    }
%>

<jsp:useBean id="mdao" class="myPkg.MovieDao"/>
<%
    int cnt = mdao.multiDeleteMovie(num);
    if(cnt != -1){    // 삭제 성공
        System.out.println("삭제 성공: " + cnt);
    }else{
        System.out.println("삭제 실패");
    }
    response.sendRedirect("select.jsp");
%>