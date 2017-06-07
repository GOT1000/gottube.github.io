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
.join-ok-body{
	width:450px;
	height:300px;
	margin:auto;
	margin-top:5em;
	background:#fefefe;
	border-radius:1em;
	position:relative;
	box-shadow: 0 0.2em 0.5em 0em #ccc;
}
.join-ok-body .join-ok-logo{
	width:6em;
	height:auto;
	margin:auto;
	position:absolute;
	bottom:5%;
	left:40%;
}
.join-ok-body .join-ok-msg{
	font-size:2em;
 	background:#fefefe;
 	color:#333;
 	font-family:'Noto Sans Kr';
	width:14em;
	margin:auto;
 	position:relative;
 	text-align:center;
 	padding-top:2em;
}
.join-ok-body .join-ok-btn{
	width:100%;
	text-align:center;
	position:relative;
	font-size:1em;
 	background:#fefefe;
 	color:#428bca;
 	font-family:'Noto Sans Kr';
 	padding-top:4em;
 	font-weight:bold;
}
#btn{
	color:#428bca;
}
#btn:hover{
	text-decoration:underline;
	cursor:pointer;
	color:#428bca;
}
</style>
<script type="text/javascript">
$(function(){
	
})
</script>
</head>
<body>
<div class="join-ok-body">
	
	<div class="join-ok-msg">
		${msg }
	</div>
	<div class="join-ok-btn">
		<a id="btn" href="front.do">메인으로 <span style="font-family:'Oswald';">></span></a>
	</div>
	<div class="join-ok-logo" align="center">
		<img src="resources/upload/gottuberecord_b.png" width="100%" height="auto">
	</div>
</div>
</body>
</html>