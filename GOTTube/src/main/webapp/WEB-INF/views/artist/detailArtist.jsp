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
	background-color: #eaecec;
	background-image: linear-gradient(-45deg, rgba(255, 255, 255, 0) 0%, rgba(255, 255, 255, 0) 44%, rgba(255, 255, 255, 0.3) 45%, rgba(255, 255, 255, 0.3) 55%, rgba(255, 255, 255, 0) 56%, rgba(255, 255, 255, 0) 100%);
	background-size: 4px 4px;
	background-repeat: repeat;
}

.detail-artist{
	width:100%;
	height:auto;
	min-width:320px;
	overflow-x:hidden;
	font-family: 'lucida grande';
	padding-bottom:70px;
}

.detail-artist-header{
	position:relative;
	width:100%;
	min-width:340px;
	max-height: 270px;
	background-size:cover;
	overflow:hidden;
	box-shadow: 0px -20px 180px black inset; 
}

.detail-artist-header:before{
	content:"";
	display:block;
	padding-top:25%;
}

.detail-artist-left{
	width:42%;
	height:auto;
	float:left;
	display:inline-block;
	margin-left:5%;
}

.detail-artist-right{
	width:48%;
	height:auto;
	float:right;
	display:inline-block;
	margin-right:5%;
}

.detail-artist-profile{
	position:absolute;
	width:25%;
	line-height:10px;
	min-height:100px;
	max-height:290px;
	min-width:100px;
	max-width:290px;
	background-size:cover;
	border-radius:50%;
	border: 2px solid white;
	overflow:hidden;
	top:90px;
	margin-left:9.5%;
	z-index:0;
}

.detail-artist-profile:before{
	content:"";
	display:block;
	padding-top:100%;
	z-index:0;
}

.detail-artist-name{
	position: relative;
	margin-top:70px;
	height:auto;
	text-align: center;
	width:100%;
	font-size: 2em;
	font-weight: bold;
	max-width:545px;
	color:#202020;
	letter-spacing:-1px;
}

.detail-artist-content{
	background: #fefefe;
	min-height:100px;
	max-width:405px;
	margin:auto;
	padding:13px;
}

.detail-artist-content .title{
	font-weight: bolder;
	font-family: 'Open Sans';
	letter-spacing: 0px;
	word-spacing: 3px;
	color: black;
}

.detail-artist-content .content{
	height:auto;
	margin-top:15px;
	font-size: 17px;
	padding-right:20px;
}
.left-blank{
	text-align: center;
	font-weight: bolder;
	font-family: 'Whitney';
	font-size:1.5em;
	padding-top:1em;
	padding-bottom:1em;
	padding-right:1em;
}
.left-blank span:hover,:focus{
	cursor:pointer;
}

.detail-artist-song{
	margin-top:20px;
	margin-right:5%;
	display:inline-block;
	width:100%;
}

.detail-artist-song .title{
	font-weight: bold;
	font-family: 'Open Sans';
	line-height:15px;
	letter-spacing: 0px;
	word-spacing: 3px;
	color: gray;
}

.detail-artist-song .content{
	height:auto;
	width:96%;
	margin-top:5px;
	font-size: 17px;
	display:inline-block;
}

.detail-artist-song .content a{
	color:black;
	text-decoration: none;
}

.detail-artist-song .content a:hover{
	opacity:0.6;
/* 	background:#000; */
}

.song-left{
	float:left;
	display:inline-block;
	width:50%;
}

.song-right{
	float:right;
	display:inline-block;
	width:50%;
}
.song-layer{
	position:relative;
	display:inline-block;
	width:100%;
	min-height:75px;
	height:auto;
	padding-left:4px;
}

.song-layer a:hover{
	text-decoration:none;
}

.song-block{
	text-decoration:none;
	min-height:75px;
	height:auto;
	display:inline-block;
	width:48%;
	background:#fefefe;
	margin:4px;
	margin-bottom:2px;
	margin-top:2px;
	position:relative;
	vertical-align: top;
}


