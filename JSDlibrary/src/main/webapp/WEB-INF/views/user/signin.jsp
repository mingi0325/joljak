<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<h1>회원가입</h1>
<form action="/sign/signin" method="post" name="signform">
	아이디 : <input type="text" id="userid" name="userid"/><br>
	패스워드 : <input type="password" id="password" name="password"/><br>
	이름 : <input type="text" id="username" name="username"/><br>
	핸드폰 : <input type="text" id="phone" name="phone"/><br>
	
	<button type="button" onclick="signin()">회원가입</button>
	<button type="button" onclick="cancle()">취소</button>
</form>
</body>

<script type="text/javascript">
function signin(){
	if($('#userid').val() == '' || $('#pass').val() == '' || $('#username').val() == '' || $('#phone').val() == ''){
		alert('비어있는 입력창이 있습니다.');
		return;
	}else{
		let queryString = $('form[name=signform]').serialize();
		
		$.ajax({
			url:'/sign/insert',
			type:'post',
			dataType: 'json',
			data:queryString,
			success: function(res){
				alert(res.msg);	
				
				if(res.code == '000'){
					location.href = "/";
				}else if(res.code == '002'){
					$('#userid').val('');
					$('#userid').focus();
				}else{
					window.location.reload();
				}
			},
			error: function(res){
				console.log(res);
				alert('보내지 못했음.');
			}
		});
			
		console.log(queryString);	
	}
	
}

function cancle(){
	location.href = "/";
	
}
</script>
</html>