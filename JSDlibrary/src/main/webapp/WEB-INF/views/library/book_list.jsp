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
<c:forEach items="${list}" var="book">
	<div>
	${book.title }  / ${book.ddc }
	<input type="hidden" name="book" value="${book.title }">
	</div><br>
</c:forEach>

ID : <input type="text" id="id"/><br>
PASS : <input type="text" id="pass"/>
<button type="button" id="insert" onclick="insertId()">입력</button>

<br>
<br>
찾아올 인덱스 <input type="text" id="ind">
<button type="button" id="insert" onclick="searchId()">확인</button>
</body>
<script src="//code.jquery.com/jquery-3.5.1.min.js" ></script> 
<script>
function insertId(){
	let id = document.getElementById('id').value;
	let pass = document.getElementById('id').value;
	
	$.ajax({
		url:'/library/test',
		type:'get',
		contentType: 'application/json; charset=utf-8;',
		dataType: 'json',
		data:{'id' : id, 'pass' : pass},
		success: function(res){
			console.log('success');
			alert(res.msg);	
		},
		error: function(res){
			console.log(res);
			alert('보내지 못했음.');
		}
		
	});
}

function searchId(){
	let i = document.getElementById('ind').value;
	console.log(document.getElementsByName('book')[i].value);
}
</script>
</html>