<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- 	<link rel="stylesheet" type="text/css" href="resources/css/single-song-styles.css"/> -->
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
@-webkit-keyframes 'mouseover-song'{
	from{
		background:none;
	}
	to{
		background:#eee;
	}
}
@-webkit-keyframes 'mouseout-song'{
	from{
		background:#eee;
	}
	to{
		background:none;
	}
}
@-webkit-keyframes 'mouseover-block'{
	from{
		background:none;
		color:black;
	}
	to{
		background:#eee;
		color:#E83C4F;
	}
}
@-webkit-keyframes 'mouseout-block'{
	from{
		background:#eee;
		color:#E83C4F;
	}
	to{
		background:none;
		color:black;
	}
}
body{
	background:#fcfcfc;
}
.list-song{
	background:#fcfcfc;
	width:1000px;
	height:auto;
	overflow-y:auto;
	display:block;
	position:relative;
	margin:auto;
	padding-top:5em;
	padding-bottom:5em;
}
.list-song-left{
	float:left;
	background:none;
	height:100%;
	width:74%;
	display:inline-block;
	position:relative;
	padding-right:0.7em;
}
.list-song-right{
	float:right;
	background:none;
	height:100%;
	width:26%;
	display:inline-block;
	position:relative;
	padding-top:2.24em;
}
.list-song-title{
	border-bottom: 4px solid black;
	font-family:'Whitney';
	font-size:1em;
	font-weight:bold;
	height:2.5em;
}
.list-song-body{
	width:100%;
	height:auto;
	position:relative;
	display:block;
}
.song-block{
	width:100%;
	height:4em;
	position:relative;
	display:block;
	border-bottom:1px solid #ddd;
}
.song-block .index{
	font-size:1.5em;
	position:absolute;
	display:inline-block;
	top:0.5em;
	right:32.6em;
	font-weight:bold;
	font-family:'Whitney';
}
.song-block .img{
	background-image:url('resources/upload/check1.jpg');
	width:4em;
	height:4em;
	background-size:cover;
	position:absolute;
	top:0;
	left:5em;
}
.song-block .profile{
	background-image:url('resources/upload/profile_default.jpg');
	width:3.5em;
	height:3.5em;
	background-size:cover;
	position:absolute;
	top:0.2em;
	left:5em;
	border-radius:50%;
	border:2px solid #e1e10b;
}
.top-rank .index{
	top:1.3em;
	left:0.7em;
	border:3px solid #E83C4F;
	border-radius:50%;
	width:2em;
	height:2em;
	text-align:center;
	vertical-align:middle;
	padding-top:0.1em;
	color:#E83C4F;
}

