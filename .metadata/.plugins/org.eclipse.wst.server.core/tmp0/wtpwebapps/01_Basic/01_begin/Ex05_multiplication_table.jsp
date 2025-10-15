<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style type="text/css">
	table {
		width:80%;
		height: 600px;
		margin: auto;
		text-align: center;
		border-collapse: collapse;
	}
	th, td {
        border: 1px solid black;
    }
    th {
    	background-color: pink; 
    }
    
</style>

<table>
<tr>
<%
	for(int i=2; i<=9; i+=1){
		out.print("<th>" + i + "단</th>");
	}
%>
</tr>
<%
	for(int i=1; i<=9; i+=1){
		out.print("<tr>");
		for (int j=2; j<=9; j+=1){
			out.print("<td>" + j + " × " + i + " = " + (j * i) + "</td>");
		}
		out.print("</tr>");
	}
%>
</table>