<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<style type="text/css">
html,body{height:100%;
	overflow-x:hidden;
	overflow-y:auto;}
body{
	margin:0;
	overflow-x:hidden;
	overflow-y:auto;
	}
#main-wrapper{
	height:100%;
	width:100%;
	position:absolute;
	top:0px;
	left:0px;
}

#main-header{
	margin:0px;
	position:absolute;
	top:0px;
	left:0px;
	width:100%;
	overflow-x:hidden;
	overflow-y:auto;
	z-index:1;
}
#main-body{
	min-height:100%;
	overflow:auto;
}
#main-footer{
	height:50px;
	position:absolute;
	left:0px;
	width:100%;
}
@font-face{
	font-family:'Tahoma';
	src:url(resources/fonts/tahomabd.ttf) format('truetype');
}
@font-face{
	font-family:'Whitney';
	src:url(resources/fonts/WhitneyMedium.ttf) format('truetype');
}
#gt-nav{
/* 	height:50px; */
	width:100%;

	font-size:11pt;
/* 	font-weight:bold; */
	font-style:normal;
	color:#FFEEDD;
	position:relative;
	background-color: #0f0f0f;
	min-width: 320px;
}
body{
	min-width:320px;
	overflow:hidden;
}
.gt-nav-searchbar{
	display:none;
}
#gt-nav ul{
	padding:0;
	margin:0 auto;
	width:1080px;
	height:50px;
}

#gt-nav li{
	display:inline;
	float:left;
}



#gt-nav-list:before,
#gt-nav-list:after{
	content:" ";
	display:table;
}

#gt-nav-list:after{
	clear:both;
}

#gt-nav-list{
	*zoom:1;	
}

#gt-nav a{
	color:#EDEFF0;
	display:inline-block;
	width:180px;
	text-align: center;
	text-decoration: none;
	line-height:50px;
}

#gt-nav li a{
	box-sizing: border-box;
}

#gt-nav a:hover, #gt-nav a:active{
	opacity: 0.6;
}

.gt-nav-header{
	display: none;
}

#plus-link:hover .submenu{
	height:93px;
}

#gt-nav-gottube{
	margin-right: 20px;
}
#gt-nav .gt-nav-searchbar .gt-nav-input{
	position: absolute;
	width:70%;
	top:14%;
	left:10%;
	text-align: center;
	z-index:1;
}
	
#gt-nav .gt-nav-searchbar .gt-nav-find{
	position: absolute;
	width:40px;
	top:0;
	margin-top:15px;
	left:100%;
	padding-bottom:10px;
	cursor:pointer;
	margin-left: -20%;
	text-align:center;
	z-index:1;
	color:white;
}
#gt-nav .gt-nav-searchbar .gt-nav-find:hover{
	opacity:0.6;
}
#gt-nav .gt-nav-searchbar .gt-nav-back{
	position: absolute;
	width:40px;
	top:-1%;
	margin-top:15px;
	left:100%;
	cursor:pointer;
	margin-left: -16%;
	text-align:center;
	z-index:1;
	color:white;
}
#gt-nav .gt-nav-searchbar .gt-nav-back:hover{
	opacity:0.6;
}

@media screen and (max-width:1080px){
	#gt-nav{
		min-width:320px;
	}
	
	#gt-nav a{
		line-height:44px;
	}
	#gt-nav ul{
		padding:0;
		margin:0 auto;
		width:100%;
		height:44px;
	}
	body{

	}
	#gt-nav .gt-nav-header{
		display: block;
	}
	
	#gt-nav .gt-nav-item{
		width:100%;
		height:44px;
	}
	
	#gt-nav .gt-nav-list{
		display: none;
	}
	
	#gt-nav .gt-nav-header .gt-nav-gottube{
		position: absolute;
		width:40px;
		top:-2%;
		left:50%;
		margin-left: -92px;
		text-align: center;
		z-index:1;
	}
	
	#gt-nav .gt-nav-header .gt-nav-search{
		position: absolute;
		width:40px;
		top:-4%;
		left:100%;
		padding-bottom:10px;
		margin-left: -110px;
		text-align:center;
		z-index:1;

	}
	
	#gt-nav .gt-nav-header .gt-nav-plus{
		position: absolute;
		width:40px;
		top:-1%;
		left:0%;
		margin-left: -68px;
		text-align:center;
		z-index:1;
	}
	
	#main-link{
		display:inline-block;
		width:auto;
		height:27px;
	}
	
	#search-link{
		display:inline-block;
		width:auto;
		height:18px;	
	}
	
	#plus-link{
		display:inline-block;
		width:20px;
		height:auto;
	}
	
	.gt-nav-search-bar{
		z-index: 2000;
	}
	.list-show{
		display:none;
	}
	.header-show{
		display:block;
	}
}
@media screen and (max-width:720px){
	#gt-nav .gt-nav-searchbar .gt-nav-input{
		position: absolute;
		width:70%;
		top:14%;
		left:1%;
		text-align: center;
		z-index:1;
	}
	
	#gt-nav .gt-nav-searchbar .gt-nav-find{
		position: absolute;
		width:40px;
		top:0;
		margin-top:12px;
		left:100%;
		padding-bottom:10px;
		cursor:pointer;
		margin-left: -27%;
		text-align:center;
		z-index:1;
	}
	
	#gt-nav .gt-nav-searchbar .gt-nav-back{
		position: absolute;
		width:40px;
		top:-1%;
		margin-top:12px;
		left:100%;
		cursor:pointer;
		margin-left: -15%;
		text-align:center;
		z-index:1;
	}
}
.dropdown-content {
    display: none;
    position: absolute;
    background-color: #1c1c1c;
    min-width: 160px;
    max-width:180px;
    top:50px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}
