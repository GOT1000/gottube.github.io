<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>Insert title here</title>
<style type="text/css">
body{
	background: black;
}
</style>
<script type="text/javascript">
$(function(){
	if($("#snippet").val() != null && $("#snippet").val() != ""){
		alert($("#snippet").val());
		$("#snippet").val("");
		sessionStorage.removeItem("snippet");
	}
})
</script>
<style type="text/css">
@-webkit-keyframes 'lightup'{
	from{
		opacity:0.75;
	}
	to{
		opacity:0.9;
	}
}
@-webkit-keyframes 'lightup-album'{
	from{
		background:none;
	}
	to{
		background:#161616;
	}
}
@-webkit-keyframes 'lightup-title'{
	from{
		color:#cecece;
	}
	to{
		color:#fefefe;
	}
}
@-webkit-keyframes 'lightup-artist'{
	from{
		color:#aaa
	}
	to{
		color:#fefefe;
	}
}
@-webkit-keyframes 'lightup-date'{
	from{
		color:#c88c0c;
	}
	to{
		color:#ec9c0c;
	}
}
@-webkit-keyframes 'lightup-top'{
	from{
		opacity:0.75;
/* 		box-shadow: 0 -10em 10em -5em black inset;   */
	}
	to{
		opacity:0.9;
	}
}
@-webkit-keyframes 'lightout'{
	from{
		opacity:0.9;
	}
	to{
		opacity:0.75;
	}
}
@-webkit-keyframes 'lightout-album'{
	from{
		background:#161616;
	}
	to{
		background:none;
	}
}
@-webkit-keyframes 'lightout-date'{
	from{
		color:#ec9c0c;
	}
	to{
		color:#c88c0c;
	}
}
@-webkit-keyframes 'lightout-top'{
	from{
		opacity:0.9;
	}
	to{
		opacity:0.75;
	}
}
@-webkit-keyframes 'lightout-title'{
	from{
		color:#fefefe;
	}
	to{
		color:#cecece;
/* 		box-shadow: 0 -10em 10em -5em black inset;  */
	}
}
@-webkit-keyframes 'lightout-artist'{
	from{
		color:#fefefe;
	}
	to{
		color:#aaa;
/* 		box-shadow: 0 -10em 10em -5em black inset;  */
	}
}
.front-body{
	width:100%;
	margin:auto;
}
.front-up{
	width:98%;
	position:relative;
	display:block;
	margin:auto;
}
.front-up:before{
	content:"";
	display:block;
	padding-top:28%;
}
.front-banner-top{
	position:absolute;
	padding-top:3%;
	top:0;
	left:0;
	display:inline-block;
	width:50%;
	height:100%;
}
.front-banner-etc{
	display:inline-block;
	padding-top:3%;
	position:absolute;
	top:0;
	right:0;
	width:50%;
	height:100%;
}
.news-title{
	position:absolute;
	color:#cecece;
	bottom:9%;
	left:3%;
	width:95%;
	font-size:2.4vw;
	font-family:'Oswald';
	font-weight:bold;
	margin-top:-5em;
	opacity:1;
}
.etc-title{
	position:absolute;
	color:#cecece;
	bottom:9%;
	text-align:left;
	left:3%;
	width:95%;
	font-size:1.4vw;
	font-family:'Oswald';
	font-weight:bold;
	opacity:1;
}
.top-news{
	width:98%;
	background-position: center;
	background-size:cover;
	box-shadow: 0 -10em 10em -5em black inset; 
	background-color:#3c3c3c;
	filter:Alpha(opacity=90);
	opacity:0.75;
	-moz-opacity:0.75;
}
.top-news:before{
	content:"";
	display:block;
	padding-top:50%;
}
.etc-news{
	width:98%;
	display:inline-block;
	position:relative;
}
.etc-news:before{
	content:"";
	display:block;
	padding-top:50%;
}
.etc-news-box{
	width:100%;
	height:100%;
	position:absolute;
	display:inline-block;
	top:0;
	left:0;
}
.etc-news-block-1{
	float:left;
	width:48.5%;
	bottom:0;
	left:0;
	position:relative;
}
.etc-image{
	position:absolute;
	left:0;
	top:0;
	width:100%;
	height:100%;
	background-size:cover;
	background-position:center;
	display:inline-block;
	box-shadow: 0 -5em 5em -2.5em black inset; 
	background-color:#3c3c3c;
	filter:Alpha(opacity=90);
	opacity:0.75;
	-moz-opacity:0.75;
}
.etc-news-block-1:before{
	content:"";
	display:block;
	padding-top:50%;
}
.etc-news-block-2{
	float:left;
	width:48.5%;
	margin-left:1.5%;
	position:relative;
	bottom:0;
}
.etc-news-block-2:before{
	content:"";
	display:block;
	padding-top:50%;
}
.etc-news-block-3{
	float:left;
	bottom:0px;
	position:relative;
	margin-top:1.5%;
	left:0;
	width:48.5%;
	display:inline-block;
}
.etc-news-block-3:before{
	content:"";
	display:block;
	padding-top:50%;
}
.etc-news-block-4{
	float:left;
	bottom:0px;
	position:relative;
	margin-left:1.5%;
	margin-top:1.5%;
	width:48.5%;
	display:inline-block;
}
.etc-news-block-4:before{
	content:"";
	display:block;
	padding-top:50%;
}
.front-carousel{
	display:none;
	width:100%;
	height:auto;
	max-height:500px;
	margin:auto;
	cursor:pointer;
	margin-bottom:20px;
}


