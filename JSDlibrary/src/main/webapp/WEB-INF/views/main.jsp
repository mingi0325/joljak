<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <title>Resume - Start Bootstrap Theme</title>
        <link rel="icon" type="image/x-icon" href="assets/img/favicon.ico" />
        <!-- Font Awesome icons (free version)-->
        <script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js" crossorigin="anonymous"></script>
        <!-- Google fonts-->
        <link href="https://fonts.googleapis.com/css?family=Saira+Extra+Condensed:500,700" rel="stylesheet" type="text/css" />
        <link href="https://fonts.googleapis.com/css?family=Muli:400,400i,800,800i" rel="stylesheet" type="text/css" />
        <!-- Core theme CSS (includes Bootstrap)-->
        <link href="../../resources/css/styles.css" rel="stylesheet" />
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="../../resources/js/common_function.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
		<script src="../../resources/js/common_function.js"></script>
		
		
	</head>
<body id="page-top">
	${user }
	${flag }
	<!-- Navigation-->
        <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
            <a class="navbar-brand js-scroll-trigger" href="#page-top">
                <span class="d-block d-lg-none">Clarence Taylor</span>
                <span class="d-none d-lg-block"><img class="img-fluid img-profile rounded-circle mx-auto mb-2" src="assets/img/profile.jpg" alt="..." /></span>
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav">
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">About</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#experience">Experience</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#education">Education</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#skills">Skills</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#interests">Interests</a></li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#awards">Awards</a></li>
                </ul>
            </div>
        </nav>
        <div class="container-fluid p-0">
        <section class="resume-section" id="about">
                <div class="resume-section-content">
                    <div class="subheading mb-5">
                        <c:if test="${flag == false }">
						
							id : <input type="text" id="id"><br>
							pass : <input type="password" id="pass"><br>
							<button onclick="signin()">회원가입</button><br>
							<button onclick="login()">로그인</button>
						</c:if>·
						<c:if test="${flag == true }">
							<button onclick="insertBoardForm()">자유게시판 등록</button>
							<!-- 데이터 전송을 위한 hidden form -->
							<form id="frmData_board" name="frmData_board"></form>
							<h1 class="mb-0"> <span class="text-primary">${user.username }님</span> 환영합니다</h1>
							<a href="/deachulList">대출목록으로</a>
							<button onclick="logout()">로그아웃</button>
						</c:if>
                        <a href="mailto:name@email.com">name@email.com</a>
                    </div>
                    
                    추가함
                    <p class="lead mb-5">내용</p>
                    <div class="social-icons">
                        <a class="social-icon" href="#!"><i class="fab fa-linkedin-in"></i></a>
                        <a class="social-icon" href="#!"><i class="fab fa-github"></i></a>
                        <a class="social-icon" href="#!"><i class="fab fa-twitter"></i></a>
                        <a class="social-icon" href="#!"><i class="fab fa-facebook-f"></i></a>
                    </div>
                </div>
            </section>
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
<style>
.logo{
	width:80px;
	height: 80px;
}
</style>
<a href="https://product.kyobobook.co.kr/bestseller/online?period=001" target="blank">
<img src="../resources/img/kyobo.jpeg" class="logo">
</a>



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

//게시판
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
		
		let text = '<tr onclick="board_detail('+item.bNo+')" style="cursor:pointer;"><td>'+ item.bNo +'</td>'+
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

function board_detail(no){
	let detail = document.createElement("form");

    detail.setAttribute("charset", "UTF-8");
    detail.setAttribute("method", "Post");  
    detail.setAttribute("action", "/board/detail"); 
	
    let hiddenField = document.createElement("input");
    hiddenField.setAttribute("type", "hidden");
    hiddenField.setAttribute("name", "bNo");
    hiddenField.setAttribute("value", no);
    detail.appendChild(hiddenField);
    
    document.body.appendChild(detail);
    
	let pop_title = '게시판 상세보기';
	let pop_feature = "scrollbars=yes,width=800,height=600,location=no, resizable=yes";
	
	window.open("", pop_title,pop_feature);
	
	
	detail.target = pop_title;
	detail.submit();
}

//추천도서
</script>
</html>