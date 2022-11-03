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
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        
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
	                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#about">Home</a></li>
	                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#experience">Introduce</a></li>
	                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#education">Free board</a></li>
	                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#skills">Recommend book</a></li>
	                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#interests">tunnel</a></li>
	                </ul>
	            </div>
	        </nav>
	        <div class="container-fluid p-0">
	        <hr>
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
								
								<!-- 데이터 전송을 위한 hidden form -->
								<form id="frmData_board" name="frmData_board"></form>
								<h1 class="mb-0"> <span class="text-primary">${user.username }님</span> 환영합니다</h1>
								<button onclick="logout()">로그아웃</button>
							</c:if>
	                        
	                    </div>
	                   
	                </div>
	            </section>
	            
	            <hr>
	            
	            <section class="resume-section" id="experience">
	                <div class="resume-section-content">
	                    <h2 class="mb-5">리더즈 트렌드는 함께합니다</h2>
	                    <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
	                        <div class="flex-grow-1">
	                            <h3 class="mb-0">토론을 선호하는 지성인들과</h3>
	                            <br>
	                            <p>Bring to the table win-win survival strategies to ensure proactive domination. At the end of the day, going forward, a new normal that has evolved from generation X is on the runway heading towards a streamlined cloud solution. User generated content in real-time will have multiple touchpoints for offshoring.</p>
	                        </div>
	                        <div class="flex-shrink-0"></div>
	                    </div>
	                    <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
	                        <div class="flex-grow-1">
	                            <h3 class="mb-0">책을 사랑하는 독서가들과</h3>
	                            <br>
	                            <p>Capitalize on low hanging fruit to identify a ballpark value added activity to beta test. Override the digital divide with additional clickthroughs from DevOps. Nanotechnology immersion along the information highway will close the loop on focusing solely on the bottom line.</p>
	                        </div>
	                        <div class="flex-shrink-0"></div>
	                    </div>
	                    <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
	                        <div class="flex-grow-1">
	                            <h3 class="mb-0">머라할까</h3>
	                            <br>
	                            <p>Podcasting operational change management inside of workflows to establish a framework. Taking seamless key performance indicators offline to maximise the long tail. Keeping your eye on the ball while performing a deep dive on the start-up mentality to derive convergence on cross-platform integration.</p>
	                        </div>
	                        <div class="flex-shrink-0"></div>
	                    </div>
	                    <div class="d-flex flex-column flex-md-row justify-content-between">
	                        <div class="flex-grow-1">
	                            <h3 class="mb-0">머라할까</h3>
	                            <br>
	                            <p>Collaboratively administrate empowered markets via plug-and-play networks. Dynamically procrastinate B2C users after installed base benefits. Dramatically visualize customer directed convergence without revolutionary ROI.</p>
	                        </div>
	                        <div class="flex-shrink-0"></div>
	                    </div>
	                </div>
            	</section>
	            
	            <hr>
	            
	            <section class="resume-section" id="education">
	        	    <div class="resume-section-content">
	    	        	<div id="div_board" style="border-bottom: 1px solid black; border-top: 1px solid black;">
							<h3>자유 게시판</h3>
							<c:if test="${sessionScope.userid ne null }">
								<button onclick="insertBoardForm()">자유게시판 등록</button>
							</c:if>
		
		
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
					</div>
			</section>
			<hr>
	        <section class="resume-section" id="skills">
	     		<div class="resume-section-content">
					<div id="div_book" style="border-bottom: 1px solid black; border-top: 1px solid black">
						<h3>추천도서</h3>
		
							<c:if test="${sessionScope.userid ne null }">
								<button type="button" onclick="insert_book()">추천도서 등록</button>
							</c:if>
		
							<table id="table_book">
								<thead>
									<tr>
										<td>순번</td>
										<td>제목</td>
										<td>저자</td>
										<td>평점</td>
										<td>작성자</td>
									</tr>
								</thead>
			
								<tbody id="book_body">
			
								</tbody>
							</table>
		
						<select id="book_paging" onchange="selectBook()"></select>
					</div>
				</div>
			</section>
			<script type="text/javascript">
	
			$(function(){
				callBoard(1, '/board/get');
				callBoard(1, '/book/get');
			})
	
	//회원
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
				let pop_feature = "scrollbars=yes,width=800,height=600,location=no, resizable=no";
		
				window.open("", pop_title,pop_feature);
		
				let frmData = document.frmData_board;
				frmData.action = "/board/boardInsertForm";
				frmData.method = "get";
				frmData.target = pop_title;
				frmData.submit();
			
				console.log(frmData);
			}
			function callBoard(page, url){
				console.log(page);
				$.ajax({
					url: url,
					type:'get',
					dataType: 'json',
					data:{page : page},
					success: function(res){
						if(res.code == '000'){
							console.log(url);
							console.log(res);
							if(url =='/board/get'){
								makeBoard(res);					
							}else{
								makeBook(res);
						}
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
				callBoard(page, '/board/get');
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
				let pop_feature = "scrollbars=yes,width=800,height=600,location=no, resizable=no";
		
				window.open("", pop_title,pop_feature);
		
		
				detail.target = pop_title;
				detail.submit();
			}
	
	//추천도서
			function insert_book(){
				let insertForm = document.createElement("form");
		
				insertForm.setAttribute("charset", "UTF-8");
				insertForm.setAttribute("method", "get");  
				insertForm.setAttribute("action", "/book/insertForm");
	    
	    		document.body.appendChild(insertForm);
	    
	    	let pop_title = "추천도서 추가하기";
	    		let pop_feature = "scrollbars=yes,width=800,height=600,location=no, resizable=no";
	    
	    		window.open("", pop_title, pop_feature);
	    
	    		insertForm.target = pop_title;
	    		insertForm.submit();
			}
	
			function makeBook(res){
				let pvo = res.bookPage;
				let list = res.bookList;
		
		//목록
				console.log(pvo);
				let board = $('#book_body');
				board.html('');
				for(let i = 0; i < list.length; i++){
					let item = list[i];
			
					let text = '<tr onclick="book_detail('+item.bkNo+')" style="cursor:pointer;"><td>'+ item.bkNo +'</td>'+
					'<td>'+item.title+'</td>'+
					'<td>'+item.author+'</td>'+
					'<td>'+item.star+'</td>'+
					'<td>'+item.userid+'</td></tr>';
			
					board.html(board.html() + text);
				}
				console.log('done');
		//페이징
				let	select = $('#book_paging');
				select.html('');
				for(let i = 1; i <= pvo.totalPages; i++){
	
					let text = '<option value="'+i+'">'+i+'</option>';
			
					select.append(text);
			
				}
		
				for(let i = 1; i <= pvo.totalPages; i++){
	
					if(i == pvo.currentPage){
						$("#book_paging").val(i).prop("selected", true);
					}	
				}
		
			}
	
			function book_detail(bkNo){
				let detail = document.createElement("form");
	
	    		detail.setAttribute("charset", "UTF-8");
	    		detail.setAttribute("method", "Post");  
	    		detail.setAttribute("action", "/book/book_detail"); 
		
	    		let hiddenField = document.createElement("input");
	    		hiddenField.setAttribute("type", "hidden");
	    		hiddenField.setAttribute("name", "bkNo");
	    		hiddenField.setAttribute("value", bkNo);
	    		detail.appendChild(hiddenField);
	    
	   		 	document.body.appendChild(detail);
	    
				let pop_title = '도서 상세보기';
				let pop_feature = "scrollbars=yes,width=800,height=600,location=no, resizable=no";
		
				window.open("", pop_title,pop_feature);
			
			
				detail.target = pop_title;
				detail.submit();
			}
			
			function selectBook(){
				let selectBox = document.getElementById('book_paging')
				let page = selectBox.options[selectBox.selectedIndex].value;
				callBoard(page, '/book/get');
			}
			</script>
			<hr>
			<section class="resume-section" id="interests">
	            <div class="resume-section-content">
	                <h2 class="mb-5">인기 도서 순위</h2>
	                <div class="subheading mb-3">서점, 도서관 사이트 인기도서 바로가기</div>
						<table>
							<tr>
								<td>
		                    		<a href="https://product.kyobobook.co.kr/bestseller/online?period=001" target="blank"></a>
									<img src="../resources/img/kyobo.jpeg" class="logo">
								</td>
								<td>
		                    		<a href="https://www.aladin.co.kr/shop/common/wbest.aspx?BranchType=1" target="blank"></a>
									<img src="../resources/img/kyobo.jpeg" class="logo">
								</td>
								<td>
		                    		<a href="https://www.ypbooks.co.kr/book_arrange.yp?targetpage=book_week_best&pagetype=5&depth=1" target="blank"></a>
									<img src="../resources/img/kyobo.jpeg" class="logo">
								</td>
							</tr>
							<tr>
								<td>
		                    		<a href="http://www.yes24.com/24/Category/BestSeller" target="blank"></a>
									<img src="../resources/img/kyobo.jpeg" class="logo">
								</td>
								<td>
		                    		<a href="http://www.yes24.com/24/Category/BestSeller" target="blank"></a>
									<img src="../resources/img/kyobo.jpeg" class="logo">
								</td>
								<td>
		                    		<a href="http://www.yes24.com/24/Category/BestSeller" target="blank"></a>
									<img src="../resources/img/kyobo.jpeg" class="logo">
								</td>
							</tr>
							<tr>
								<td>
		                    		<a href="https://library.daejin.ac.kr/popularity_lend_list.mir" target="blank"></a>
									<img src="../resources/img/kyobo.jpeg" class="logo">
								</td>
								<td>
		                    		<a href="http://www.yes24.com/24/Category/BestSeller" target="blank"></a>
									<img src="../resources/img/kyobo.jpeg" class="logo">
								</td>
								<td>
		                    		<a href="http://www.yes24.com/24/Category/BestSeller" target="blank"></a>
									<img src="../resources/img/kyobo.jpeg" class="logo">
								</td>
							</tr>
							<tr>
								<td>
		                    		<a href="http://www.yes24.com/24/Category/BestSeller" target="blank"></a>
									<img src="../resources/img/kyobo.jpeg" class="logo">
								</td>
								<td>
		                    		<a href="http://www.yes24.com/24/Category/BestSeller" target="blank"></a>
									<img src="../resources/img/kyobo.jpeg" class="logo">
								</td>
							
								<td>
		                    		<a href="http://www.yes24.com/24/Category/BestSeller" target="blank"></a>
									<img src="../resources/img/kyobo.jpeg" class="logo">
								</td>
							</tr>
						</table>
	                
	                <div class="subheading mb-3">Workflow</div>
	                <ul class="fa-ul mb-0">
	                    <li>
	                        <span class="fa-li"><i class="fas fa-check"></i></span>
	                        Mobile-First, Responsive Design
	                    </li>
	                    <li>
	                        <span class="fa-li"><i class="fas fa-check"></i></span>
	                        Cross Browser Testing & Debugging
	                    </li>
	                    <li>
	                        <span class="fa-li"><i class="fas fa-check"></i></span>
	                        Cross Functional Teams
	                    </li>
	                    <li>
	                        <span class="fa-li"><i class="fas fa-check"></i></span>
	                        Agile Development & Scrum
	                    </li>
	                </ul>
	            </div>
	        </section>
	        <hr>
	        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	        <!-- Core theme JS-->
	        <script src="../../resources/js/scripts.js"></script>
	            
	</body>
</html>