.top-rank .img{
	width:7em;
	height:7em;
}
.top-rank .profile{
	width:6.5em;
	height:6.5em;
}
.p-rank .index{
	top:0.8em;
	left:0.7em;
	border:3px solid black;
	border-radius:50%;
	width:2em;
	height:2em;
	text-align:center;
	vertical-align:middle;
	padding-top:0.1em;
	color:black;
}
.p-rank .img{
	width:5.5em;
	height:5.5em;
}
.p-rank .profile{
	width:5em;
	height:5em;
}
.song-block .detail{
	position:absolute;
	height:4em;
	top:0.55em;
	left:9.8em;
	font-family:'Open Sans';

}
.song-block .detail .title{
	font-size:1.2em;
	font-weight:bold;
}
.song-block .detail .artist{
	font-size:0.75em;
}
.song-block .detail .ar_name{
	font-size:1.2em;
	font-weight:bold;
	margin-top:0.4em;
}
.top-rank .detail{
	top:1.65em;
	left:13em;
}
.top-rank .detail .title{
	font-size:1.6em;
}
.top-rank .detail .artist{
	font-size:0.9em;
}
.top-rank .detail .ar_name{
	font-size:1.6em;
	margin-top:0.4em;
}
.p-rank .detail{
	top:1.1em;
	left:11.5em;
}
.p-rank .detail .title{
	font-size:1.4em;
}
.p-rank .detail .artist{
	font-size:0.8em;
}
.p-rank .detail .ar_name{
	font-size:1.4em;
}
.song-block .rating{
	position:absolute;
	display:inline-block;
	color:#E83C4F;
	top:1em;
	left:38em;
	font-family:'Whitney';
	font-size:1.1em;
	font-weight:bold;
}
.song-block .hit{
	position:absolute;
	display:inline-block;
	margin-left:1em;
	top:1em;
	left:41em;
	font-family:'Whitney';
	font-size:1.1em;
	font-weight:bold;
}
.song-block a{
	color:black;
}
.song-block a:hover,:focus{
	text-decoration:none;
}
.song-box .more-btn{
	width:100%;
	height:4em;
	display:block;
	position:relative;
	padding-top:1em;
}
.song-box .more-btn img{
	margin-bottom:0.2em;
	margin-right:0.4em;
}
.song-box .more-btn .more-span{
	font-size:1.1em;
	font-family:'Noto Sans Kr';
	font-weight:bold;
	display:block;
	position:relative;
	margin:auto;
}
.song-box .more-btn .more-span:hover,:focus{
	cursor:pointer;
	text-decoration:underline;
}
.top-rank .rating{
	top:2.1em;
	left:32em;
	font-size:1.3em;
}
.top-rank .hit{
	top:2.1em;
	left:34.5em;
	font-size:1.3em;
}
.p-rank .rating{
	top:1.5em;
	left:32em;
	font-size:1.3em;
}
.p-rank .hit{
	top:1.5em;
	left:34.5em;
	font-size:1.3em;
}
.top-rank{
	height:7em;
}
.p-rank{
	height:5.5em;
}
.glyphicon-eye-open{
	top:0.15em;
}
.list-song-kind{
	border-top:4px solid black;
	width:100%;
	display:block;
	position:relative;
}
.list-song-date{
	border-top:4px solid black;
	width:100%;
	display:block;
	position:relative;
	margin-top:2em;
}
.order-block{
	height:3.5em;
	width:100%;
	display:block;
	position:block;
	font-size:1em;
	font-weight:bold;
	font-family:'Whitney';
	border-top:1px solid #ddd;
	vertical-align:middle;
	padding-top:1em;
	padding-left:1em;
}
.order-block:hover,:focus{
	cursor:pointer;
}
.list-song-search{
	width:100%;
	margin-top:1em;
	
}
#keyWord{
	width:16em;
	border:1px solid #ddd;
}
#search-btn{
	border:none;
	outline:1px solid transparent;
	background:none;
}
#search-btn:hover,:focus{
	cursor:pointer;
}
.checked{
	background:#eee;
	color:#E83C4F;
}
.checked:hover,:focus{
	cursor:default;
}
.wrap-loading{ /*화면 전체를 어둡게 합니다.*/
    position: fixed;
    left:0;
    right:0;
    top:0;
    bottom:0;
    background: rgba(0,0,0,0.2); /*not in ie */
    z-index:9999;
    filter: progid:DXImageTransform.Microsoft.Gradient(startColorstr='#20000000', endColorstr='#20000000');    /* ie */
    
}
.wrap-loading div{ /*로딩 이미지*/
    position: fixed;
    top:43%;
    left:43%;


}
.display-none{ /*감추기*/
     display:none; 
}
</style>
<script type="text/javascript">
$(function(){
	var start = 1;
	var cnt = 1;
	var date = 'today';
	var keyWord = $("#keyWord").val();
	
	load_top_song();

	$("#search-btn").click(function(){
		var input = $("#keyWord").val();
		$(location).attr("href","search.do?q="+input+"&f=a_name");
	})
	
	
	function block_animation(block_name){
		var arr;
		if(block_name == 'date'){
			arr = $(".list-song-date .order-block");
			$(arr).each(function(data){
				if($(this).hasClass("checked")){
					$(this).removeClass("checked");
					$(this).empty();
					if($(this).hasClass("today")){
						$(this).append("TODAY");
					}else if($(this).hasClass("this-week")){
						$(this).append("THIS WEEK");
					}else if($(this).hasClass("this-month")){
						$(this).append("THIS MONTH");
					}else if($(this).hasClass("all-time")){
						$(this).append("ALL TIME");
					}
					$(this).css({"-webkit-animation-name":"mouseout-block",
						"-webkit-animation-duration":"0.5s",
						"background":"none",
						"color":"black"});	
				}
			})
		}else if(block_name == 'kind'){
			arr = $(".list-song-kind .order-block");
			$(arr).each(function(data){
				if($(this).hasClass("checked")){
					$(this).removeClass("checked");
					$(this).empty();
					if($(this).hasClass("song")){
						$(this).append("TOP SONGS");
					}else if($(this).hasClass("artist")){
						$(this).append("TOP ARTISTS");
					}
					$(this).css({"-webkit-animation-name":"mouseout-block",
						"-webkit-animation-duration":"0.5s",
						"background":"none",
						"color":"black"});	
				}
			})
		}

		
	}
	$(".list-song-kind .song").click(function(){
		if(!$(this).hasClass("checked")){
			var span = $("<span></span>").attr("class","glyphicon glyphicon-equalizer");
			var span2 = $("<span></span>").attr("class","glyphicon glyphicon-calendar");
			$(this).empty();
			$(this).append(span,"  TOP SONGS");
			$(this).css({"-webkit-animation-name":"mouseover-block",
				"-webkit-animation-duration":"0.5s",
				"background":"#eee",
				"color":"#E83C4F"});	
			
			var block_name = 'kind';
			
			block_animation(block_name);
			
			
			date = 'today';
			$(this).addClass("checked");
			
			start = 1;
			cnt = 1;
			$(".list-song-title").html("TOP SONGS");
			
			var block_name = 'date';
			
			block_animation(block_name);
			$(".list-song-date .today").empty();
			$(".list-song-date .today").append(span2,"  TODAY");
			$(".list-song-date .today").css({"-webkit-animation-name":"mouseover-block",
				"-webkit-animation-duration":"0.5s",
				"background":"#eee",
				"color":"#E83C4F"});	
			$(".list-song-date .today").addClass("checked");
			$(".song-box").empty();
			load_top_song();
		}
	})
	$(".list-song-kind .artist").click(function(){
		if(!$(this).hasClass("checked")){
			var span = $("<span></span>").attr("class","glyphicon glyphicon-star");
			var span2 = $("<span></span>").attr("class","glyphicon glyphicon-calendar");
			$(this).empty();
			$(this).append(span,"  TOP ARTISTS");
			$(this).css({"-webkit-animation-name":"mouseover-block",
				"-webkit-animation-duration":"0.5s",
				"background":"#eee",
				"color":"#E83C4F"});	
			
			var block_name = 'kind';
			
			block_animation(block_name);
			
			
			date = 'today';
			$(this).addClass("checked");
			start = 1;
			cnt = 1;
			$(".list-song-title").html("TOP ARTISTS");
			
			var block_name = 'date';
			
			var block_name = 'date';
			
			block_animation(block_name);
			$(".list-song-date .today").empty();
			$(".list-song-date .today").append(span2,"  TODAY");
			$(".list-song-date .today").css({"-webkit-animation-name":"mouseover-block",
				"-webkit-animation-duration":"0.5s",
				"background":"#eee",
				"color":"#E83C4F"});	
			$(".list-song-date .today").addClass("checked");
			$(".song-box").empty();
			load_top_artist();
		}
	})
	$(".list-song-date .today").click(function(){
		if(!$(this).hasClass("checked")){
			var span = $("<span></span>").attr("class","glyphicon glyphicon-calendar");
			$(this).empty();
			$(this).append(span,"  TODAY");
			$(this).css({"-webkit-animation-name":"mouseover-block",
				"-webkit-animation-duration":"0.5s",
				"background":"#eee",
				"color":"#E83C4F"});	
			
			var block_name = 'date';
			
			block_animation(block_name);
			
			
			date = 'today';
			$(this).addClass("checked");
			start = 1;
			cnt = 1;
			$(".song-box").empty();
			if($(".list-song-kind .song").hasClass("checked")){
				load_top_song();
			}else if($(".list-song-kind .artist").hasClass("checked")){
				load_top_artist();
			}
		}
	})
	$(".list-song-date .this-week").click(function(){
		if(!$(this).hasClass("checked")){
			var span = $("<span></span>").attr("class","glyphicon glyphicon-calendar");
			$(this).empty();
			$(this).append(span,"  THIS WEEK");
			$(this).css({"-webkit-animation-name":"mouseover-block",
				"-webkit-animation-duration":"1s",
				"background":"#eee",
				"color":"#E83C4F"});	
			
			var block_name = 'date';
			
			block_animation(block_name);
			
			date = 'this-week';
			$(this).addClass("checked");
			start = 1;
			cnt = 1;
			$(".song-box").empty();
			if($(".list-song-kind .song").hasClass("checked")){
				load_top_song();
			}else if($(".list-song-kind .artist").hasClass("checked")){
				load_top_artist();
			}
		}
	})
	$(".list-song-date .this-month").click(function(){
		if(!$(this).hasClass("checked")){
			var span = $("<span></span>").attr("class","glyphicon glyphicon-calendar");
			$(this).empty();
			$(this).append(span,"  THIS MONTH");
			$(this).css({"-webkit-animation-name":"mouseover-block",
				"-webkit-animation-duration":"1s",
				"background":"#eee",
				"color":"#E83C4F"});	
			
			var block_name = 'date';
			
			block_animation(block_name);
			
			date = 'this-month';
			$(this).addClass("checked");
			start = 1;
			cnt = 1;
			$(".song-box").empty();
			if($(".list-song-kind .song").hasClass("checked")){
				load_top_song();
			}else if($(".list-song-kind .artist").hasClass("checked")){
				load_top_artist();
			}
		}
	})
	$(".list-song-date .all-time").click(function(){
		if(!$(this).hasClass("checked")){
			var span = $("<span></span>").attr("class","glyphicon glyphicon-calendar");
			$(this).empty();
			$(this).append(span,"  ALL TIME");
			$(this).css({"-webkit-animation-name":"mouseover-block",
				"-webkit-animation-duration":"1s",
				"background":"#eee",
				"color":"#E83C4F"});	
			
			var block_name = 'date';
			
			block_animation(block_name);
			
			date = 'all-time';
			$(this).addClass("checked");
			start = 1;
			cnt = 1;
			$(".song-box").empty();
			if($(".list-song-kind .song").hasClass("checked")){
				load_top_song();
			}else if($(".list-song-kind .artist").hasClass("checked")){
				load_top_artist();
			}
		}
	})
	function load_top_song(){
		var end = start+9;
		
		var form = new FormData();

		
		form.append("start",start);
		form.append("end",end);
		form.append("chk_date",date);
		form.append("keyWord",keyWord);
		
		$.ajax({
			url:'topSong.do',
			data:form,
			dataType:'json',
			method:'post',
			processData:false,
			async:false,
			contentType:false,beforeSend:function(){
				$(".wrap-loading").removeClass("display-none");
			},
			complete:function(){
				$(".wrap-loading").addClass("display-none");
			},
			success:function(data){
				var box = $(".song-box");
				var arr = data;
				$(arr).each(function(idx,data){

					var index = $("<div></div>").attr("class","index");
					var img = $("<div></div>").attr("class","img");
					var detail = $("<div></div>").attr("class","detail");
					var title = $("<div></div>").attr("class","title");
					var artist = $("<div></div>").attr("class","artist");
					var rating = $("<div></div>").attr("class","rating");
					var fire = $("<span></span>").attr("class","glyphicon glyphicon-fire");
					var eye = $("<span></span>").attr("class","glyphicon glyphicon-eye-open");
					var rating = $("<div></div>").attr("class","rating");
					var hit = $("<div></div>").attr("class","hit");
					
					var link = $("<a></a>").attr("href","detailSong.do?s_no="+data.s_no+"&hitAdd=true");
					
					var block = $("<div></div>").attr("class","song-block");
					
			
						if(start == 1){
							if(idx == 0){
								$(block).addClass("top-rank");
							}else if(idx == 1 || idx == 2){
								$(block).addClass("p-rank");
							}
						}

					
					
					
					$(index).append(cnt);
					
					cnt++;
					
					$(img).css("background-image","url('"+data.a_img+"')");
					$(title).append(data.s_title);
					$(link).append(title);
					$(artist).append(data.a_name);
					$(detail).append(link,artist);
					$(rating).append(fire," ",data.rating);
					$(hit).append(eye," ",data.hit);
					
					$(block).append(index,img,detail,rating,hit);
					
					$(box).append(block);
					
					$(link).mouseover(function(){
						$(block).css({"-webkit-animation-name":"mouseover-song",
							"-webkit-animation-duration":"1s",
							"background":"#eee"});	
					})
					
					$(link).mouseout(function(){
						$(block).css({"-webkit-animation-name":"mouseout-song",
							"-webkit-animation-duration":"1s",
							"background":"none"});	
					})
				})
				var more_btn = $("<div></div>").attr({"class":"more-btn","align":"center"});
				
				var more_span = $("<span></span>").attr("class","more-span");
				var plus_sign = $("<img/>").attr({"src":"resources/upload/plussign.png","width":"15","height":"auto"});
				$(more_span).append(plus_sign,"더 보기");
				$(more_btn).append(more_span);
				
				$(box).append(more_btn);
				
				$(more_span).click(function(){
					start = start+10;
					$(more_btn).remove();
					load_top_song();
				})
			}
		})
	}
	function load_top_artist(){
		var end = start+9;
		
		var form = new FormData();
		
		form.append("start",start);
		form.append("end",end);
		form.append("chk_date",date)
		$.ajax({
			url:'topArtist.do',
			data:form,
			dataType:'json',
			method:'post',
			processData:false,
			async:false,
			contentType:false,beforeSend:function(){
				$(".wrap-loading").removeClass("display-none");
			},
			complete:function(){
				$(".wrap-loading").addClass("display-none");
			},
			success:function(data){
				var box = $(".song-box");
				var arr = data;
				$(arr).each(function(idx,data){

					var index = $("<div></div>").attr("class","index");
					var img = $("<div></div>").attr("class","profile");
					var detail = $("<div></div>").attr("class","detail");
					var title = $("<div></div>").attr("class","ar_name");

					
					var link = $("<a></a>").attr("href","detailArtist.do?ar_no="+data.ar_no);
					
					var block = $("<div></div>").attr("class","song-block");
					
					if(start == 1){
						if(idx == 0){
							$(block).addClass("top-rank");
						}else if(idx == 1 || idx == 2){
							$(block).addClass("p-rank");
						}
					}
					
					
					$(index).append(cnt);
					
					cnt++;
					
					$(img).css("background-image","url('"+data.profile+"')");
					$(title).append(data.ar_name);
					$(link).append(title);
					$(detail).append(link);
					
					$(block).append(index,img,detail);
					
					$(box).append(block);
					
					$(link).mouseover(function(){
						$(block).css({"-webkit-animation-name":"mouseover-song",
							"-webkit-animation-duration":"1s",
							"background":"#eee"});	
					})
					
					$(link).mouseout(function(){
						$(block).css({"-webkit-animation-name":"mouseout-song",
							"-webkit-animation-duration":"1s",
							"background":"none"});	
					})
				})
				var more_btn = $("<div></div>").attr({"class":"more-btn","align":"center"});
				
				var more_span = $("<span></span>").attr("class","more-span");
				var plus_sign = $("<img/>").attr({"src":"resources/upload/plussign.png","width":"15","height":"auto"});
				$(more_span).append(plus_sign,"더 보기");
				$(more_btn).append(more_span);
				
				$(box).append(more_btn);
				
				$(more_span).click(function(){
					start = start+10;
					$(more_btn).remove();
					load_top_artist();
				})
			}
		})
	}
})
</script>
<title>Insert title here</title>
</head>
<body>
<div class="list-song">
	<div class="wrap-loading display-none">
    	<div><img src="resources/img/loading1.gif" width="60" height="auto"/></div>
	</div>
	<div class="list-song-right">
		<div class="list-song-kind">
			<div class="order-block song checked"><span class="glyphicon glyphicon-equalizer"></span> TOP SONGS</div>
			<div class="order-block artist">TOP ARTISTS</div>
		</div>
		<div class="list-song-date">
			<div class="order-block today checked">
				<span class="glyphicon glyphicon-calendar"></span> TODAY
			</div>
			<div class="order-block this-week">THIS WEEK</div>
			<div class="order-block this-month">THIS MONTH</div>
			<div class="order-block all-time">ALL TIME</div>
		</div>
		<div class="list-song-search">
			<input type="text" id="keyWord" name="keyWord">
			<button id="search-btn"><span class="glyphicon glyphicon-search"></span></button>
		</div>

	</div>
	<div class="list-song-left">
		<div class="list-song-title">
			TOP SONGS
		</div>
		<div class="list-song-body">
			<div class="song-box">
				
			</div>
		</div>
	</div>
</div>
</body>
</html>