#gottube-carousel{
	margin:auto;

}
.carousel-caption{
	font-size:4.5vw;
	font-weight:bold;
	font-family:'Oswald';
	color:#fff;
	width:98%;
	padding-bottom:0;
	left:2%;
	margin-right:2%;
	text-align:left;
}
.carousel-indicators li {
    display: inline-block;
    width: 0.5em;
    height: 0.5em;
    margin: 1%;
    text-indent: 0;
    cursor: pointer;
    opacity:0.5;
    border: none;
    border-radius: 50%;
    background-color: #4c4c4c;
}
.carousel-indicators .active {
    width: 0.5em;
    height: 0.5em;
    margin: 1%;
    background-color: #fefefe;
}
.carousel-inner .carousel-item{
	position:relative;
	width:100%;
/* 	max-width:1500px; */
	max-height:450px;
	background-position-y:-2.4em;
	background-size:cover;
	overflow:hidden;
	box-shadow: 0 -10em 10em -5em black inset; 
	background-color:#3c3c3c;
	filter:Alpha(opacity=90);
	opacity:0.75;
	-moz-opacity:0.75;
}

.carousel-inner .carousel-item:before{
	content:"";
	display:block;
	padding-top:50%;
	
}

.front-box{
	width:100%;
	display:block;
	margin:auto;
	margin-top:3em;
	margin-bottom:3em;
	overflow-x:hidden;
}

.front-left{
	display:inline-block;
	float:left;
	width:43.5%;
	margin-left:6.5%;
}
.front-right{
	display:inline-block;
	float:right;
	width:43%;
	margin-right:7%;
	
}

/* /====================song-block======================== */
.front-top5 .first{
	margin-bottom:3%;
}

.front-top5 .first-block{
	width:100%;
	position:relative;
	background-color:#0c0c0c;
}
.front-top5 .first-block:before{
	content:"";
	padding:12%;
	display:block;
}
.front-top5 .list-box{
	width:100%;
	position:relative;
	margin-bottom:3%;
}
.front-top5 .list-box:before{
	content:"";
	padding:10%;
	display:block;	
}

.front-top5 .list-block-left{
	width:48%;
	float:left;
	height:100%;
	display:inline-block;
	position:absolute;
	top:0;
	left:0;
	margin-right:2%;
	background-color:#0e0e0e;
}
.front-top5 .list-block-right{
	width:48%;
	float:right;
	display:inline-block;
	position:absolute;
	top:0;
	left:52%;
	height:100%;
	background-color:#0e0e0e;
}
.front-top-etc .etc-block{
	width:100%;
	position:relative;
	background-color:#0e0e0e;
	margin-bottom:3%;
}
.front-top-etc .etc-block:before{
	padding-bottom:8%;
	content:"";
	display:block;
}
.etc-block .caption{
	position:absolute;
	top:15%;
	width:94%;
	overflow:auto;
	left:2%;
}
.song-block{
	width:100%;
	background-position:center;
	background-size:cover;
	position:absolute;
	height:100%;
	top:0;
	left:0;
	border:0.1em solid white;
	filter:Alpha(opacity=90);
	opacity:0.1;
	-moz-opacity:0.1;
}

