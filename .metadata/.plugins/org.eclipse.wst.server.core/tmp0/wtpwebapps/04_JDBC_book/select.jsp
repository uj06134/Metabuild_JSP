<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.*, myPkg.*"%>
<%-- 
page에서 설치
<%@ page import = "java.util.*" %>
<%@ page import = "myPkg.*" %> 
--%>
select.jsp<br>
<!-- BookDao 객체 생성 -->
<jsp:useBean id="bdao" class="myPkg.BookDao"/>

<!-- getAllBook 메서드 호출 -->
<%
	ArrayList<BookBean> list = bdao.getAllBook();
%>

<style type="text/css">
    table {
        width: 1000px;
        margin: auto;
        text-align: center;
    }
    
    table th {
        background-color: Yellow;
    }
</style>

<script type="text/javascript">
	function insert(){
		location.href="insertForm.jsp"
	}
	function selectDelete(){
		flag = false;
		rowObj = document.getElementsByName("rowCheck");
		for(i=0;i<rowObj.length;i+=1){
			if(rowObj[i].checked){
				flag = true;
			}
		}
		if(!flag){
			alert('체크박스를 하나라도 선택하세요')
			return; // 하나라도 삭제하지 못하면 아래코드를 만나지 않게 하기 위해 작성
		}
		
		// myform에서 submit 누른것 처럼 행동
		document.myform.submit();
	}
	function allDelete(obj){
		rowObj = document.getElementsByName("rowCheck");
		// obj.cheked: 체크했으면 true / 체크 안했으면 false
		if (obj.checked){
			// rowCheck 모두 체크 상태
			for(i=0;i<rowObj.length;i+=1){
				rowObj[i].checked = true;
			}
			
		} else{
			// rowCheck 모두 체크 해제상태
			for(i=0;i<rowObj.length;i+=1){
				rowObj[i].checked = false;
			}
		}
	}
</script>
<form name="myform" action="multiDelete.jsp">
<input type="button" value="추가" onclick="insert()">
<input type="button" value="삭제" onclick="selectDelete()">

<table border ="1">
	<tr>
		<th><input type= "checkbox" name="allCheck" onClick="allDelete(this)"></th>
		<th>번호</th>
		<th>제목</th>
		<th>저자</th>
		<th>출판사</th>
		<th>가격</th>
		<th>입고일</th>
		<th>배송비</th>
		<th>구매 가능 서점</th>
		<th>보유 수량</th>
		<th>수정</th>
		<th>삭제</th>
	</tr>

	<%for(BookBean bb : list){%>

	<tr>
		<td><input type= "checkbox" name="rowCheck" value="<%= bb.getNo()%>"></td>
		<td><%= bb.getNo() %></td>
		<td><%= bb.getTitle() %></td>
		<td><%= bb.getAuthor() %></td>
		<td><%= bb.getPublisher() %></td>
		<td><%= bb.getPrice() %></td>
		<td><%= bb.getDay() %></td>
		<td><%= bb.getKind() %></td>
		<td><%= bb.getBookstore() %></td>
		<td><%= bb.getCount() %></td>
		<td><a href = "updateForm.jsp?no=<%= bb.getNo() %>">수정</a></td>
		<td><a href = "deleteProc.jsp?no=<%= bb.getNo() %>">삭제</a></td>
	</tr>
	<%}%>
</table>
</form>
<a href ="insertForm.jsp">삽입</a>


