<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "myPkg.BookBean"%>
<%
	request.setCharacterEncoding("UTF-8");
%>

<!-- JSP 객체생성 -->
<jsp:useBean id="bb" class="myPkg.BookBean"/>	
<jsp:setProperty property="*" name="bb"/>
<%
	String temp="";
	String [] bookstore = request.getParameterValues("bookstore");
	for(int i=0;i<bookstore.length;i+=1){
		temp += bookstore[i]+" ";
	}
	bb.setBookstore(temp);
%>


<table border="1" width="400" height="400">
  <tr>
    <td>제목</td>
    <td><jsp:getProperty property="title" name="bb"/></td>
  </tr>

  <tr>
    <td>저자</td>
    <td><jsp:getProperty property="author" name="bb"/></td>
  </tr>

  <tr>
    <td>출판사</td>
    <td><jsp:getProperty property="publisher" name="bb"/></td>
  </tr>

  <tr>
    <td>가격</td>
    <td><jsp:getProperty property="price" name="bb"/></td>
  </tr>

  <tr>
    <td>입고일</td>
    <td><jsp:getProperty property="date" name="bb"/></td>
  </tr>

  <tr>
    <td>배송비</td>
    <td><jsp:getProperty property="kind" name="bb"/></td>
  </tr>

  <tr>
    <td>구입가능 서점</td>
    <td><jsp:getProperty property="bookstore" name="bb"/></td>
  </tr>

  <tr>
    <td>보유수량</td>
    <td><jsp:getProperty property="count" name="bb"/></td>
  </tr>
</table> 








