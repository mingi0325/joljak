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

<h1>그냥 </h1>
${list.get(0).title }
${list.get(0).ddc }
<br>
${list.get(1).title }
${list.get(1).ddc }
<br>
<h1>jstl 적용</h1>
<c:forEach items="${ list}" var="item">
	<div>
	${item.title }  / ${item.ddc }
	</div><br>
</c:forEach>

ID : <input type="text"/><br>
PASS : <input type="text"/>
</body>
</html>