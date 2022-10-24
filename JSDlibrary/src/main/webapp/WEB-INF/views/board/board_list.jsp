<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>공지사항 목록</h1>
session : ${sessionScope }<br>
id : ${sessionScope.userid }<br>
<c:if test="${fn:length(boardList) == 0}">
게시물이 없습니다.
</c:if>
<c:if test="${fn:length(boardList) != 0}">
<table>
<tr>
	<td>순번</td>
	<td>제목</td>
	<td>작성자</td>
	<td>게시일</td>
</tr>
<c:forEach items="${boardList}" var="board">
	<tr onclick="detailBoard('${book.dNo}')" style="cursor: pointer;">
	<td>${board.dNo }</td>
	<td>${board.title }</td>
	<td>관리자</td>
	<td>${book.date }</td>
	</tr>
</c:forEach>
</table>
</c:if>

<c:if test="${sessionScope.grade eq 'admin'}">
<button type="button" onclick="insertBoard()">게시글 작성</button>
</c:if>
</body>
<script src="//code.jquery.com/jquery-3.5.1.min.js" ></script> 
<script type="text/javascript">
function insertBoard(){
	console.log("찡긋!");
}
</script>
</html>