.song-block-profile{
	float:left;
	width:75px;
	height:75px;
}

.song-block-detail{
	width:90%;
	padding-left:83px;
	vertical-align: middle;
	height:auto;
	padding-top:4px;
	position:relative;
	padding-bottom:4px;kj
}

.song-block-title{
	font-family:"Whitney";
	font-size:1em;
	font-weight:bold;
}

.song-block-artist{
	font-family:"Whitney";
	font-size:0.75em;
	font-weight:bold;
}

.song-block-hit{
	font-size:0.7em;
	font-family:"Whitney";
	font-weight:bold;
	margin-top:5px;
}


.hit-span{
	font-size:1.15em;
	margin-left:3px;
	bottom:0;
	margin-top:5px;
}

.detail-artist-album{
	margin-top:20px;
	float:left;
	display:inline-block;
	width:100%;
}

.detail-artist-album .title{
	font-weight: bold;
	font-family: 'Open Sans';
	line-height:15px;
	letter-spacing: 0px;
	word-spacing: 3px;
	color: gray;
}

.detail-artist-album .content{
	position:relative;
	overflow-y:hidden;
	height:auto;
	width:96%;
	margin-top:5px;
	font-size: 17px;
	background:white;
	padding:1rem;
	min-width:300px;
}

.album-layer{
	width:100%;
	display:block;
	padding:1em;
	position:relative;
}

.album-layer:before{
	content:"";
	display:block;
	padding-top:43%;
}

.album-layer a:hover{
	opacity:0.6;
}

.album-block{
	position:absolute;
	top:0;
	left:0;
	width:30%;
	padding:1rem;
	text-decoration:none;
	min-height:95%;
	height:auto;
	display:inline-block;
	vertical-align: top;
	text-align:center;
}
.album-block2{
	position:absolute;
	top:0;
	left:35%;
	width:30%;
	padding:1rem;
	text-decoration:none;
	min-height:95%;
	height:auto;
	display:inline-block;
	vertical-align: top;
	text-align:center;
}
.album-block3{
	position:absolute;
	top:0;
	left:70%;
	width:30%;
	padding:1rem;
	text-decoration:none;
	min-height:95%;
	height:auto;
	display:inline-block;
	vertical-align: top;
	text-align:center;
}

.album-block-title{
	font-size:1em;
	margin-top:1rem;
	font-weight:bold;
	color:black;
	font-family:'Whitney';
}

.album-block-year{
	font-size:0.7em;
	font-weight:bold;
	color:gray;
	font-family:'Whitney';
}

.cover-art{
	width:100%;
	background:white;
	background-image: url("resources/upload/drake.jpg");
	position:relative;
}

.cover-art:before{
	content:"";
	padding-top:100%;
	display:block;
}

.cover-img{
	width:100%;
	height:100%;
	position:absolute;
	top:0;
	left:0;
}

.more-btn{
	font-family: 'Open Sans';
	line-height:20px;
	letter-spacing: 0px;
	height:30px;
	width:96%;
	margin-top:5px;
	background:white;
	vertical-align: middle;
	font-weight: bold;
	text-align: center;
	padding-top:4px;
}

.more-btn:hover{
	opacity:0.6;
	cursor: pointer;
}

.hide{
	display:none;
}

#readmore{
	cursor: pointer;
	margin-left:39%;
}

.phone-more{
	display:none;
}

.content-phone{
	display:none;
}