.dropdown-content2 {
	display: none;
	position: absolute;
	background-color: #1c1c1c;
	min-width: 160px;
	max-width:180px;
	    top:44px;
	 	left:65px;
	    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
}
.dropdown-content2 a{
	color: black;
    padding: 5px 5px;
    text-decoration: none;
    display: block;

	}
.dropdown-content a {
    color: black;
    padding: 5px 5px;
    text-decoration: none;
    display: block;
}
.list-show{
	display:block;
}
.header-show{
	display:none;
}
.hide{
	display:none;
}
.modal-header{
	border-bottom: none;
}
.modal-id{
	width:85%;
	margin:auto;
	padding-top:20px;
}
.modal-pwd{
	width:85%;
	margin:auto;
	padding-top:10px;
	margin-bottom:20px;
}
.modal-button{
	width:85%;
	margin:auto;
	
}
.modal-box .btn:hover{
	opacity:0.6;
}
.modal-box input[type=text],input[type=password]{
	width:100%; 
	background:none; 
	border:1px solid #4c4c4c; 
	outline: none; 
	color:white; 
	font-size:1.3em;
}
.modal-box input[type=text],input[type=password]:FOCUS{
	border:1px solid #acacac; 
}
.modal-box{
	width:95%;
	height:220px;
	background:#212121;
	border:1px solid #3c3c3c;
	margin:auto;
}
.modal-box p{
	font-weight:bold;
	font-family:"Whitney";
	color:#dcdcdc;
}
/* Change color of dropdown links on hover */
.dropdown-content{z-index:5000;}
.dropdown-content2{z-index:5000;}
.dropdown-content a:hover {background-color: #3c3c3c;}
.dropdown-content2 a:hover {background-color: #3c3c3c;}

/* Show the dropdown menu (use JS to add this class to the .dropdown-content container when the user clicks on the dropdown button) */
.show {display:block;}
.text-box{
	background: none;
	border: none;
	border-bottom:1px solid;
	border-color: #4c4c4c;
	color:#EDEFF0;
	width:80%;
	margin:5px;
	outline: none;
	margin-left:5%;
}
.input-focus{
	background:white;
}
</style>
<link href="resources/css/dropdown/style.css" rel="stylesheet">
<title>GOTTUBE</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link href="https://fonts.googleapis.com/css?family=Fjalla+One|Open+Sans|Open+Sans+Condensed:300|Oswald" rel="stylesheet">	
	<link href="resources/css/bootstrap.min.css" rel="stylesheet">
	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="resources/js/jquery.mobile.custom.min.js"></script>
	<script src="resources/js/amplitude.js" type="text/javascript"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/moment.min.js"></script>
  	

</head>
<script type="text/javascript">
$(function(){
// 	function windowlimit(){
// 		var w = window.innerWidth;
// 		var h = window.innerHeight;
// 		if(windowWidth < 320){
// 			window.resizeTo(1000,h);
// 		}else{
			
// 		}
// 	}
// 	window.addEventListener('resize',windowlimit(),false);

	var toggle=0;
	var toggle2=0;
	$("#search").click(function(){
		var keyWord = $(".text-box").val();
		$(location).attr("href","search.do?q="+keyWord);
	})
	$(".gt-nav-link-search").click(function(){
		$('.gt-nav-searchbar').addClass('show');
		$('.gt-nav-list').removeClass('list-show');
		$('.gt-nav-list').addClass('hide');
		$('.gt-nav-header').removeClass('header-show');
		$('.gt-nav-header').addClass('hide');
	});
	$(".gt-nav-back").click(function(){
		$('.gt-nav-list').addClass('list-show');
		$('.gt-nav-list').removeClass('hide');
		$('.gt-nav-searchbar').removeClass('show');
		$('.gt-nav-header').addClass('header-show');
		$('.gt-nav-header').removeClass('hide');
	})
	$(".gt-nav-link-plus").click(function(){
		if(toggle == 0){
			$("#myDropdown").addClass('show');
			toggle++;
		}else{
			$("#myDropdown").removeClass('show');
			toggle--;
		}
	});
	$(".gt-nav-link-plus2").click(function(){
		if(toggle2 == 0){
			$("#myDropdown2").addClass('show');
			toggle2++;
		}else{
			$("#myDropdown2").removeClass('show');
			toggle2--;
		}
	});
	$(window).resize(function(){
		if($(window).width() <= 1080){
			if($("#myDropdown").hasClass('show')){
				$("#myDropdown").removeClass('show');
				toggle--;
			}
		}
		if($(window).width()>1080){
			if($("#myDropdown2").hasClass('show')){
				$("#myDropdown2").removeClass('show');
				toggle2--;
			}
		}
	});
	$(document).mouseup(function(e){
		var container = $('myDropdown');
		var container2 = $('#myDropdown2');
		if(!container.is(e.target) && container.has(e.target).length === 0){
			if($("#myDropdown").hasClass('show')){
				$("#myDropdown").removeClass('show');
				toggle--;
			}
		}
		if(!container2.is(e.target) && container2.has(e.target).length === 0){
			if($("#myDropdown2").hasClass('show')){
				$("#myDropdown2").removeClass('show');
				toggle2--;
			}
		}
	})

	$('#myModal').on('shown.bs.modal', function() {
	  $('#input-id').focus();
	});
	$('#myModal').on('hidden.bs.modal', function() {
	  $('#myModal input[type=text]').val("");
	  $('#myModal input[type=password]').val("");
	});
	$("#login-submit").click(function(){
		var action = $("#loginForm").attr("action");
		$('#myModal').on('shown.bs.modal', function() {
			  $('#input-id').focus();
			});
		var form_data = {
				id:$("#input-id").val(),
				pwd:$("#input-pwd").val()
		};
		
		$.ajax({
			type:"post",
			url:action,
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
					if($("#input-id").val() == ''){
						alert("아이디를 입력해주세요.");
						
					}else if($("#input-pwd").val() == ''){
						alert("패스워드를 입력해주세요.");
					}	
					else{
						alert("아이디 또는 패스워드가 잘못되었습니다.");
					}
					
					$('#myModal').modal({backdrop: 'static', keyboard: false})
				}
			},
			error:function(){
				alert("error!");	
			}
		});
		
	});
	
	function loginChk(){
		$.ajax({
			url:"loginChk.do",
			type:"post",
			success:function(data){
				if(data == "1"){
					$(".logout").removeClass("hide");
					$(".myPage").removeClass("hide");
					$(".login").addClass("hide");
					$(".join").addClass("hide");
				}else{
					$(".logout").addClass("hide");
					$(".myPage").addClass("hide");
					$(".login").removeClass("hide");
					$(".join").removeClass("hide");
				}
			}
		});
	}
	
	function modalFormChk(){
		
	}
	$(".login").click(function(){
		$("#myModal").modal({
            backdrop: 'static',
            keyboard: false
        });
	});
	$(".logout").click(function(){
		
		$.ajax({
			type:"post",
			url:'logout.do',
			success:function(data){
				alert("로그아웃 했습니다.");
				location.reload();
			},
			error:function(){
				alert("error!");	
			}
		})

		loginChk();
	})
	loginChk();
});

