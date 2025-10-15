<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
Ex02_result.jsp<br>
<% 
	request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="pb" class="myPkg.PersonBean"/>
<jsp:setProperty property="*" name="pb"/>

아이디1: <%=request.getParameter("id") %> <br>
아이디2: ${param.id} <br>
아이디3: <%=pb.getId()%> <br>
아이디4: <jsp:getProperty property="id" name="pb"/> <br>
아이디5: ${pb.id} <br>
아이디6: ${pb['id']} <br>
아이디7: ${param["id"]} <br>

이름: ${param.name} <br>

비밀번호: ${pb.password} <br>

나이: ${param["age"]} <br>

주소: ${param.addr} <br>

