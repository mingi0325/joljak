<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<title>Insert title here</title>
</head>
<body>
제목 : ${bvo.title }<br>
작성자 : ${bvo.userid }<br>
조회수 : ${bvo.count }<br>
작성일 : ${bvo.wdate }<br>
내용 : ${bvo.contents }<br>
<input type="hidden" value="${bvo.bNo }" id="bNo">
<h4>댓글</h4>
<c:if test="${sessionScope.userid ne null }">
	<input type="text" name="contents" id="contents">
	<button onclick="insert_comment()">댓글 등록하기</button>
</c:if>
<br>
<table>
<tr>
	<td>작성자</td>
	<td>내용</td>
<tr>
<c:forEach items="${cList }" var="comment">
<tr>
	<td>${comment.userid }</td>
	<td>${comment.contents }</td>
</tr>
</c:forEach>
</table>
</body>

<script type="text/javascript">
function insert_comment(){
	let contents = $('#contents').val();
	let bNo = $('#bNo').val();
	console.log(contents + '/' + bNo);
	
	$.ajax({
		url:'/board/comment',
		type:'get',
		dataType: 'json',
		data:{
			contents : contents,
			pkNo : bNo
			},
		success: function(res){
			if(res.code == '000'){
				
				window.location.reload();
				
			}else{
				alert('댓글 입력에 실패했습니다.');
			}
		},
		error: function(res){
			alert('보내지 못했음.');
		}
	});
	
}
</script>
</html>