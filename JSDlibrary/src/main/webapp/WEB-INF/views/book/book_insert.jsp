<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
input.full{
background: url("../../resources/img/full_star.jpeg") no-repeat center;
background-size: cover;
border:none;
width:45px;
height: 45px;
}
input.non{
background: url("../../resources/img/none_star.png") no-repeat center;
background-size: cover;
border:none;
width:45px;
height: 45px;
}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>

<form name="insertForm">
제목 : <input type="text" name="title" id="title"><br>
저자 : <input type="text" name="author" id="author"><br>
출판사 : <input type="text" name="publisher" id="publisher"><br>
페이지수 : <input type="text" name="page" id="page"><br>
별점<br>

<input type="radio" name="star" id="s1" value="1"/><label>1점</label>
<input type="radio" name="star" id="s2" value="2"/><label>2점</label>
<input type="radio" name="star" id="s3" value="3"/><label>3점</label>
<input type="radio" name="star" id="s4" value="4"/><label>4점</label>
<input type="radio" name="star" id="s5" value="5"/><label>5점</label>
<br>
설명<br>
<textarea name="info" id="info" style="width:600px; height: 200px; resize: none;"></textarea>

<br>
<button type="button" onclick="resetform()">초기화</button>
<button type="button" onclick="cancelform()">취소</button>
<button type="button" onclick="submitform()">등록</button>
</form>

</body>
<script type="text/javascript">
function resetform(){
	if(confirm('지금 작성중인 내용을 초기화합니까?')){
		$('#title').val('');
		$('#author').val('');
		$('#publisher').val('');
		$('#page').val('');
		$('#info').val('');
		return;
	}
}

function cancelform(){ 
	if(window.confirm('지금 작성중인 내용을 취소하고 창을 닫습니까?')){
		window.close();		
		
		return;
	}
}

function submitform(){
	if($('#title').val() == ''&&
		$('#author').val() == ''&&
		$('#publisher').val() == ''&&
		$('#page').val() == ''&&
		$('#info').html() == ''){
		alert('입력칸이 비어있는 상태로는 등록할 수 없습니다.');
		return;
	}
	if(window.confirm('지금 내용으로 게시글을등록합니다.')){
		let queryString = $('form[name=insertForm]').serialize();
		
		$.ajax({
			url:'/book/insert',
			type:'post',
			dataType: 'json',
			data:queryString,
			success: function(res){
				if(res.code == '000'){
					alert('등록에 성공했습니다');
					window.close();
				}else{
					alert('등록에 실패했습니다.');
				}
			},
			error: function(res){
				alert('보내지 못했음.');
			}
		});
		return;
	}
	
	
}
</script>
</html>