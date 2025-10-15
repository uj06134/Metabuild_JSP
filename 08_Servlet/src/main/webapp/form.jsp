<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script>
    function movePage() {
        location.href = "test.do";
    }
</script>
    
<!-- get 방식 -->
<!-- <a href>, <form method="get">, location.href -->
<a href="test.do">요청</a>
<input type="button" value="요청" onClick="movePage()">

<br>
<form method="get" action="test.do">
	<input type="submit" value="호출">
</form>
<!-- post 방식 -->
<!-- <form method="post">, JS에서 fetch/post -->
<form method="post" action="test.do">
	<input type="submit" value="호출">
</form>

