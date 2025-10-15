<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<Style>
table{
	width: 500px;
	height: 600px;
	font-size: 40px;
	border: 1px solid black;
	
}

tr, td{
	border: 1px solid black;
}
</Style>

<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String [] product = request.getParameterValues("product");
	String time = request.getParameter("time");
	String approve = request.getParameter("approve");
	String agree = request.getParameter("agree");
%>

<table>
  <tr>
    <td>id</td>
    <td><%= id %></td>
  </tr>
  <tr>
    <td>pw</td>
    <td><%= pw %></td>
  </tr>
  <tr>
    <td>product</td>
    <td>
    <% 
    	for(int i=0;i<product.length;i+=1){
    		out.print(product[i] + " ");
    	}
    %>
    </td>
  </tr>
  <tr>
    <td>time</td>
    <td><%= time %></td>
  </tr>
  <tr>
    <td>approve</td>
    <td><%= approve %></td>
  </tr>
  <tr>
    <td>agree</td>
    <td>
    
<%

    if ("on".equals(agree)) {
        out.print("동의함");
    } else {
        out.print("동의하지 않음");
    }
%>
  
    </td>
  </tr>
</table>