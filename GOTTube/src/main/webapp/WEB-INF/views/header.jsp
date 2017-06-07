<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<link href="resources/css/GOTTube_style.css" rel="stylesheet">
	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link href="resources/css/amplitude/styles.css" rel="stylesheet">
	<link href="resources/css/bootstrap.min.css" rel="stylesheet">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="resources/jq.js"></script> 
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
#gt-nav{
	height:50px;
	width:100%;

	font-size:11pt;
/* 	font-weight:bold; */
	font-style:normal;
	color:#FFEEDD;
	position:relative;
	overflow:hidden;
	background-color: #1C1C1C;
	min-width: 320px;
}
body{
	min-width:320px;
	overflow:hidden;
	z-index:1000;
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

#topMenu ul li { /* 메인 메뉴 안에 ul 태그 안에 있는 li 태그의 스타일 적용(상위/하위메뉴 모두) */ color: white; /* 글씨 색을 흰색으로 설정 */ background-color: #2d2d2d; /* 배경 색을 RGB(2D2D2D)로 설정 */ float: left; /* 왼쪽으로 나열되도록 설정 */ line-height: 30px; /* 텍스트 한 줄의 높이를 30px로 설정 */ vertical-align: middle; /* 세로 정렬을 가운데로 설정 */ text-align: center; /* 텍스트를 가운데로 정렬 */ position: relative; /* 해당 li 태그 내부의 top/left 포지션 초기화 */ }


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

.gt-nav-header *{
	display: none;
}

#plus-link:hover .submenu{
	height:93px;
}

#gt-nav-gottube{
	margin-right: 20px;
}

.gt-nav-link-plus{
 	-webkit-transition: all 1s;
    transition: all 1s;
}

.gt-nav-link-plus:hover{
	-webkit-transform: rotateY(180deg);
    transform: rotateY(180deg);
    -webkit-transition: all 1s;
    transition: all 1s;
}
@media screen and (max-width:1080px){
	#gt-nav{
		height:44px;
		min-width:320px;
		overflow:hidden;
		overflow-x:hidden;
	}
	#gt-nav .gt-nav-content{
		padding:0;
		position:absolute;
		top:0;
		width: 100%;
		height:100%;
	}
	body{
		overflow: hidden;
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
}
</style>
<script type="text/javascript">
$(function(){

})
</script>
</head>
<body style="overflow-x:hidden;" scroll="no">
	
		
</body>
</html>