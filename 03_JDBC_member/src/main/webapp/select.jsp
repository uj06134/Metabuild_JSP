<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "myPkg.*" %>
<jsp:useBean id="mdao" class="myPkg.MemberDao"/>
<%
	ArrayList<MemberBean> lists = mdao.getAllMembers();
%>
<style type="text/css">
    table {
        width: 1000px;
        margin: auto;
        text-align: center;
    }
    
    table th {
        background-color: skyblue;
    }
</style>

<table border="1">
	<tr>
		<th><input type="checkbox"></th>
		<th>번호</th>
		<th>아이디</th>
		<th>비밀번호</th>
		<th>이름</th>
		<th>가입일</th>
		<th>수정</th>
		<th>삭제</th>
	</tr>
	<%
		for(int i=0; i<lists.size();i+=1){
	%>
			<tr>
				<td><input type="checkbox"></td>
				<td><%=lists.get(i).getNum() %></td>
				<td><%=lists.get(i).getId() %></td>
				<td><%=lists.get(i).getPasswd() %></td>
				<td><%=lists.get(i).getName() %></td>
				<td><%=lists.get(i).getRegister() %></td>
				<td><a href = "updateForm.jsp?num=<%=lists.get(i).getNum()%>">수정</a></td>
				<td><a href = "deleteProc.jsp?num=<%=lists.get(i).getNum()%>">삭제</a></td>
			</tr>	
	<%	
		}
	%>
</table>

<br>

<a href="insertForm.jsp">삽입폼</a>