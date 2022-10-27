<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서관 - ${book.title } 상세보기</title>
</head>
<body>
<h2 style="width:500px; border-bottom: 1px solid black;">${book.title }</h2>

<h4 style="width:500px; border-bottom: 1px solid black;">
저자 : ${book.author } <br>
출판사 : ${book.publisher } <br>
</h4>
<input type="hidden" value="${book.bkNo }" id="bkNo">
<textarea style="border: none; width:600px; height: 200px;">
${book.info }
</textarea>

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
<script src="//code.jquery.com/jquery-3.5.1.min.js" ></script>
</body>

<script type="text/javascript">
function insert_comment(){
	let contents = $('#contents').val();
	let bNo = $('#bkNo').val();
	console.log(contents + '/' + bNo);
	
	$.ajax({
		url:'/book/comment',
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