</script>
<body style="overflow-x:hidden; min-width:320px;" scroll="no">
	<div id="main-wrapper">
	<input type="hidden" id="session_m_no" value="<%=session.getAttribute("m_no")%>"/>
	<input type="hidden" id="session_m_id" value="<%=session.getAttribute("m_id")%>"/>
	<input type="hidden" id="session_m_level" value="<%=session.getAttribute("m_level")%>"/>

		<div id="blank"></div>
<!-- 		<div id="main-header" style="z-index:1000;"> -->
		<nav id="gt-nav" role="navigation">
			<div class="gt-nav-content">
				<ul class="gt-nav-list list-show">
					<li class="gt-nav-item gt-nav-gottube"><a href="front.do" class="gt-nav-link gt-nav-link-gottube"><img id="main-link" src="resources/upload/gottuberecord.png" width="auto" height="33" style="margin-top:8px;"></a></li>
					<li class="gt-nav-item gt-nav-music"><a href="listSong.do" class="gt-nav-link gt-nav-link-music">Music</a></li>
					<li class="gt-nav-item gt-nav-video"><a href="#" class="gt-nav-link gt-nav-link-video">Video</a></li>
					<li class="gt-nav-item gt-nav-news"><a href="listNews.do?keyField=&keyWord=&pageNum=1" class="gt-nav-link gt-nav-link-news">News</a></li>
					<li class="gt-nav-item gt-nav-search"><a href="#" class="gt-nav-link gt-nav-link-search"><img src="resources/upload/search.png" width="17" height="auto" style="margin-top:15px;"></a></li>
					<li class="gt-nav-item gt-nav-plus">
					<a href="#" class="gt-nav-link gt-nav-link-plus"><img src="resources/upload/plus.png" width="20" height="auto" style="margin-top:18px;"></a>
								 <div id="myDropdown" class="dropdown-content">
									 <a href="#" id="login" class="login">로그인</a>
									 <a href="#" id="logout" class="logout hide">로그아웃</a>
									 <a href="myPage.do" id="myPage" class="myPage hide">마이페이지</a>
									 <a href="join.do" class="join">회원가입</a>
								 </div>
					</li>
				</ul>
				<ul class="gt-nav-searchbar">
					<li class="gt-nav-item gt-nav-input"><input type="text" class="text-box"></li>
					<li class="gt-nav-item gt-nav-find" id="search">검색</li>
					<li class="gt-nav-item gt-nav-back">취소</li>
				</ul>
				<ul class="gt-nav-header">
					<li class="gt-nav-item gt-nav-gottube"><a href="front.do" class="gt-nav-link gt-nav-link-gottube"><img id="main-link" src="resources/upload/gottuberecord.png" width="auto" height="25" style="margin-top:9px;"></a></li>
					<li class="gt-nav-item gt-nav-search"><a href="#" class="gt-nav-link gt-nav-link-search"><img id="search-link" src="resources/upload/search.png" width="auto" height="24" style="margin-top:14px;"></a></li>
					<li class="gt-nav-item gt-nav-plus">
					<a href="#" class="gt-nav-link gt-nav-link-plus2"><img src="resources/upload/plus.png" width="20" height="auto" style="margin-top:16px;"></a>
								<div id="myDropdown2" class="dropdown-content2" style="z-index:200;">
									 <a href="listSong.do">Music</a>
									 <a href="#">Video</a>
									 <a href="listNews.do?keyField=&keyWord=&pageNum=1">News</a>
									 <a href="#"  id="login" class="login">로그인</a>
									 <a href="#" id="logout" class="logout hide">로그아웃</a>
									 <a href="myPage.do" id="myPage" class="myPage hide">마이페이지</a>
									 <a href="join.do" class="join">회원가입</a>
								 </div>
					</li>
				</ul>
				
			</div>
		</nav>

		<div id="main-body">
			<jsp:include page="/WEB-INF/views/${page}"></jsp:include>
		</div>
		<div id="main-footer">
			<jsp:include page="/WEB-INF/views/footer.jsp"></jsp:include>
		</div>
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" > 
		<div class="modal-dialog" style="max-width:400px; min-width:300px;"> 
			<div class="modal-content" style="background:#1c1c1c;"> 
				<form id="loginForm" action="login.do" method="post">
				<div class="modal-header" style="border:none;"> 
					<button type="button" class="close" data-dismiss="modal" style="color:white;">
					<span aria-hidden="true">×</span>
					<span class="sr-only">Close</span>
					</button> 
					<h2 class="modal-title" id="myModalLabel" style="color: #E89C0C; font-family:Oswald; font-weight:bold;" align="center">SIGN IN</h2> 
				</div>
			    <div class="modal-body" style="padding:0px;">
					<div class="modal-box">
						<div class="modal-id">
							<p style="color:#dcdcdc; font-weight:bold; font-family:'Whitney';">Gottube ID</p>
							<input id="input-id" type="text" name="member-id"/>
						</div>
						<div class="modal-pwd">
							<p style="color:#dcdcdc; font-weight:bold; font-family:'Whitney';">Password</p>
							<input id="input-pwd" type="password" name="member-pwd"/>
						</div>
						<div class="modal-button">
						<button id="login-submit" type="button" class="btn" data-dismiss="modal" style="font-size:1em;height:34px;background:#1c1c1c;border:1px solid #4c4c4c;color:#8c8c8c;">로그인</button>
						</div>

					</div>
				</div> 
				<div class="modal-footer" style="border:none; text-align:center; color:#2c2cff;" align="center">
					<a  style="cursor:pointer; color:#acacac;">ID또는 암호를 잊어버렸나요?</a>
				</div> 
				</form>
				</div> 
				
		</div> 
			
		</div>

	</div>

</body>
</html>