.front-top5 .first .caption{
	position:absolute;
	top:6%;
	left:2%;
	width:94%;
}
.front-top5 .list .caption{
	position:absolute;
	top:6%;
	left:4%;
	width:92%;
}
.front-songs .caption .title{
	font-size:1.5vw;
	color:#cecece;
	font-weight:bold;
	font-family:'Oswald';
	display:inline-block;
	margin-right:0.2em;
}
.front-songs .caption .artist{
	font-size:1.5vw;
	color:#aaa;
	font-family:'Open Sans Condensed';
	display:inline-block;
}
/* /====================album-block======================== */

.front-album-block{
	width:90%;
	position:relative;
	overflow-y:auto;
	height:auto;
}
.front-album-block:before{
	content:"";
	display:inline-block;
	padding-bottom:36%;
}
.front-album-block .border{
	border-bottom:1px solid #2c2c2c;
}
.front-album-block .preview{
	width:27%;
	height:75%;
	top:11.5%;
	left:2%;
	overflow:auto;
	position:absolute;
	opacity:0.75;
	display:inline-block;
	background-size:cover;
	background-position: center;
}
.front-album-block .caption{
	width:70%;
	height:62.5%;
	top:16.5%;
	left:28%;
	overflow:visible;
	position:absolute;
	display:inline-block;
	padding-left:4%;
}
.front-album-block .caption .title{
	display:block;
	margin-top:5%;
	font-size:1.7vw;
	color:#cecece;
	font-family:'Whitney';
	width:90%;
}
.front-album-block .caption .artist{
	display:block;
	font-size:1.4vw;
	position:relative;
	font-family:'Open Sans Condensed';
	font-weight:bold;
	padding-bottom:0.1em;
	color:#aaa;
	width:90%;
}
.front-album-block .caption .r-date{
	display:block;
	font-family:'Whitney';
	font-weight:bold;
	font-size:1.1vw;
	color:#c88c0c;
	width:90%;
}
.front-box-title{
	font-family:'Whitney';
	margin-bottom:0.3em;
	color:#636363;
	font-size:1em;
}
.more-songs{
	color:#3c6cbc;
	float:right;
	font-family:'Open Sans';
	font-size:1.3vw;
}
.more-albums a{
	color:#cecece;
	float:right;
	font-family:'Whitney';
	font-size:1.3vw;
	margin-right:10%;
	margin-top:2%;
}
.more-songs:hover{
	text-decoration:none;
	color:#4c7ccc;
}
.more-albums a:hover{
	text-decoration:none;
	color:#fefefe;
}
@media screen and (max-width:1200px){
	.front-box-title{
		font-size:1vw;
	}
}