.detail-artist-content-phone{
	display:none;
}
.detail-artist-related-posts{
	max-width:405px;
	width:100%;
	margin-left:0.5em;
	min-height:5em;
	display:block;
	position:relative;
	background:#fefefe;
	margin:auto;
	margin-top:2em;
	padding:13px;
}
.detail-artist-related-posts .title{
	font-family:'Open Sans';
	font-weight:bold;
	
}
.detail-artist-related-posts .body{
	width:100%;
	min-height:3em;
}
.detail-artist-related-posts .post-block{
	width:100%;
	position:relative;
	margin-top:2em;
	min-height:6em;
}
.detail-artist-related-posts .post-block .img{
	width:100%;
	background-size:cover;
	background-position:center;
	position:relative;
	display:block;
}
.detail-artist-related-posts .post-block .img:before{
	content:"";
	padding-bottom:50%;
	display:block;
}
.detail-artist-related-posts .post-block .title{
	margin-top:1em;
	font-family:'Oswald';
	font-size:1.3em;
}
.phone{
	display:none;
}
@media screen and (max-width:1080px){
	.song-block{
		width:100%;
	}
	.detail-artist-name{
		font-size: 26px;
		margin-top:14%;
		min-width:240px;
	}
	.detail-artist-left{
		width:44%;
		margin-left:4%;
	}
	.detail-artist-right{
		width:46%;
		margin-right:4%;
	}
	.detail-artist-profile{
		margin-left:9.5%;
	}
	.detail-artist-posts{
		width:100%;
	}
	.album-block-title{
		font-size:1.7vw;
	}
	
	.album-block-year{
		font-size:1.4vw;
	}
	
}

@media screen and (max-width:720px){
	.phone-blank{
		height:auto;
		width:100%;
		min-height:50px;
	}
	.detail-artist-profile{
		position:absolute;
		width:25%;
		line-height:10px;
		min-height:75px;
		max-height:275px;
		min-width:75px;
		background-size:cover;
		border-radius:50%;
		border: 2px solid white;
		overflow:hidden;
		top:90px;
		left:27.8%;
		z-index:0;
	}
	.detail-artist-name{
		margin-top:0;
		height:auto;
		min-width:240px;
		text-align:center;	
		display:inline-block;
		width:100%;
	}
	.detail-artist{
		margin:auto;
		min-width:300px;
		overflow-x:hidden;
		
	}
	.detail-artist-left{
		width:100%;
		height:auto;
		float:left;
		display:inline-block;
		margin:auto;
		margin-right:0;
		min-width:250px;
	}
	.detail-artist-right{
		width:100%;
		height:auto;
		float:left;
		display:inline-block;
		margin:auto;
		margin-left:0;
		min-width:250px;
	}
	.detail-artist-content{
		display:none;
	}
	.detail-artist-related-posts{
		display:none;
	}
	.detail-artist-content-phone{
		min-height:48px;
		width:100%;
		display:block;
		background: white;
		margin:auto;
		padding:13px;
	}
	
	.detail-artist-content-phone .title-phone{
		font-weight: bolder;
		font-family: 'Open Sans';
		letter-spacing: 0px;
		word-spacing: 3px;
		color: black;
	}
	
	.detail-artist-content-phone .content-phone{
		height:auto;
		margin-top:15px;
		padding-right:20px;
		background: white;
		min-height:48px;
		width:100%;
		min-width:250px;
		margin:auto;
		padding:13px;
		display:none;
	}

	.detail-artist-album{
		width:100%;
	}
	.detail-artist-song{
		margin-right:0;
		width:100%;
	}
	.detail-artist-album .content{
		width:100%;
		min-width:250px;
	}
	.detail-artist-song .content{
		width:100%;
		min-width:250px;
	}
	.more-btn{
		width:100%;
	}
	.phone-more{
		display: block;
		float:right;
		margin-top:5px;
		cursor:pointer;
	}
	.phone-skip{
		display:block;
		margin-left:43%;
		cursor:pointer;
		color:navy;
	}
	.album-block-title{
		font-size:3.5vw;
	}
	
	.album-block-year{
		font-size:2.5vw;
	}
	.phone{
		display:block;
	}
	.detail-artist-related-posts{
		max-width:none;
		width:100%;
		margin-left:0.5em;
		min-height:none;
		position:relative;
		background:#fefefe;
		margin:auto;
		margin-top:19em;

	}
	.detail-artist-related-posts .title{

	}
}	

