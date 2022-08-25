<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/deachul/insert" method="post">
		isbn : <input type="text" id="isbn" name="isbn"/><br>
		제목 : <input type="text" id="title" name="title"/><br>
		ddc : <input type="text" id="ddc" name="ddc"/><br>
		저자 : <input type="text" id="author" name="author"/><br>
		출판사 : <input type="text" id="publisher" name="publisher"/><br>
		페이지 수 : <input type="text" id="page" name="page"/><br>
		책 정보 : <textarea  id="info" name="info"></textarea><br>

		<button type="submit">등록</button>
	</form>
	
</body>
</html>