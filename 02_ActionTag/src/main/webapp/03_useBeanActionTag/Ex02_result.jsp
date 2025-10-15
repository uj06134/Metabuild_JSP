<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "myPkg.PersonBean"%>

<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String age = request.getParameter("age");
	String address = request.getParameter("address");
	String tel = request.getParameter("tel");
%>
<!-- java -->
<%
	PersonBean pb = new PersonBean();
	pb.setName(name);
	pb.setAge(Integer.parseInt(age));
	pb.setAddress(address);
	pb.setTel(tel);

%>
이름: <%= pb.getName()%> <br>
나이: <%=	pb.getAge()%> <br>
주소: <%=	pb.getAddress()%> <br>
전화번호: <%=	pb.getTel()%> <br>

<!-- JSP -->
<jsp:useBean id="pb2" class="myPkg.PersonBean"/>	
<jsp:setProperty property="name" name="pb2" param="name"/>
<jsp:setProperty property="age" name="pb2" param="age"/>
<jsp:setProperty property="address" name="pb2" param="addrss"/>
<jsp:setProperty property="tel" name="pb2" param="tel"/>

<jsp:getProperty property="name" name="pb2"/>
<jsp:getProperty property="age" name="pb2"/>
<jsp:getProperty property="address" name="pb2"/>
<jsp:getProperty property="tel" name="pb2"/>
