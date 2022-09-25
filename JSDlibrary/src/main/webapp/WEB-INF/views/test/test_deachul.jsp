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
<h1>세션</h1>
${sessionVO }

<h1>유저</h1>
${user }

<h1>책목록</h1>
${bookList }

<h2>책목록2</h2>
<c:forEach items="${bookList }" var="book">
	${book.title } / ${book.ddc } / <button type="button" onclick="addDeachul('${book.isbn}', '${book.title }')">대출 추가</button>
	<br>
</c:forEach>
대출 목록
<div id="deachulList">
<br>
</div>

<button type="button" id="deachulBtn" onclick="loanDeachul()">대출하기</button>
</body>

<script type="text/javascript">
	let dList = [];
	
	
	function addDeachul(isbn, title){
		let cnt = dList.length;
		let ind = 0;
		if(dList.length >= 5){
			alert('대출하려는 책이 5권이 넘었습니다.');
			return;
		}
		while(cnt){
			console.log(dList[ind].isbn);
			console.log(isbn);
			if(dList[ind].isbn == isbn){
				alert('이미 대출신청 목록에 들어있습니디');
				return;
			}
			cnt--;
			ind++;
			if(cnt == 0){
				break;
			}
		}
		let dBook = {
				isbn : '',
				title : ''
		};
		
		// 대출 신청 목록에 추가
		dBook.isbn = isbn;
		dBook.title = title;
		dList.push(dBook);
		
		//리스트 생성
		makeDeachul(dList);
	}
	
	function delDeachul(index){
		for(let i = 0; i <= dList.length - 1; i++){
			if(i == index){
				dList.splice(index,1);
			}
		}
		
		makeDeachul(dList);
	}
	
	function makeDeachul(dList){
		let deachulList = document.getElementById('deachulList');
		deachulList.innerHTML = '';
		
		for(let i =0; i <= dList.length - 1; i++){
			let text = 'isbn : ' + dList[i].isbn + ' / title : ' + dList[i].title + '<br>';
			deachulList.innerHTML += '<div id="'+i+'">' + text+'<button type="button" onclick="delDeachul('+i+')">삭제</button>' + '</div>';	
		}
		
	}
	
	
	function loanDeachul(){
		console.log(dList);
		let arr = new Array();
		
		for(let i in dList){
			
			arr.push(dList[i].isbn);
		}
		
		console.log(arr);
		
		$.ajax({
			url:'/deachul/insert',
			type:'post',
			tradition : true,
			dataType: 'json',
			data:{deachul : arr},
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