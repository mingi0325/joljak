<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h1>책목록</h1>
<table>
<tr>
	<td>서명</td>
	<td>저자</td>
	<td>출판사</td>
	<td>ddc</td>
</tr>
<c:forEach items="${bList}" var="book">
	<tr>
	<td>${book.title }</td>
	<td>${book.author }</td>
	<td>${book.publisher }</td>
	<td>${book.ddc }</td>
	</tr>
</c:forEach>
</table>


<h2>페이징 버튼</h2>
<c:forEach begin="1" end="${pvo.totalPages }" varStatus="step">
<button onclick="pageClick(${step.index})">${step.index }</button>
</c:forEach>
<br>
<br>
</body>
<script src="//code.jquery.com/jquery-3.5.1.min.js" ></script> 
<script>
function pageClick(index){
	location.href='/book/getList?page=' + index;
}
</script>
</html>