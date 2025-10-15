<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
Ex04_form_김훈종.jsp
<script type="text/javascript" src = "../js/jquery.js"></script>
<script type="text/javascript">
	$(function(){
		
	});
	function check(){
		if ($("input[name = 'title']").val() == ''){
			alert("제목을 입력하세요");
			$("input[name = 'title']").focus();
			return false;
		}
		
		if ($("input[name = 'author']").val() == ''){
			alert("저자를 입력하세요");
			$("input[name = 'author']").focus();
			return false;
		}
		
		if ($("input[name = 'publisher']").val() == ''){
			alert("출판사 입력하세요");
			$("input[name = 'publisher']").focus();
			return false;
		}
		
		if ($("input[name = 'price']").val() == ''){
			alert("가격을 입력하세요");
			$("input[name = 'price']").focus();
			return false;
		}
		
		if ($("input[name = 'date']").val() == ''){
			alert("입고일을 입력하세요");
			$("input[name = 'date']").focus();
			return false;
		}
		
		if ($("input[name = 'kind']:checked").length == 0){
			alert("배송비를 선택하세요")
			return false;
		}
		
		if ($("input[name = 'bookstore']:checked").length == 0){
			alert("서점을 선택하세요");
			$("input[name = 'bookstore']").focus();
			return false;
		}
		
		if ($("select[name = 'count']").val() == ''){
			alert("보유수량을 입력하세요");
			return false;
		}
		
		
	}
</script>

<br>


<h1>도서 정보 입력</h1>
<form name="myform" action="Ex04_result_김훈종.jsp" method="post">
	<table border=1>
		<tr>
			<td>제목</td>
			<td><input type="text" name="title"></td>
		</tr>
		<tr>
			<td>저자</td>
			<td><input type="text" name="author">
		</tr>
		<tr>
			<td>출판사</td>
			<td><input type="text" name="publisher">
		</tr>
		<tr>
			<td>가격</td>
			<td><input type="text" name="price">
		</tr>
		<tr>
			<td>입고일</td>
			<td><input type="date" name="date">
		</tr>

		<tr>
			<td>배송비</td>
			<td>유료 <input type="radio" name="kind" value="유료"> 무료 <input
				type="radio" name="kind" value="무료">
			</td>
		</tr>
		<tr>
			<td>구입가능 서점</td>
			<td>교보문고 <input type="checkbox" name="bookstore" value="kyobo">
				알라딘 <input type="checkbox" name="bookstore" value="aladin">
				yes24 <input type="checkbox" name="bookstore" value="yes24">
				인터파크 <input type="checkbox" name="bookstore" value="interpark">
		</tr>
		<tr>
			<td>보유수량</td>
			<td><select name="count">
					<option value="">선택
					<option value="1">1
					<option value="2">2
					<option value="3">3
					<option value="4">4
					<option value="5">5
			</select></td>
		</tr>

	</table>
	<br> <input type="submit" value="전송" onClick="return check()"> 
		<input type="reset" value="취소">
</form>