</style>
<script type="text/javascript">
$(function(){
	var ar_no = $("#ar_no").val();
	var m_no = $("#session_m_no").val();
	var content;
	var pre_content;
	var artist_rating_chk;
	
	attach_image();
	content_set();
	artist_hotsong();
	artist_albumlist();
	artist_rating_checked();
	load_artist_rating();
	load_related_posts();
	
	function load_related_posts(){
		var ar_no = $('#ar_no').val();
		var rp_form = new FormData();
		rp_form.append("ar_no",ar_no);
		
		$.ajax({
			url:"listRelatedPosts.do",
			data:rp_form,
			dataType:'json',
			method:'post',
			contentType:false,
			processData:false,
			async:false,
			success:function(data){
				var body = $(".detail-artist-related-posts .body");
				$(data).each(function(index,data){
					var block = $("<div></div>").attr("class","post-block");

					var img = $("<div></div>").attr({"class":"img"});
					var title = $("<div></div>").attr("class","title");
					var link = $("<a></a>").attr("href","detailNews.do?b_no="+data.b_no);
					$(img).css("background-image","url('"+data.fname+"')");
					
					$(title).append(data.title);
					
					$(link).append(title);
					
					$(block).append(img,link);
					
					$(title).css("color","black");
					
					$(body).append(block);
				})
			}
		})
	}
	function artist_rating_checked(){
		var ar_form = new FormData();
		var ar_no = $("#ar_no").val();
		ar_form.append("m_no",m_no);
		ar_form.append("ar_no",ar_no)
		if(m_no != 'null'){
			$.ajax({
				url:"checkArtistRating.do",
				method:'post',
				data:ar_form,
				dataType:"json",
				async:false,
				processData:false,
				contentType:false,
				success:function(data){
					artist_rating_chk = eval("("+data+")");
				}
			})
		}else{
			artist_rating_chk = null;	
		}
	}
	function load_artist_rating(){
		var ar_no = $("#ar_no").val();
		
		var ar_form = new FormData();
		ar_form.append("ar_no",ar_no);
		$.ajax({
			url:"detailArtistRating.do",
			method:'post',
			data:ar_form,
			dataType:"json",
			async:false,
			processData:false,
			contentType:false,
			success:function(data){
				var box = $(".left-blank");
				var icon = $("<span></span>").attr("class","glyphicon glyphicon-heart");
				var span = $("<span></span>").append(icon," ",eval("("+data+")"));
				
				$(icon).css("top","0.2em");
				
				$(box).append(span);

				if(m_no == '' || m_no == null){
					$(box).attr("display","none");
				}

				if(artist_rating_chk > 0){
					$(span).addClass("rating-checked");
					$(span).attr("style","color:#e83c4f;");
				}else{
					$(span).attr("style","color:#777;");
				}
				$(span).click(function(){

					var rate_chk = 0;
					var arh_form = new FormData();

					arh_form.append("ar_no",ar_no);
					arh_form.append("m_no",m_no);
					if($(span).hasClass("rating-checked")){
						$.ajax({
							url:"updateArtistRatingQuit.do",
							method:"post",
							data:arh_form,
							processData:false,
							contentType:false,
							success:function(data){
								rate_chk = eval("("+data+")");
								$(span).removeClass("rating-checked");
								$(span).attr("style","color:#777;");
								$(span).empty();
								
								$(span).append(icon," ",rate_chk);

							}
						})
						
					}else{
						$.ajax({
							url:"updateArtistRating.do",
							method:"post",
							data:arh_form,
							processData:false,
							contentType:false,
							success:function(data){
								rate_chk = eval("("+data+")");
								$(span).addClass("rating-checked");
								$(span).attr("style","color:#e83c4f;");
								$(span).empty();
								
								$(span).append(icon," ",rate_chk);
	
							}
						});

					}
				});
			}
		})
	}
	function content_set(){

		$.ajax({
			url:"detailContent.do",
			method:"post",
			data:{ar_no:ar_no},
			success:function(data){
				content = data;
				var content_box = $(".detail-artist-content .content");
				var skip = $("<span>접기</span>").attr("class","phone-skip")
				
				$("#content").append(content);
				
				$(".content-phone").append(content,skip);
				
				$(".phone-more").click(function(){
					$(".detail-artist-content-phone .content-phone").css("display","block");
					$(".phone-more").css("display","none");
					$(".phone-skip").css("display","block");
				});

				
				$(".phone-skip").click(function(){
					$(".detail-artist-content-phone .content-phone").css("display","none");
					$(".phone-more").css("display","block");
					$(".phone-skip").css("display","none");
				});
	
				
				if($("#content").text().length > 500){
					pre_content = content.substring(0,500);
					
					var end_chk;
					
					if(pre_content[499] != " "){
						for(var i=500;;i++){
							if(content[i] == " "){
								end_chk = i;
								break;
							}
						}
						pre_content = content.substring(0,end_chk);
					}
					pre_content = pre_content+"...";
					
					var img = $("<img/>").attr({"src":"resources/upload/read.png","width":"10","height":"auto","style":"margin-left:5px;"});
					
					var read_more = $("<a>read more</a>").attr("id","readmore");

					read_more.append(img);
					content_box.append(pre_content,read_more);
					
					$("#readmore").click(function(){
						full_content();
					});
				}else{
					content_box.append(content);
				}
			}
		});
	}
	
	function full_content(){
		var content_block = $(".detail-artist-content .content");
		
		content_block.empty();
		
		content_block.append(content);
	}
	
	function attach_image(){
		var profile = $("#profile").val();
		var bg = $("#bg").val();
		
		$(".detail-artist-profile").css("background-image","url('"+profile+"')");
		$(".detail-artist-header").css("background-image","url('"+bg+"')");
		
	}
	
	function artist_hotsong(){
		$.ajax({
			url:"listArtistHotSong.do",
			method:"post",
			data:{ar_no:ar_no},
			success:function(data){
				var song_content = $(".detail-artist-song .content");
				
				var arr = eval(data);
				
				$(arr).each(function(index,data){
					if(index == 10){
						return false;
					}
					var last_layer = $(".song-layer").last();
					
					var layer = $("<div></div>").attr("class","song-layer");
					var block = $("<div></div>").attr("class","song-block");
					var song_profile = $("<div></div>").attr("class","song-block-profile");
					var detail = $("<div></div>").attr("class","song-block-detail");
					var song_title = $("<div></div>").attr("class","song-block-title");
					var song_artist = $("<div></div>").attr("class","song-block-artist");
					var song_hit = $("<div></div>").attr("class","song-block-hit");
					var p_img = $("<img/>").attr({"src":data.a_img,"width":"75","height":"75"});
					var span = $("<span></span>").attr("class","glyphicon glyphicon-eye-open");
					var span2 = $("<span></span>").attr("class","hit-span");
					
					var song_link = $("<a></a>").attr("href","detailSong.do?s_no="+data.s_no+"&hitAdd=true");
					
					$(span2).append(data.hit);
					
					$(song_title).append(data.s_title);
					
					
					$(song_artist).append(data.a_name);
					$(song_hit).append(span,span2);
					$(song_profile).append(p_img);
					
					if(!data.a_name.match($("#ar_name").val())){
						$(song_artist).append("<font color='silver'>, "+$("#ar_name").val()+"</font>");
					}
					
					$(detail).append(song_title,song_artist,song_hit);
					$(song_profile).append(p_img);
					$(block).append(song_profile,detail);
					$(song_link).append(block);
					
					if(index % 2 == 0){
						$(layer).append(song_link);
						$(song_content).append(layer);
					}else{
						$(last_layer).append(song_link);
					}
				})
			}
		});
	}
	
	function artist_albumlist(){
		$.ajax({
			url:"listArtistRecentAlbum.do",
			method:"post",
			data:{ar_no:ar_no},
			success:function(data){
				var album_content = $(".detail-artist-album .content");

				var arr = eval(data);
				
				$(arr).each(function(index,data){
				
					if(index == 6){
						return false;
					}
					var last_layer = $(".album-layer").last();
					
					var block;
					
					if((index % 3) == 0){
						block = $("<div></div>").attr("class","album-block");
					}else if((index % 3) == 1){
						block = $("<div></div>").attr("class","album-block2");
					}else{
						block = $("<div></div>").attr("class","album-block3");
					}
					
					var layer = $("<div></div>").attr("class","album-layer");

					var cover_art = $("<div></div>").attr("class","cover-art");
					var cover_img = $("<img/>").attr({"class":"cover-img","src":data.a_img});
					var title = $("<p></p>").attr("class","album-block-title");
					var year = $("<p></p>").attr("class","album-block-year");
					
					$(title).append(data.title);
					$(year).append(data.release_date);

					var album_link = $("<a></a>").attr("href","detailAlbum.do?a_no="+data.a_no);
					
					$(cover_art).append(cover_img);
					
					$(block).append(cover_art,title,year);
					
					$(album_link).append(block);
					
					if((index%3) == 0){
						$(layer).append(album_link);
						$(album_content).append(layer);
					}else{
						$(last_layer).append(album_link);
					}
				})
			}
		});
	}
	
	var toggle = 0;
	
	
	$("p").removeAttr("style");
})
</script>
</head>
<body>
<div class="detail-artist">
	<input type="hidden" id="ar_no" value="${vo.ar_no }">
	<input type="hidden" id="profile" value="${vo.profile}">
	<input type="hidden" id="bg" value="${vo.bg}">
	<input type="hidden" id="ar_name" value="${vo.ar_name}">

	<div id="content" style="display:none;">
	</div>
	
	<div class="detail-artist-header">
	</div>
	<div class="detail-artist-left">
		<div class="detail-artist-profile">
		</div>
		<div class="phone-blank"></div>
		<div class="detail-artist-name">
			${vo.ar_name }
		</div>