@media screen and (max-width:720px){
	.front-carousel{
		display:block;
	}
	.front-up{
		display:none;
	}
	.front-right{
		width:100%;
		margin-right:0;
		float:none;
	}
	.front-left{
		width:100%;
		margin-left:0;
		padding-right:0;
	}
	.front-album-block{
		width:96%;
		margin:auto;
	}
	.front-top5{
		width:98%;
		margin:auto;
	}
	.front-top-etc{
		width:98%;
		margin:auto;
	}
	.front-album-block .caption .title{
		font-size:4.2vw;
	}
	.front-album-block .caption .artist{
		font-size:3.5vw;
	}
	.front-album-block .caption .r-date{
		font-size:2vw;
	}
	.front-box-title{
		margin-left:2%;
		margin-top:3%;
		font-size:2vw;
	}
	.front-right .caption{
		top:17%;
		overflow:visible;
	}
	.front-right .caption .title{
		font-size:3vw;
	}
	.front-right .caption .artist{
		font-size:3vw;
	}
	.front-top5 .list .caption{
		position:absolute;
		top:6%;
		left:4%;
		width:92%;
	}
	.more-songs{
		font-size:2vw;
	}
	.more-albums a{
		margin-right:3%;
	}
}
</style>
<script type="text/javascript">
$(function(){
	
  	list_breaking();
  	list_carousel();
  	hot_song_list();
	latest_album_list();
  	
	$(".front-carousel").hover(function(){
		$(".carousel-inner .carousel-item").css({"-webkit-animation-name":"lightup-top",
												"-webkit-animation-duration":"1s",
												"opacity":"0.9",
												"-moz-opacity":"0.9"
												
												});

	},function(){
		$(".carousel-inner .carousel-item").css({"-webkit-animation-name":"lightout-top",
												"-webkit-animation-duration":"1s",
												"opacity":"0.75",
												"-moz-opacity":"0.75"
												});
	});

	function latest_album_list(){
		$.ajax({
			url:"MainRecentAlbum.do",
			method:"post",
			success:function(data){
				var albums = $(".front-albums");
				var arr = eval(data);
				
				$(arr).each(function(index,data){
					var block = $("<div></div>").attr("class","front-album-block");
					var preview = $("<div></div>").attr("class","preview");
					var caption = $("<div></div>").attr("class","caption");
					var artist = $("<div></div>").attr("class","artist");
					var title = $("<div></div>").attr("class","title");
					var r_date = $("<div></div>").attr("class","r-date");
					var link = $("<a></a>").attr("href","detailAlbum.do?a_no="+data.a_no);
					var border = $("<div></div>").attr("class","border");
					var time = $("<span></span>").attr("class","glyphicon glyphicon-time");
					
					$(time).css("top","0.2em");
					
					if(index <= 4){
						$(artist).append(data.a_name);
						$(title).append(data.title);
						$(r_date).append(time," ",data.release_date);
						
						$(preview).css("background-image","url("+data.a_img+")");
						$(caption).append(title,artist,r_date);
						$(link).append(preview,caption,border);
						$(block).append(link);
						$(albums).append(block);
						
						$(link).hover(function(){
							$(title).css({"-webkit-animation-name":"lightup-title",
								"-webkit-animation-duration":"1s",
								"color":"#fefefe"});
							$(artist).css({"-webkit-animation-name":"lightup-artist",
								"-webkit-animation-duration":"1s",
								"color":"#fefefe"});
							$(r_date).css({"-webkit-animation-name":"lightup-date",
								"-webkit-animation-duration":"1s",
								"color":"#e89c0c"});
							$(block).css({"-webkit-animation-name":"lightup-album",
								"-webkit-animation-duration":"1s",
								"background":"#161616"});
							$(preview).css({"-webkit-animation-name":"lightup",
								"-webkit-animation-duration":"1s",
								"opacity":"0.9",
								"-moz-opacity":"0.9"});
						},function(){
							$(title).css({"-webkit-animation-name":"lightout-title",
								"-webkit-animation-duration":"1s",
								"color":"#cecece"});
							$(artist).css({"-webkit-animation-name":"lightout-artist",
								"-webkit-animation-duration":"1s",
								"color":"#aaa"});
							$(r_date).css({"-webkit-animation-name":"lightout-date",
								"-webkit-animation-duration":"1s",
								"color":"#c88c0c"});
							$(block).css({"-webkit-animation-name":"lightout-album",
								"-webkit-animation-duration":"1s",
								"background":"none"});
							$(preview).css({"-webkit-animation-name":"lightout",
								"-webkit-animation-duration":"1s",
								"opacity":"0.75",
								"-moz-opacity":"0.75"});
						})
					}else{
						
						return false;
					}
					
				});
			}
		})
	}
	function hot_song_list(){
		var hot_form = new FormData();
		hot_form.append("start",1);
		hot_form.append("end",13);
		hot_form.append("chk_date","today");
		
		$.ajax({
			url:"topSong.do",
			data:hot_form,
			method:"post",
			async:false,
			processData:false,
			contentType:false,
			success:function(data){
				var arr = eval(data);
				var first = $(".front-top5 .first");
				var list = $(".front-top5 .list");
				var top_etc = $(".front-top-etc");

				
				$(arr).each(function(index,data){
					var song_block = $("<div></div>").attr("class","song-block");
					var caption = $("<div></div>").attr("class","caption");
					var title = $("<div></div>").attr("class","title");
					var artist = $("<div></div>").attr("class","artist");
					var link = $("<a></a>").attr("href","detailSong.do?s_no="+data.s_no+"&hitAdd=true");
					var etc = $(".front-top-etc");
					var block;
					
					$(title).append(data.s_title);
					$(artist).append(" by "+data.a_name);
					
					$(song_block).css("background-image","url("+data.a_img+")");
					
					$(caption).append(title,artist);

					if(index == 0){
						block = $("<div></div>").attr("class","first-block");
						$(block).append(song_block,caption);
						$(link).append(block);
						$(first).append(link);

					}else if(index >= 1 && index <= 4){
						if((index % 2) != 0){
							var box = $("<div></div>").attr("class","list-box");
							var left = $("<div></div>").attr("class","list-block-left");
							$(left).append(song_block,caption);
							$(link).append(left);
							$(box).append(link);
							$(list).append(box);
						}else{
							var box = $(".list-box").last();
							var right = $("<div></div>").attr("class","list-block-right");
							$(right).append(song_block,caption);
							$(link).append(right);
							$(box).append(link);
						}
					}else{
						block = $("<div></div>").attr("class","etc-block");
						$(song_block).css("background-image","none");
						$(block).append(song_block,caption);
						$(link).append(block);
						$(etc).append(link);
					}
					$(link).hover(function(){
						$(title).css("color","#fefefe");
						$(artist).css("color","#fefefe");
					},function(){
						$(title).css("color","#cecece");
						$(artist).css("color","#aaa");
					})
					if(index == 13){
						return false;
					}
				});
			}
		});
	}
	
	function list_carousel(){
		$.ajax({
			url:"listBreaking.do",
			method:"post",
			success:function(data){
				var arr = eval(data);
				var carousel = $(".carousel-inner");
				var indicator = $(".carousel-indicators");
				
				$(arr).each(function(index,data){
					
					var caption = $("<div></div>").attr("class","carousel-caption");
					$(caption).append(data.title);
					var item_active = $("<div></div>").attr("class","item active");
					var item = $("<div></div>").attr("class","item");
					var c_item = $("<div></div>").attr("class","carousel-item");
					var in_list = $("<li></li>").attr({"data-target":"#gottube-carousel","data-slide-to":index});
					$(c_item).css("background-image","url("+data.fname+")");
					var link = $("<a></a>").attr("href","detailNews.do?b_no="+data.b_no+"&hitAdd=true");
					
					if(index == 0){
						$(in_list).attr("class","active");
						$(link).append(c_item,caption);
						$(item_active).append(link);
						$(carousel).append(item_active);
					}else{
						$(link).append(c_item,caption);
						$(item).append(link);
						$(carousel).append(item);
					}
					$(indicator).append(in_list);
				});

				$("#gottube-carousel").swiperight(function() {  
				      $("#gottube-carousel").carousel('prev');  
				    });  
				   $("#gottube-carousel").swipeleft(function() {  
				      $("#gottube-carousel").carousel('next');  
				  });  
			}
		})
	}
	function list_breaking(){
		$.ajax({
			url:"listBreaking.do",
			method:"post",
			success:function(data){
				var arr = eval(data);
				var top = $("<div></div>").attr("class","top-news");
				var block1 = $("<div></div>").attr("class","etc-news-block-1");
				var block2 = $("<div></div>").attr("class","etc-news-block-2");
				var block3 = $("<div></div>").attr("class","etc-news-block-3");
				var block4 = $("<div></div>").attr("class","etc-news-block-4");
				$(arr).each(function(index,data){
					var link = $("<a></a>").attr("href","detailNews.do?b_no="+data.b_no+"&hitAdd=true");
					var title = $("<div></div>").attr("class","news-title");
					var etc_title = $("<div></div>").attr("class","etc-title");
					var image = $("<div></div>").attr("class","etc-image");
					
					$(image).css("background-image","url("+data.fname+")");
					
					$(title).append(data.title);
					$(etc_title).append(data.title);
					if(index == 0){
						$(top).css("background-image","url("+data.fname+")");
						$(link).append(top,title);
						$(".front-banner-top").append(link);
						$(".front-banner-top").hover(function(){
							$(".top-news").css({"-webkit-animation-name":"lightup-top",
																	"-webkit-animation-duration":"1s",
																	"opacity":"0.9",
																	"-moz-opacity":"0.9"
																	});

						},function(){
							$(".top-news").css({"-webkit-animation-name":"lightout-top",
																	"-webkit-animation-duration":"1s",
																	"opacity":"0.75",
																	"-moz-opacity":"0.75"
																	});
						});
					}else if(index == 1){
						
						//$(block1).append(etc_title);
						$(block1).append(image,etc_title);
						$(link).append(block1);
						$(link).attr("class","link1");
						$(".etc-news-box").append(link);
						$(".link1").hover(function(){
							$(".link1 .etc-image").css({"-webkit-animation-name":"lightup",
																	"-webkit-animation-duration":"1s",
																	"opacity":"0.9",
																	"-moz-opacity":"0.9"});

						},function(){
							$(".link1 .etc-image").css({"-webkit-animation-name":"lightout",
																	"-webkit-animation-duration":"1s",
																	"opacity":"0.75",
																	"-moz-opacity":"0.75" });
						});
					}else if(index == 2){
						$(block2).append(image,etc_title);
						$(link).append(block2);
						$(link).attr("class","link2");
						$(".etc-news-box").append(link);
						$(".link2").hover(function(){
							$(".link2 .etc-image").css({"-webkit-animation-name":"lightup",
															"-webkit-animation-duration":"1s",
															"opacity":"0.9",
															"-moz-opacity":"0.9"});
							
							},function(){
							$(".link2 .etc-image").css({"-webkit-animation-name":"lightout",
															"-webkit-animation-duration":"1s",
															"opacity":"0.75",
															"-moz-opacity":"0.75"});
						});
					}else if(index == 3){
						$(block3).append(image,etc_title);
						$(link).append(block3);
						$(link).attr("class","link3");
						$(".etc-news-box").append(link);	
						$(".link3").hover(function(){
							$(".link3 .etc-image").css({"-webkit-animation-name":"lightup",
															"-webkit-animation-duration":"1s",
															"opacity":"0.9",
															"-moz-opacity":"0.9"});
							
							},function(){
							$(".link3 .etc-image").css({"-webkit-animation-name":"lightout",
															"-webkit-animation-duration":"1s",
															"opacity":"0.75",
															"-moz-opacity":"0.75"});
						});
					}else{
						$(block4).append(image,etc_title);
						$(link).append(block4);
						$(link).attr("class","link4");
						$(".etc-news-box").append(link);
						$(".link4").hover(function(){
							$(".link4 .etc-image").css({"-webkit-animation-name":"lightup",
															"-webkit-animation-duration":"1s",
															"opacity":"0.9",
															"-moz-opacity":"0.9"});
		 
					
							},function(){
							$(".link4 .etc-image").css({"-webkit-animation-name":"lightout",
															"-webkit-animation-duration":"1s",
															"opacity":"0.75",
															"-moz-opacity":"0.75"});
						});
					}
					if(index == 4){
						return false;
					}
				})
			}
		});
	}
	
});
</script>
</head>
<body>

