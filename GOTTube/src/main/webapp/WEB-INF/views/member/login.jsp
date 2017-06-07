<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
body{
	background-color: #eaecec;
	background-image: linear-gradient(-45deg, rgba(255, 255, 255, 0) 0%, rgba(255, 255, 255, 0) 44%, rgba(255, 255, 255, 0.3) 45%, rgba(255, 255, 255, 0.3) 55%, rgba(255, 255, 255, 0) 56%, rgba(255, 255, 255, 0) 100%);
	background-size: 4px 4px;
	background-repeat: repeat;
	overflow-x:hidden;
}
.login-page-body{
	width:450px;
	height:300px;
	margin:auto;
	margin-top:5em;
	background:#fefefe;
	border-radius:1em;
	position:relative;
	box-shadow: 0 0.2em 0.5em 0em #ccc;
}
.login-page-span{
	width:450px;
	display:block;
	position:relative;
	margin:auto;
	padding-top:0.5em;
	text-align:center;
}
.login-page-span a:hover{
	cursor:pointer;
}
.login-page-title{
	display:block;
	width:100%;
	position:relative;
	font-size:2em;
	font-family:'Noto Sans Kr';
	padding:0.5em;
	padding-top:1em;
	text-align:center;
	color:#666;
}
.login-input{
	width:80%;
	margin:auto;
	margin-top:1em;
}
.login-input input{
	border-color:#ddd;
}
.login-input input:focus{
	outline:none;
	border-color:#428bca;
	box-shadow:none;
}
.login-page-btn{
	text-align:center;
	position:relative;
	display:block;
	margin-top:2em;
}
.login-page-btn button{
	background:none;
	box-shadow:none;
	border:1px solid transparent;
	width:4.5em;
	height:2.5em;
	font-family:'Noto Sans Kr';
	font-weight:bold;
	color:#428bca;
}
.login-page-btn button:focus{
	background:none;
	box-shadow:none;
	width:4.5em;
	height:2.5em;
	
}
</style>
<script type="text/javascript">
$(function(){
	$(".login-input #pwd").focus(function(){
		$(this).val("");
	})
	$("#login-page-submit").click(function(){

		var form_data = {
				id:$(".login-input #id").val(),
				pwd:$(".login-input #pwd").val()
		};
		
		$.ajax({
			type:"post",
			url:"login.do",
			data:form_data,
			success:function(data){
				var res = '';
				res += eval("["+data+"]");
				var arr = res.split('/');
				
				var m_no;
				var m_level;
				
				$(arr).each(function(index, data){
					if(index == 0){
						m_no = data;
					}else{
						m_level = data;
					}
				})

  				sessionStorage.setItem("m_no", m_no);
  				sessionStorage.setItem("m_level", m_level);
  				sessionStorage.setItem("m_id", form_data.id);
				if(res != ""){
					alert(form_data.id+"님 로그인 하셨습니다.");

					location.reload();
				}else{
					if($(".login-input #id").val() == ''){
						alert("아이디를 입력해주세요.");
						
					}else if($(".login-input #pwd").val() == ''){
						alert("패스워드를 입력해주세요.");
					}	
					else{
						alert("아이디 또는 패스워드가 잘못되었습니다.");
					}
					
				}
			},
			error:function(){
				alert("error!");	
			}
		});
		
	});
})
</script>
</head>
<body>
<div class="login-page-body">
	<div class="login-page-title">로그인</div>
	<div class="login-page-box">
		<div class="login-input" style="margin-top:0.5em;">
			<span style="font-family:'Whitney';color:#333;">Gottube ID</span><br>
			<input id="id" type="text" name="m_id" class="form-control" placeholder="ID">
		</div>
		<div class="login-input">
			<span style="font-family:'Whitney';color:#333;">Password</span><br>
			<input id="pwd" type="password" name="pwd" class="form-control" style="color:#000;font-size:1em;" placeholder="암호">
		</div>
	</div>
	<div class="login-page-btn">
		<button id="login-page-submit">확인</button>
	</div>	
</div>
<div class="login-page-span"><a>ID 또는 암호를 잊어버렸나요?</a></div>	
</body>
</html>