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
        <title>Readers Trend</title>
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
		<!-- Navigation-->
	        <nav class="navbar navbar-expand-lg navbar-dark bg-primary fixed-top" id="sideNav">
	            <a class="navbar-brand js-scroll-trigger" href="#page-top">
	                <span class="d-none d-lg-block"><img class="img-fluid img-profile rounded-0 mx-auto mb-2" src="../../resources/img/???????????????????????????.jpg" alt="..." /></span>
	            </a>
	            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
	            <div class="collapse navbar-collapse" id="navbarResponsive">
	                <ul class="navbar-nav">
	                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#Home">Home</a></li>
	                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#introduce">Introduce</a></li>
	                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#freeboard">Free board</a></li>
	                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#recommendbook">Recommend book</a></li>
	                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#domestictunnel">Domestic tunnel</a></li>
	                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="#overseas">Overseas tunnel</a></li>
	                </ul>
	            </div>
	        </nav>
	        <div class="container-fluid p-0">
	        <hr>
	        <section class="resume-section" id="Home">
		        <div class="box">
		                <div class="resume-section-content">
		                    <div class="subheading mb-5">
		                        <c:if test="${flag == false }">
								
									id : <input type="text" id="id"><br>
									pass : <input type="password" id="pass"><br><br>
									<button onclick="signin()">????????????</button> &nbsp
									<button onclick="login()">?????????</button>
								</c:if>??
								<c:if test="${flag == true }">
									
									<!-- ????????? ????????? ?????? hidden form -->
									<form id="frmData_board" name="frmData_board"></form>
									<h1 class="mb-0"> <span class="text-primary">${user.username }???</span> ???????????????</h1>
									<button onclick="logout()">????????????</button>
								</c:if>
		                        
		                    </div>
		                   
		                </div>
		           </div>
	           </section>
	            
	            <hr>
	            
	            <section class="resume-section" id="introduce">
		            <div class="boxintro">
		                <div class="resume-section-content">
		                    <h2 class="mb-5">????????? ????????????</h2>
		                    <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
		                        <div class="flex-grow-1">
		                            <h3 class="mb-0">????????? ???????????? ???????????????,    ?????? ???????????? ???????????????,</h3>
		                            <br>
		                        </div>
		                        <div class="flex-shrink-0"></div>
		                    </div>
		                    <div class="d-flex flex-column flex-md-row justify-content-between mb-5">
		                        <div class="flex-grow-1">
		                            <h3 class="mb-0">????????? ?????? ??? ????????????,     ???????????? ??????????????? ?????? ???????????????</h3>
		                            <br>
		                        </div>
		                        <div class="flex-shrink-0"></div>
		                    </div>
		                    <div class="d-flex flex-column flex-md-row justify-content-between">
		                        <div class="flex-grow-1">
		                            <h3 class="mb-0"></h3>
		                            <br>
		                            <h4 class="mb-0">??? ?????? ?????? ????????????, ????????? ???????????? ????????? ????????? ?????? ??? ?????? ??????????????? ????????? ????????? ?????? ???????????? ???????????????.
		                            ?????? ????????? ????????? ????????????, ?????????????????? ???????????? ????????? ???????????? ????????????.
		                            </h4>
		                        </div>
		                        <div class="flex-shrink-0"></div>
		                    </div>
		                </div>
		            </div>
            	</section>
	            
	            <hr>
	            
	            <section class="resume-section" id="freeboard">
	            <div class="boxboard">
	        	    <div class="resume-section-content">
	    	        	<div id="div_board" style="border-bottom: 1px solid black; border-top: 1px solid black;">
							<h3>?????? ?????????</h3>
							<c:if test="${sessionScope.userid ne null }">
								<button onclick="insertBoardForm()">??????????????? ??????</button>
							</c:if>
		
		
								<table id="table_board">
								<thead>
									<tr>
										<td style="width: 6%">??????</td>
										<td style="width: 65%">??????</td>
										<td style="width: 8%">?????????</td>
										<td style="width: 13%">?????????</td>
										<td style="width: 8%">?????????</td>
									</tr>
								</thead>
		
								<tbody id="board_body">
			
								</tbody>
							</table>
		
							<select id="board_paging" onchange="selectBoard()"></select>
						</div>
					</div>
				</div>
				</section>
			<hr>
	        <section class="resume-section" id="recommendbook">
	        <div class="boxboard">
	     		<div class="resume-section-content">
					<div id="div_book" style="border-bottom: 1px solid black; border-top: 1px solid black">
						<h3>?????? ?????????</h3>
		
							<c:if test="${sessionScope.userid ne null }">
								<button type="button" onclick="insert_book()">???????????? ??????</button>
							</c:if>
		
							<table id="table_book">
								<thead>
									<tr>
										<td style="width: 6%">??????</td>
										<td style="width: 60%">??????</td>
										<td style="width: 20%">??????</td>
										<td style="width: 6%">??????</td>
										<td style="width: 8%">?????????</td>
									</tr>
								</thead>
			
								<tbody id="book_body">
			
								</tbody>
							</table>
		
						<select id="book_paging" onchange="selectBook()"></select>
					</div>
				</div>
			</div>
			</section>
			<script type="text/javascript">
	
			$(function(){
				callBoard(1, '/board/get');
				callBoard(1, '/book/get');
			})
	
	//??????
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
		
	//?????????
			function insertBoardForm(){
		
				let pop_title = '????????? ??????';
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
							alert('?????? ????????? ??????????????????.');
						}
					},
					error: function(res){
						alert('????????? ?????????.');
					}
				});
			}
	
			function makeBoard(res){
				let pvo = res.boardPage;
				let list = res.boardList;
		
		//??????
		
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
		//?????????
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
	    
				let pop_title = '????????? ????????????';
				let pop_feature = "scrollbars=yes,width=800,height=600,location=no, resizable=no";
		
				window.open("", pop_title,pop_feature);
		
		
				detail.target = pop_title;
				detail.submit();
			}
	
	//????????????
			function insert_book(){
				let insertForm = document.createElement("form");
		
				insertForm.setAttribute("charset", "UTF-8");
				insertForm.setAttribute("method", "get");  
				insertForm.setAttribute("action", "/book/insertForm");
	    
	    		document.body.appendChild(insertForm);
	    
	    	let pop_title = "???????????? ????????????";
	    		let pop_feature = "scrollbars=yes,width=800,height=600,location=no, resizable=no";
	    
	    		window.open("", pop_title, pop_feature);
	    
	    		insertForm.target = pop_title;
	    		insertForm.submit();
			}
	
			function makeBook(res){
				let pvo = res.bookPage;
				let list = res.bookList;
		
		//??????
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
		//?????????
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
	    
				let pop_title = '?????? ????????????';
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
			<section class="resume-section" id="domestictunnel">
				
				<div id="generic_price_table">   
				<section>
				        <div class="container">
				            <div class="row">
				                <div class="col-md-12">
				                    <!--PRICE HEADING START-->
				                    <div class="price-heading clearfix">
				                        <h2>?????? ?????????</h2>
				                    </div>
				                    <br>
				                    <!--//PRICE HEADING END-->
				                </div>
				            </div>
				        </div>
				        <div class="container">
				            
				            <!--BLOCK ROW START-->
				            <div class="row">
				                <div class="col-md-4">
				                
				                	<!--PRICE CONTENT START-->
				                    <div class="generic_content clearfix">
				                        
				                        <!--HEAD PRICE DETAIL START-->
				                        <div class="generic_head_price clearfix">
				                        
				                            <!--HEAD CONTENT START-->
				                            <div class="generic_head_content clearfix">
				                            
				                            	<!--HEAD START-->
				                                <div class="head_bg"></div>
				                                <div class="head">
				                                    <span>??????</span>
				                                </div>
				                                <!--//HEAD END-->
				                                
				                            </div>
				                            <!--//HEAD CONTENT END-->
				                            
				                            <!--PRICE START-->
				                            <div class="generic_price_tag clearfix">	
				                                <span class="price">
				                                    <span class="cent">??????</span>
				                                </span>
				                            </div>
				                            <!--//PRICE END-->
				                            
				                        </div>                            
				                        <!--//HEAD PRICE DETAIL END-->
				                        
				                        <!--FEATURE LIST START-->
				                        <div class="generic_feature_list">
				                        	<ul>
				                            	<li>
					                            	<table class="tunneltable">
					                            		<tr>
						                            		<td>
							                            		<a href="https://www.kyobobook.co.kr/" target="blank">
							                            			<img class="logo" src="../../resources/img/kyobo.jpeg">
							                            		</a>
						                            		</td>
						                            		<td>
						                            			<span>????????????</span>
						                            		</td>
					                            		</tr>
					                            	</table>
				                            	</li>
				                                <li>
					                                <table class="tunneltable">
						                                <tr>
							                                <td>
							                                	<a href="https://www.aladin.co.kr/" target="blank">
							                            			<img class="logo" src="../../resources/img/?????????.png">
							                            		</a>
							                            	</td>
							                            	<td>
							                            		<span>?????????</span>
							                            	</td>
							                            </tr>
					                            	</table>
				                            	</li>
				                            	<li>
				                            		<table class="tunneltable">
					                            		<tr>
							                            	<td>
							                            	<a href="https://www.ypbooks.co.kr/" target="blank">
							                            			<img class="logo" src="../../resources/img/????????????.png">
							                            		</a>
							                            	</td>
					                            			<td>	
					                            				<span>????????????</span>
					                            				</td>
					                            		</tr>
				                            		</table>
				                            	</li>
				                            	<li>
				                            		<table class="tunneltable">
					                            		<tr>
							                            	<td>
							                            	<a href="http://www.yes24.com/" target="blank">
							                            			<img class="logo" src="../../resources/img/??????24.png">
							                            		</a>
							                            	</td>
					                            			<td>	
					                            				<span>??????24</span>
					                            				</td>
					                            		</tr>
				                            		</table>
				                            	</li>
				                            	<li>
				                            		<table class="tunneltable">
					                            		<tr>
							                            	<td>
							                            	<a href="https://book.interpark.com/" target="blank">
							                            			<img class="logo" src="../../resources/img/????????????.png">
							                            		</a>
							                            	</td>
					                            			<td>	
					                            				<span>????????????</span>
					                            				</td>
					                            		</tr>
				                            		</table>
				                            	</li>
				                            </ul>
				                        </div>
				                        <!--//FEATURE LIST END-->
				                        
				                    </div>
				                    <!--//PRICE CONTENT END-->
				                        
				                </div>
				                
				                <div class="col-md-4">
				                
				                	<!--PRICE CONTENT START-->
				                    <div class="generic_content clearfix">
				                        
				                        <!--HEAD PRICE DETAIL START-->
				                        <div class="generic_head_price clearfix">
				                        
				                            <!--HEAD CONTENT START-->
				                            <div class="generic_head_content clearfix">
				                            
				                            	<!--HEAD START-->
				                                <div class="head_bg"></div>
				                                <div class="head">
				                                    <span>??????</span>
				                                </div>
				                                <!--//HEAD END-->
				                                
				                            </div>
				                            <!--//HEAD CONTENT END-->
				                            
				                            <!--PRICE START-->
				                            <div class="generic_price_tag clearfix">	
				                                <span class="price">
				                                    <span class="cent">?????????</span>
				                                </span>
				                            </div>
				                            <!--//PRICE END-->
				                            
				                        </div>                            
				                        <!--//HEAD PRICE DETAIL END-->
				                        
				                        <!--FEATURE LIST START-->
				                        <div class="generic_feature_list">
				                        	<ul>
				                            	<li>
					                            	<table class="tunneltable">
					                            		<tr>
						                            		<td>
							                            		<a href="https://www.nl.go.kr/" target="blank">
							                            			<img class="logo" src="../../resources/img/??????.png">
							                            		</a>
						                            		</td>
						                            		<td>
						                            			<span>?????????????????????</span>
						                            		</td>
					                            		</tr>
					                            	</table>
				                            	</li>
				                                <li>
					                                <table class="tunneltable">
						                                <tr>
							                                <td>
							                                	<a href="https://www.nowonlib.kr/" target="blank">
							                            			<img class="logo" src="../../resources/img/??????.png">
							                            		</a>
							                            	</td>
							                            	<td>
							                            		<span>?????????????????????</span>
							                            	</td>
							                            </tr>
					                            	</table>
				                            	</li>
				                            	<li>
				                            		<table class="tunneltable">
					                            		<tr>
							                            	<td>
							                            	<a href="https://library.daejin.ac.kr/" target="blank">
							                            			<img class="logo" src="../../resources/img/?????????.png">
							                            		</a>
							                            	</td>
					                            			<td>	
					                            				<span>????????????????????????</span>
					                            				</td>
					                            		</tr>
				                            		</table>
				                            	</li>
				                            	<li>
				                            		<table class="tunneltable">
					                            		<tr>
							                            	<td>
							                            	<a href="https://www.jungnanglib.seoul.kr/" target="blank">
							                            			<img class="logo" src="../../resources/img/??????.png">
							                            		</a>
							                            	</td>
					                            			<td>	
					                            				<span>??????????????????</span>
					                            				</td>
					                            		</tr>
				                            		</table>
				                            	</li>
				                            	<li>
				                            		<table class="tunneltable">
					                            		<tr>
							                            	<td>
							                            	<a href="https://lib.seoul.go.kr/" target="blank">
							                            			<img class="logo" src="../../resources/img/??????.png">
							                            		</a>
							                            	</td>
					                            			<td>	
					                            				<span>???????????????</span>
					                            				</td>
					                            		</tr>
				                            		</table>
				                            	</li>
				                            </ul>
				                        </div>
				                        <!--//FEATURE LIST END-->
				                        
				                    </div>
				                    <!--//PRICE CONTENT END-->
				                        
				                </div>
				                <div class="col-md-4">
				                
				                	<!--PRICE CONTENT START-->
				                    <div class="generic_content clearfix">
				                        
				                        <!--HEAD PRICE DETAIL START-->
				                        <div class="generic_head_price clearfix">
				                        
				                            <!--HEAD CONTENT START-->
				                            <div class="generic_head_content clearfix">
				                            
				                            	<!--HEAD START-->
				                                <div class="head_bg"></div>
				                                <div class="head">
				                                    <span>??????</span>
				                                </div>
				                                <!--//HEAD END-->
				                                
				                            </div>
				                            <!--//HEAD CONTENT END-->
				                            
				                            <!--PRICE START-->
				                            <div class="generic_price_tag clearfix">	
				                                <span class="price">
				                                    <span class="cent">???????????? ??? ?????????</span>
				                                </span>
				                            </div>
				                            <!--//PRICE END-->
				                            
				                        </div>                            
				                        <!--//HEAD PRICE DETAIL END-->
				                        
				                        <!--FEATURE LIST START-->
				                        <div class="generic_feature_list">
				                        	<ul>
				                            	<li>
					                            	<table class="tunneltable">
					                            		<tr>
						                            		<td>
							                            		<a href="https://www.millie.co.kr/" target="blank">
							                            			<img class="logo" src="../../resources/img/????????? ??????.png">
							                            		</a>
						                            		</td>
						                            		<td>
						                            			<span>????????? ??????</span>
						                            		</td>
					                            		</tr>
					                            	</table>
				                            	</li>
				                                <li>
					                                <table class="tunneltable">
						                                <tr>
							                                <td>
							                                	<a href="https://www.welaaa.com/" target="blank">
							                            			<img class="logo" src="../../resources/img/??????.png">
							                            		</a>
							                            	</td>
							                            	<td>
							                            		<span>??????</span>
							                            	</td>
							                            </tr>
					                            	</table>
				                            	</li>
				                            	<li>
				                            		<table class="tunneltable">
					                            		<tr>
							                            	<td>
							                            	<a href="https://ridibooks.com/webtoon/recommendation" target="blank">
							                            			<img class="logo" src="../../resources/img/????????????.png">
							                            		</a>
							                            	</td>
					                            			<td>	
					                            				<span>????????????</span>
					                            				</td>
					                            		</tr>
				                            		</table>
				                            	</li>
				                            	<li>
				                            		<table class="tunneltable">
					                            		<tr>
							                            	<td>
							                            	<a href="https://page.kakao.com/" target="blank">
							                            			<img class="logo" src="../../resources/img/??????????????????.png">
							                            		</a>
							                            	</td>
					                            			<td>	
					                            				<span>??????????????????</span>
					                            				</td>
					                            		</tr>
				                            		</table>
				                            	</li>
				                            	<li>
				                            		<table class="tunneltable">
					                            		<tr>
							                            	<td>
							                            	<a href="https://www.joara.com/" target="blank">
							                            			<img class="logo" src="../../resources/img/?????????.png">
							                            		</a>
							                            	</td>
					                            			<td>	
					                            				<span>?????????</span>
					                            				</td>
					                            		</tr>
				                            		</table>
				                            	</li>
				                            </ul>
				                        </div>
				                        <!--//FEATURE LIST END-->
				                        
				                    </div>
				                    <!--//PRICE CONTENT END-->
				                        
				                </div>
				            </div>	
				            <!--//BLOCK ROW END-->
				            
				        </div>
				    </section>
				</div>
				</section>
				
				<hr>
				
				
				<section class="resume-section" id="overseas">
				<div id="generic_price_table">   
				<section>
				        <div class="container">
				            <div class="row">
				                <div class="col-md-12">
				                    <!--PRICE HEADING START-->
				                    <div class="price-heading clearfix">
				                        <h2>?????? ?????????</h2>
				                        <br>
				                    </div>
				                    <!--//PRICE HEADING END-->
				                </div>
				            </div>
				        </div>
				        <div class="container">
				            
				            <!--BLOCK ROW START-->
				            <div class="row">
				                <div class="col-md-4">
				                
				                	<!--PRICE CONTENT START-->
				                    <div class="generic_content clearfix">
				                        
				                        <!--HEAD PRICE DETAIL START-->
				                        <div class="generic_head_price clearfix">
				                        
				                            <!--HEAD CONTENT START-->
				                            <div class="generic_head_content clearfix">
				                            
				                            	<!--HEAD START-->
				                                <div class="head_bg"></div>
				                                <div class="head">
				                                    <span>??????</span>
				                                </div>
				                                <!--//HEAD END-->
				                                
				                            </div>
				                            <!--//HEAD CONTENT END-->
				                            
				                            <!--PRICE START-->
				                            <div class="generic_price_tag clearfix">	
				                                <span class="price">
				                                    <span class="cent">??????</span>
				                                </span>
				                            </div>
				                            <!--//PRICE END-->
				                            
				                        </div>                            
				                        <!--//HEAD PRICE DETAIL END-->
				                        
				                        <!--FEATURE LIST START-->
				                        <div class="generic_feature_list">
				                        	<ul>
				                            	<li>
					                            	<table class="tunneltable">
					                            		<tr>
						                            		<td>
							                            		<a href="https://www.bookdepository.com/" target="blank">
							                            			<img class="logo" src="../../resources/img/??????.jpg">
							                            		</a>
						                            		</td>
						                            		<td>
						                            			<span>Bookdepository</span>
						                            		</td>
					                            		</tr>
					                            	</table>
				                            	</li>
				                                <li>
					                                <table class="tunneltable">
						                                <tr>
							                                <td>
							                                	<a href="https://www.amazon.com/books-used-books-textbooks/" target="blank">
							                            			<img class="logo" src="../../resources/img/?????????.png">
							                            		</a>
							                            	</td>
							                            	<td>
							                            		<span>Amazon</span>
							                            	</td>
							                            </tr>
					                            	</table>
				                            	</li>
				                            	<li>
				                            		<table class="tunneltable">
					                            		<tr>
							                            	<td>
							                            	<a href="https://www.ubookstore.com/books" target="blank">
							                            			<img class="logo" src="../../resources/img/????????????.png">
							                            		</a>
							                            	</td>
					                            			<td>	
					                            				<span>University bookstore</span>
					                            				</td>
					                            		</tr>
				                            		</table>
				                            	</li>
				                            	<li>
				                            		<table class="tunneltable">
					                            		<tr>
							                            	<td>
							                            	<a href="https://www.barnesandnoble.com/" target="blank">
							                            			<img class="logo" src="../../resources/img/?????????.png">
							                            		</a>
							                            	</td>
					                            			<td>	
					                            				<span>Barnes and Noble</span>
					                            				</td>
					                            		</tr>
				                            		</table>
				                            	</li>
				                            </ul>
				                        </div>
				                        <!--//FEATURE LIST END-->
				                        
				                    </div>
				                    <!--//PRICE CONTENT END-->
				                        
				                </div>
				                
				                <div class="col-md-4">
				                
				                	<!--PRICE CONTENT START-->
				                    <div class="generic_content clearfix">
				                        
				                        <!--HEAD PRICE DETAIL START-->
				                        <div class="generic_head_price clearfix">
				                        
				                            <!--HEAD CONTENT START-->
				                            <div class="generic_head_content clearfix">
				                            
				                            	<!--HEAD START-->
				                                <div class="head_bg"></div>
				                                <div class="head">
				                                    <span>??????</span>
				                                </div>
				                                <!--//HEAD END-->
				                                
				                            </div>
				                            <!--//HEAD CONTENT END-->
				                            
				                            <!--PRICE START-->
				                            <div class="generic_price_tag clearfix">	
				                                <span class="price">
				                                    <span class="cent">?????????</span>
				                                </span>
				                            </div>
				                            <!--//PRICE END-->
				                            
				                        </div>                            
				                        <!--//HEAD PRICE DETAIL END-->
				                        
				                        <!--FEATURE LIST START-->
				                        <div class="generic_feature_list">
				                        	<ul>
				                            	<li>
					                            	<table class="tunneltable">
					                            		<tr>
						                            		<td>
							                            		<a href="https://www.nl.go.kr/" target="blank">
							                            			<img class="logo" src="../../resources/img/??????.png">
							                            		</a>
						                            		</td>
						                            		<td>
						                            			<span>?????????????????????</span>
						                            		</td>
					                            		</tr>
					                            	</table>
				                            	</li>
				                                <li>
					                                <table class="tunneltable">
						                                <tr>
							                                <td>
							                                	<a href="https://www.nowonlib.kr/" target="blank">
							                            			<img class="logo" src="../../resources/img/??????.png">
							                            		</a>
							                            	</td>
							                            	<td>
							                            		<span>?????????????????????</span>
							                            	</td>
							                            </tr>
					                            	</table>
				                            	</li>
				                            	<li>
				                            		<table class="tunneltable">
					                            		<tr>
							                            	<td>
							                            	<a href="https://library.daejin.ac.kr/" target="blank">
							                            			<img class="logo" src="../../resources/img/?????????.png">
							                            		</a>
							                            	</td>
					                            			<td>	
					                            				<span>????????????????????????</span>
					                            				</td>
					                            		</tr>
				                            		</table>
				                            	</li>
				                            	<li>
				                            		<table class="tunneltable">
					                            		<tr>
							                            	<td>
							                            	<a href="https://www.jungnanglib.seoul.kr/" target="blank">
							                            			<img class="logo" src="../../resources/img/??????.png">
							                            		</a>
							                            	</td>
					                            			<td>	
					                            				<span>??????????????????</span>
					                            				</td>
					                            		</tr>
				                            		</table>
				                            	</li>
				                            	<li>
				                            		<table class="tunneltable">
					                            		<tr>
							                            	<td>
							                            	<a href="https://lib.seoul.go.kr/" target="blank">
							                            			<img class="logo" src="../../resources/img/??????.png">
							                            		</a>
							                            	</td>
					                            			<td>	
					                            				<span>???????????????</span>
					                            				</td>
					                            		</tr>
				                            		</table>
				                            	</li>
				                            </ul>
				                        </div>
				                        <!--//FEATURE LIST END-->
				                        
				                    </div>
				                    <!--//PRICE CONTENT END-->
				                        
				                </div>
				                <div class="col-md-4">
				                
				                	<!--PRICE CONTENT START-->
				                    <div class="generic_content clearfix">
				                        
				                        <!--HEAD PRICE DETAIL START-->
				                        <div class="generic_head_price clearfix">
				                        
				                            <!--HEAD CONTENT START-->
				                            <div class="generic_head_content clearfix">
				                            
				                            	<!--HEAD START-->
				                                <div class="head_bg"></div>
				                                <div class="head">
				                                    <span>??????</span>
				                                </div>
				                                <!--//HEAD END-->
				                                
				                            </div>
				                            <!--//HEAD CONTENT END-->
				                            
				                            <!--PRICE START-->
				                            <div class="generic_price_tag clearfix">	
				                                <span class="price">
				                                    <span class="cent">???????????? ??? ?????????</span>
				                                </span>
				                            </div>
				                            <!--//PRICE END-->
				                            
				                        </div>                            
				                        <!--//HEAD PRICE DETAIL END-->
				                        
				                        <!--FEATURE LIST START-->
				                        <div class="generic_feature_list">
				                        	<ul>
				                            	<li>
					                            	<table class="tunneltable">
					                            		<tr>
						                            		<td>
							                            		<a href="https://www.millie.co.kr/" target="blank">
							                            			<img class="logo" src="../../resources/img/????????? ??????.png">
							                            		</a>
						                            		</td>
						                            		<td>
						                            			<span>????????? ??????</span>
						                            		</td>
					                            		</tr>
					                            	</table>
				                            	</li>
				                                <li>
					                                <table class="tunneltable">
						                                <tr>
							                                <td>
							                                	<a href="https://www.welaaa.com/" target="blank">
							                            			<img class="logo" src="../../resources/img/??????.png">
							                            		</a>
							                            	</td>
							                            	<td>
							                            		<span>??????</span>
							                            	</td>
							                            </tr>
					                            	</table>
				                            	</li>
				                            	<li>
				                            		<table class="tunneltable">
					                            		<tr>
							                            	<td>
							                            	<a href="https://ridibooks.com/webtoon/recommendation" target="blank">
							                            			<img class="logo" src="../../resources/img/????????????.png">
							                            		</a>
							                            	</td>
					                            			<td>	
					                            				<span>????????????</span>
					                            				</td>
					                            		</tr>
				                            		</table>
				                            	</li>
				                            	<li>
				                            		<table class="tunneltable">
					                            		<tr>
							                            	<td>
							                            	<a href="https://page.kakao.com/" target="blank">
							                            			<img class="logo" src="../../resources/img/??????????????????.png">
							                            		</a>
							                            	</td>
					                            			<td>	
					                            				<span>??????????????????</span>
					                            				</td>
					                            		</tr>
				                            		</table>
				                            	</li>
				                            	<li>
				                            		<table class="tunneltable">
					                            		<tr>
							                            	<td>
							                            	<a href="https://www.joara.com/" target="blank">
							                            			<img class="logo" src="../../resources/img/?????????.png">
							                            		</a>
							                            	</td>
					                            			<td>	
					                            				<span>?????????</span>
					                            				</td>
					                            		</tr>
				                            		</table>
				                            	</li>
				                            </ul>
				                        </div>
				                        <!--//FEATURE LIST END-->
				                        
				                    </div>
				                    <!--//PRICE CONTENT END-->
				                        
				                </div>
				            </div>	
				            <!--//BLOCK ROW END-->
				            
				        </div>
				    </section>
				</div>
			</div>
			
	        <hr>
	        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	        <!-- Core theme JS-->
	        <script src="../../resources/js/scripts.js"></script>
	            
	</body>
</html>