<input type="hidden" value="${snippet}" id="snippet" />
<%
	session.removeAttribute("snippet");
%>
<div class="front-body">
	<div class="front-up">
		<div class="front-banner-top">

		</div>
		<div class="front-banner-etc" align="right">
			<div class="etc-news">
				<div class="etc-news-box">
				</div>
				
			</div>
		</div>
	</div>
	<div class="front-carousel">
		<div id="gottube-carousel" class="carousel slide" data-ride="carousel">

		  <ol class="carousel-indicators" style="bottom:-3%;">
		    
		  </ol>
		

		  <div class="carousel-inner" role="listbox">
		   
		  </div>


		</div>
	</div>
  


	<div class="front-box">
		<div class="front-right">
			<p class="front-box-title">HOT SONGS</p>
			<div class="front-songs">
				<div class="front-top5">
					<div class="first">
					</div>
					<div class="list">
					</div>
				</div>
				<div class="front-top-etc">
				</div>
			</div>
		</div>
		<div class="front-left">
			<p class="front-box-title">LATEST ALBUMS</p>
			<div class="front-albums">
			</div>
			<div class="more-albums"><a href="listAlbum.do">>> See More Albums</a></div>
		</div>
		
	</div>
<!-- 	<div align="center"> -->
<!-- 	<a href="insertArtist.do"><font color="#fff">ADD ARTIST</font></a> -->
<!-- 	<br> -->
<!-- 	<a href="listArtist.do"><font color="#fff">LIST ARTIST</font></a> -->
<!-- 	<br> -->
<!-- 	<a href="insertAlbum.do"><font color="#fff">ADD ALBUM</font></a> -->
<!-- 	<br> -->
<!-- 	<a href="listAlbum.do"><font color="#fff">LIST ALBUM</font></a> -->
<!-- 	<br> -->
<!-- 	<a href="insertNews.do"><font color="#fff">ADD NEWS</font></a> -->
<!-- </div> -->
	
</div>

</body>
</html>