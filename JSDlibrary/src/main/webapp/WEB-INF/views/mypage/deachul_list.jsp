<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
${dList }
<br>
<br>
<br>
<h1>${user.username }님의 대출목록</h1>
<c:forEach items="${dList }" var="deachul">
${deachul.ddc } / ${deachul.title } / ${deachul.author }<br>
</c:forEach>
</body>
</html>