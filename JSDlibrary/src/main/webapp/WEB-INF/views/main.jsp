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
로그인 했을 시 보이는 버튼들(이건 추후 위의 태그와 함께 필요한 곳에 배치해야함)
<button onclick="insertBoardForm()">자유게시판 등록</button>
<!-- 데이터 전송을 위한 hidden form -->
<form id="frmData_board" name="frmData_board">
	
</form>
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



<h1>화면단</h1>

<div id="div_board" style="border-bottom: 1px solid black; border-top: 1px solid black;">
	<h3>게시판</h3>
	
	<table id="table_board">
	<thead>
		<tr>
			<td>순번</td>
			<td>제목</td>
			<td>작성자</td>
			<td>작성일</td>
			<td>조회수</td>
		</tr>
	</thead>
	
	<tbody id="board_body">
	
	</tbody>
	</table>
	
	<select id="board_paging" onchange="selectBoard()"></select>
</div>
<script type="text/javascript">

$(function(){
	callBoard(1);
})
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

function insertBoardForm(){
	
	let pop_title = '게사판 등록';
	let pop_feature = "scrollbars=yes,width=800,height=600,location=no, resizable=yes";
	
	window.open("", pop_title,pop_feature);
	
	let frmData = document.frmData_board;
	frmData.action = "/board/boardInsertForm";
	frmData.method = "get";
	frmData.target = pop_title;
	frmData.submit();
	
	console.log(frmData);
}
function callBoard(page){
	console.log(page);
	$.ajax({
		url:'/board/get',
		type:'get',
		dataType: 'json',
		data:{page : page},
		success: function(res){
			if(res.code == '000'){
				
				console.log(res);
				
				makeBoard(res);
			}else{
				alert('목록 호출에 실패했습니다.');
			}
		},
		error: function(res){
			alert('보내지 못했음.');
		}
	});
}

function makeBoard(res){
	let pvo = res.boardPage;
	let list = res.boardList;
	
	//목록
	
	let board = $('#board_body');
	board.html('');
	for(let i = 0; i < list.length; i++){
		let item = list[i];
		
		let text = '<tr><td>'+ item.bNo +'</td>'+
		'<td>'+item.title+'</td>'+
		'<td>'+item.userid+'</td>'+
		'<td>'+item.wdate+'</td>'+
		'<td>'+item.count+'</td></tr>';
		
		board.html(board.html() + text);
	}
	console.log('done');
	//페이징
	let	select = $('#board_paging');
	select.html('');
	for(let i = 1; i <= pvo.totalPages; i++){

		let text = '<option value="'+i+'">'+i+'</option>';
		
		select.append(text);
		
	}
	
	for(let i = 1; i <= pvo.totalPages; i++){

		if(i == pvo.currentPage){
			$("#board_paging").val(i).prop("selected", true);
		}

		
	}
	
	
	
	
}

function selectBoard(){	
	let selectBox = document.getElementById('board_paging')
	let page = selectBox.options[selectBox.selectedIndex].value;
	callBoard(page);
}
</script>
</html>