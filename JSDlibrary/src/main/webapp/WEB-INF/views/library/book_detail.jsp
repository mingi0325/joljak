<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>도서관 - ${book.title } 상세보기</title>
</head>
<body>
<h2 style="width:500px; border-bottom: 1px solid black;">${book.title }</h2>

<h4 style="width:500px; border-bottom: 1px solid black;">
ddc : ${book.ddc } <br>
isbn : ${book.isbn } <br>
</h4>


${book.info }

<button onclick="pickBook('${book.isbn}')">찜하기</button>
<script src="//code.jquery.com/jquery-3.5.1.min.js" ></script>
</body>

<script type="text/javascript">
function pickBook(isbn){
	
	$.ajax({
		url:'/book/pick',
		type:'post',
		data:{isbn : isbn},
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
</script>
</html>