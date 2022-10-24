<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 등록</title>
</head>
<body>
작성자 :${sessionScope.username } (${sessionScope.userid })<br>
작성일 : ${date }

<form name="insertForm" >
제목 : <input type="text" name="title" id="title"/><br><br>
내용 : <textarea name="contents" id="contents"></textarea>
<br><br><br>
<button type="button" onclick="resetform()">초기화</button>
<button type="button" onclick="cancelform()">취소</button>
<button type="button" onclick="submitform()">등록</button>
</form>
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">

function resetform(){
	if(confirm('지금 작성중인 내용을 초기화합니까?')){
		$('#title').val('');
		$('#contents').html('');
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
	$('#contents').html() == ''){
		alert('비어있');
		return;
	}
	if(window.confirm('지금 내용으로 게시글을등록합니다.')){
		let queryString = $('form[name=insertForm]').serialize();
		
		$.ajax({
			url:'/board/insert',
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