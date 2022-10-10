<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="../../resources/js/common_function.js"></script>
</head>
<body>
${user }
${flag }
<br>
<c:if test="${flag == false }">
로그인 안했음<br>
id : <input type="text" id="id"><br>
pass : <input type="password" id="pass"><br>

<button onclick="signin()">회원가입</button><br>
<button onclick="login()">로그인</button>
</c:if>
<c:if test="${flag == true }">
로그인 했음
<br>
${user.username }님 환영합니다<br>
<a href="/deachulList">대출목록으로</a>
<button onclick="logout()">로그아웃</button>

</c:if>

<br>
<h1>로그인 여부 상관없는 버튼</h1>
<a href="/book/getList?page=1">책목록</a>
<a href="/board/getList?page=1">공지사항</a>
</body>

<script type="text/javascript">
function signin(){
	location.href ="/signin";
}

function login(){
	let idVal = $('#id').val();
	let passVal = $('#pass').val();
	
	let userInfo = {
		id : idVal, 
		pass : passVal
	};
	
	let paramJson = JSON.stringify(userInfo);
	
	console.log(paramJson);
	
	sendPost("/sign/login", userInfo);
}	


function logout(){
	location.href ="/sign/logout";
}
</script>
</html>