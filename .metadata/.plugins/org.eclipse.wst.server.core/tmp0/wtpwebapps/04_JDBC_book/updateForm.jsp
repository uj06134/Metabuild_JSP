<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "myPkg.*" %>
updateForm.jsp
<br>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript">
	$(function(){
		// alert(1);
	});
	
	function check(){
		if($('input[name=title]').val()==''){
            alert("제목을 입력해주세요.")
            $('input[name=title]').focus();
            return false;
        }
		if ($('input[name="author"]').val().trim() == "") {
	        alert("작가 누락"); 
	        $('input[name="author"]').focus();
	        return false;
	     }
		if ($('input[name="publisher"]').val().trim() == "") {
	        alert("publisher 누락"); 
	        $('input[name="publisher"]').focus();
	        return false;
	    }
		if ($('input[name="price"]').val().trim() == "") {
	        alert("price 누락"); 
	        $('input[name="price"]').focus();
	        return false;
	    }
		if(isNaN($('input[name=price]').val())){ 
            alert('가격은 숫자로 입력해주세요.');
            return false;
        }
		if ($('input[name="date"]').val().trim() == "") {
	        alert("date 누락"); 
	        $('input[name="date"]').focus();
	        return false;
	    }
		
		//if(!$('input[name=kind]').is(":checked")){
		if ($('input[name="kind"]:checked').length == 0) {
            alert("배송비를 선택해주세요.")
            return false;
        }
		
		if($('input[name=bookstore]:checked').length == 0) {
            alert("구입 가능 서점을 한 곳 이상 선택하세요");
            return false;
        }
		//if($('select[name=count]').val() == '') {
		if($('select option:selected').val() == ""){
		    alert("수량을 선택하세요");
		    return false;
		}
	}
		
</script>
<!-- BookDao 객체 생성 -->
<jsp:useBean id="bdao" class="myPkg.BookDao"/>
<%
	String no = request.getParameter("no");
	BookBean bb = bdao.getBookByNo(no);
%>
	
<%
	String[] bookstore = {"교보문고", "알라딘", "yes24", "인터파크"};
	String[] kind = {"유료", "무료"};
%>


<h1>도서 정보 수정 (<%= no %>)</h1>
<form name="myform" action="updateProc.jsp" method="post">
	<input type="hidden" name="no" value="<%= bb.getNo() %>" >
	<table border=1>
		<tr>
			<td>제목</td>
			<td><input type="text" name="title" value="<%= bb.getTitle() %>"></td>
		</tr>
		<tr>
			<td>저자</td>
			<td><input type="text" name="author" value="<%= bb.getAuthor()%>">
		</tr>
		<tr>
			<td>출판사</td>
			<td><input type="text" name="publisher" value="<%= bb.getPublisher()%>">
		</tr>
		<tr>
			<td>가격</td>
			<td><input type="text" name="price" value="<%= bb.getPrice()%>">
		</tr>
		<tr>
			<td>입고일</td>
			<td><input type="date" name="day" value="<%= bb.getDay()%>">
		</tr>

		<tr>
			<td>배송비</td>
			<td>
				<%-- 유료 <input type="radio" name="kind" value="유료" 
				<% 
				if(bb.getKind().equals("유료")){
				%> 
				checked 
				<%
				}
				%>
				>
				무료	<input	type="radio" name="kind" value="무료"
				<% if(bb.getKind().equals("무료")){
				%> 
				checked 
				<%
				}
				%>
				> --%>
				 
				<%
					for(int i=0;i<kind.length;i+=1){
				%>
					<%= kind[i] %><input type="radio" name="kind" value="<%= kind[i]%>"
					<%if(bb.getKind().equals(kind[i])){
					%> checked <%
					}%>> 
				<%
					};
				%>
			</td>
		</tr>
		<tr>
			<td>구입가능 서점</td>
			<td>
				<!-- 교보문고 <input type="checkbox" name="bookstore" value="kyobo">
				알라딘 <input type="checkbox" name="bookstore" value="aladin">
				yes24 <input type="checkbox" name="bookstore" value="yes24">
				인터파크 <input type="checkbox" name="bookstore" value="interpark"> -->
				
				<%
					for(int i=0;i<bookstore.length;i+=1){
				%>
					<%= bookstore[i] %> 
					<input type="checkbox" name="bookstore" value="<%= bookstore[i] %>" 
					<% if(bb.getBookstore().contains(bookstore[i])){%>
					checked<%}%>>
					<%}%>
			</td>
		</tr>
		<tr>
			<td>보유수량</td>
			<td>
				<select name="count">
					<option value="">선택
					<!-- 
					<option value="1">1
					<option value="2">2
					<option value="3">3
					<option value="4">4
					<option value="5">5
					-->
					
				<%
					for(int i=1; i<=5; i+=1){
				%>
					<option value="<%= i %>"
					<%if(bb.getCount() == i){%>
					selected<%}%>>
					<%=i%>
					</option>
				<%
					}
				%>
				</select>
			</td>
		</tr>

	</table>
	<br> <input type="submit" value="전송" onClick="return check()"> 
		<input type="reset" value="취소">
</form>