<%-- 		<div class="left-blank2">${vo.ar_type}</div> --%>
 		<div class="left-blank"></div> 
		
		<div class="detail-artist-content">
			<div class="title">ABOUT "${vo.ar_name }"</div>
			<div class="content"></div>
		</div>
		<div class="detail-artist-content-phone">
			<div class="title-phone">ABOUT "${vo.ar_name }" <span class="phone-more"><img src="resources/upload/read.png" width="13" height="auto"/></span></div>
			<div class="content-phone"></div>
		</div>
		<div class="detail-artist-related-posts">
			<div class="title">
				RELATED POSTS
			</div>
			<div class="body">
				
			</div>
		</div>
	</div>
	<div class="detail-artist-right">
		<div class="detail-artist-song">
			<div class="title">POPULAR SONGS</div>
			<div class="content">
			</div>
			<div class="more-btn song"><span style="display:inline-block;">SEE MORE SONGS by ${vo.ar_name } ></span></div>
		</div>
		<div class="detail-artist-album">
			<div class="title">LATEST ALBUMS</div>
			<div class="content">
				
			</div>
			<div class="more-btn album"><span>SEE MORE ALBUMS by ${vo.ar_name } ></span></div>
		</div>
		<div class="detail-artist-related-posts phone">
			<div class="title">
				RELATED POSTS
			</div>
			<div class="body">
				
			</div>
		</div>
	</div>

</div>
</body>
</html>