<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="https://fonts.googleapis.com/css?family=Open+Sans|Oswald|Palanquin+Dark|Poppins|Roboto" rel="stylesheet">

  <link rel="stylesheet" type="text/css" href="resources/css/amplitude/styles.css">
<style type="text/css">
body{
	background-color: #eaecec;
	background-image: linear-gradient(-45deg, rgba(255, 255, 255, 0) 0%, rgba(255, 255, 255, 0) 44%, rgba(255, 255, 255, 0.3) 45%, rgba(255, 255, 255, 0.3) 55%, rgba(255, 255, 255, 0) 56%, rgba(255, 255, 255, 0) 100%);
	background-size: 4px 4px;
	background-repeat: repeat;
}

.detail-song{
	width:100%;
	height:auto;
	min-width:300px;
	overflow-x:hidden;
	font-family: 'lucida grande';
	padding-bottom:70px;
}

.detail-song-header{
	position:relative;
	width:100%;
	min-width:300px;
	max-height:280px;
	min-height:180px;
	background-size:cover;
	overflow:hidden;
	background-position: center;
/* 	box-shadow: 0px -20px 180px black inset; */
}



.detail-song-header:before{
	content:"";
	min-height:180px;
	display:block;
	padding-top:25.5%;
	background-color:#000000;
	filter:Alpha(opacity=73);
	opacity:0.73;
	-moz-opacity:0.73;
}
.detail-song-body{
	width:80%;
	height:auto;
	margin:auto;
	background:white;
	overflow-y: auto;
	overflow-x:hidden;
}
.detail-song-detail a:hover{
	opacity:0.6;
	color:#EDEFF0;
}

.detail-song-left{
	width:53%;
	height:100%;
	float:left;
	display:inline-block;
	margin-left:2%;
	margin-right:1%;
}

.detail-song-right{
	width:41%;
	height:100%;
	float:right;
	display:inline-block;
	margin-right:2%;
}

.detail-song-post{
	width:95%;
	margin:auto;
	min-height:100px;
	padding:5px;
	margin-top:10px;
	margin-bottom:10px;
	border:3.5px solid #dedede;
}

.detail-song-post .title{
	font-size:1em;
	font-weight:bold;
	font-family:'Whitney';
}

.detail-song-thumbnail{
	width:95%;
	margin:auto;
	min-height:70px;
	padding:5px;
	margin-top:10px;
	margin-bottom:10px;
/* 	border:3.5px solid #dedede; */
}

.detail-song-view{
	width:95%;
	text-align:center;
	padding:15px;
	font-weight:bold;
	font-family:'Whitney';
	margin:auto;
	margin-top:1em;
	margin-bottom:1em;
}
.detail-song-view .info{
	display:block;
	position:relative;
	width:100%;
	font-size:1.1em;
}
.detail-song-view .btn-box{
	display:block;
	position:relative;
	margin-top:1em;
	font-size:1.5em;
	width:100%;
}
.detail-song-view .btn-box span{
	cursor:pointer;
}

.detail-song-view-phone{
	display:none;
	height:50px;
	width:95%;
	text-align:center;
	padding:15px;
	font-weight:bold;
	font-family:'Whitney';
	margin-top:10px;
	margin-bottom:10px;
	margin:auto;
}

.detail-song-thumbnail .title{
	font-size:1em;
	font-weight:bold;
	font-family:'Whitney';
}

.detail-song-thumbnail .content .block{
	width:100%;
	padding:15px;
	font-size:1.5em;
	font-weight:bold;
	font-family:'Whitney';
}

.detail-song-thumbnail .content .block a{
	text-decoration:none;
	color:black;
}

.detail-song-thumbnail .content .block a:hover{
	opacity:0.5;
}

.detail-song-track{
	width:100%;
	min-height:70px;
	height:auto;
	font-family:'Open Sans';
	font-size:1.3em;
	overflow-x:hidden;
	overflow-y:auto;
	margin:14px;
}

.detail-song-track .title{
	height:70px;
	font-weight:bold;
}

.detail-song-track .title .a_img{
	display:inline-block;
	height:70px;
	padding-bottom:10px;
}

.detail-song-track .title .detail{
	display:inline-block;
	text-align:center;
	width:70%;
	min-width:150px;
	color:black;
	font-size:0.8em;
	height:70px;
	vertical-align: middle;
	padding-top:10px;
}

.detail-song-track .title a{
	color:black;
}

.detail-song-track .title a:hover{
	text-decoration:none;
	opacity:0.5;
}

.detail-song-track .content{
	height:auto;
	font-size:0.7em;
	font-weight:bold;
}

.detail-song-track .content .track-td{
	padding:5px;
}

.detail-song-track .content .track-td a{
	color:black;
}

.detail-song-track .content .track-td a:hover{
	opacity:0.5;
	text-decoration: none;
}

.detail-song-track .content .track-left{
	height:100%;
	float:left;
	width:50%;
	padding:10px;
}

.detail-song-track .content .track-right{
	height:100%;
	float:right;
	width:50%;
	padding:10px;
}

.detail-song-profile{
	position:absolute;
	width:20%;
	line-height:10px;
	min-height:100px;
	max-width:220px;
	min-width:100px;
	background-size:cover;
	overflow:hidden;
	top:0;
	margin-top:2em;
	margin-left:109px;
	z-index:2;
}

div#small-player{
	width: 80%;
	height: 45px;
	background:none;
	border-radius: 5px;
}

.detail-song-profile:before{
	content:"";
	display:block;
	padding-top:100%;
}

.detail-song-name{
	overflow-x:hidden;
	position: absolute;
	top:0;
	margin-top:1.3em;
	display:inline-block;
	margin-left:350px;
	min-width:250px;
	min-height:10px;
	vertical-align:top;
	text-align: left;
	width:45%;
	font-size: 3em;
	font-weight:bolder;
	padding-bottom:70%;
	font-family: 'Whitney';
	color:#E8CD2E;
}

.detail-song-player{
	position: absolute;
	top:0;
	margin-top:160px;
	display:inline-block;
	margin-left:65%;
	width:200px;
	height:75px;
	background:none;
	text-align:center;
}


.detail-song-artist{
	font-size:0.6em;
	font-family:"Open Sans";
	color:#C9C9C9;
}
.detail-song-artist-link{
	font-size:1em;
	color:#C9C9C9;
}
.detail-song-artist-link:hover{
	text-decoration:none;
	color:#C9C9C9;
	opacity:0.6;
}

.detail-song-artist a{
	color:#C9C9C9;
	text-decoration: none;
}

.detail-song-artist a:hover{
	opacity:0.6;
}

.detail-song-lyrics{
	width:90%;
	font-size:1.3em;
	font-family:'Open Sans';
	margin-right:10%;
	margin-top:20px;
}

.detail-song-lyrics-phone{
	display:none;
	font-family:'Open Sans';
	font-size:1em;
}
.detail-song-lyrics-phone .lyrics-title1{
	font-weight:bold;
}
.detail-song-lyrics-phone .lyrics-title2{
	display:none;
	text-align:right;
	width:100%;
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
	opacity:0.3;
	background: gray;
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

.detail-song-content-phone{
	display:none;
}

.detail-song-detail{
	font-family:"Open Sans";
	font-size:0.4em;
	color:#999999;
	margin-top:0.5em;
}

.detail-song-detail a{
	color:#EDEFF0;
	text-decoration: none;
}

.detail-song-detail a:hover{
	opacity:0.6;
}

.prodby{
	color:#EDEFF0;
}
.featuring{
	color:#EDEFF0;
}
.detail-song-player-bar{
	height:50px;
	padding-left:4%;
	width:100%;
	text-align:center;
	position:relative;
	vertical-align:middle;
	padding-top:10px;
	background:#1c1c1c;
}
div#small-player{
		display:inline-block;
		overflow-x:hidden;
		margin:auto;
		min-width:200px;
 	} 
 	div#small-player-middle{ 
 		width:65%; 
 	} 
 	div#small-player-middle-bottom{ 
 	    width:100%; 
 	} 
@media screen and (max-width:1200px){
}
@media screen and (max-width:1080px){
	.detail-song-player-bar{
		padding-left:2%;
	}
	.detail-song-name{
		font-size: 3.2vw;
		margin-left:33%;
		margin-top:3.5%;
	}

	.detail-song-player{
		top:0;
		margin-top:14%;
		margin-left:40%;
		width:100px;
	}
	.detail-song-artist{
		font-size:2vw;
	}
	.detail-song-artist-link{
		font-size:2vw;
	}
	.detail-song-detail{
		font-size:1.5vw;
	}
	.detail-song-left{
		width:44%;
		margin-left:4%;
	}
	.detail-song-right{
		width:46%;
		margin-right:4%;
	}
	.detail-song-profile{
		margin-top:2.35%;
		margin-left:9.5%;
		width:20%;
	}
	.detail-song-header:before{
		content:"";
		min-height:180px;
		display:block;
		padding-top:25%;
		background-color:#000000;
		filter:Alpha(opacity=73);
		opacity:0.73;
		-moz-opacity:0.73;
	}
}
@media screen and (max-width:1000px){
}
@media screen and (max-width:780px){
	.detail-song-name{
		font-size: 25px;
	}
	.detail-song-artist{
		font-size:16px;
	}
	.detail-song-artist-link{
		font-size:16px;
	}
	.detail-song-detail{
		font-size:12px;
	}
}

@media screen and (max-width:720px){

	.phone-blank{
		height:auto;
		width:100%;
		min-height:50px;
	}
	.detail-song-profile{
		min-width:118px;
		margin-top:1em;
	}
	.detail-song-name{

	}
	.detail-song{
		margin:auto;
		min-width:320px;
		overflow-x:hidden;
		width:100%;
	}
	.detail-song-body{
		width:100%;
		margin:auto;
	}
	.detail-song-view{
		display:none;
	}
	.detail-song-view-phone{
		display:block;
	}
	.detail-song-left{
		width:100%;
		overflow-x:hidden;
		height:auto;
		float:left;
		display:inline-block;
		max-width:700px;
		margin:auto;
		min-width:250px;
	}
	.detail-song-right{
		overflow-x:hidden;
		width:100%;
		height:auto;
		float:left;
		display:inline-block;
		max-width:700px;
		margin:auto;
		min-width:250px;
	}
	.detail-song-track{
		width:90%;
		overflow-x:hidden;
		margin:auto;
	}
	.detail-song-track .title{
		text-align:center;
		width:100%;
	}
	.detail-song-lyrics{
		display:none;
	}
	.detail-song-lyrics-phone{
		min-height:48px;
		max-width:650px;
		width:100%;
		display:block;
		margin:auto;
		padding:13px;
	}
	.detail-song-content-phone .title-phone{
		font-weight: bolder;
		font-family: 'Open Sans';
		letter-spacing: 0px;
		word-spacing: 3px;
		color: black;
	}
	
	.detail-song-content-phone .content-phone{
		height:auto;
		margin-top:15px;
		padding-right:20px;
		background: white;
		min-height:48px;
		width:100%;
		max-width:650px;
		min-width:250px;
		margin:auto;
		padding:13px;
		display:none;
	}

	.detail-song-album{
		width:100%;
	}
	.detail-song-song{
		width:100%;
	}
	.detail-song-album .content{
		width:100%;
		min-width:250px;
	}
	.detail-song-song .content{
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

}
@media screen and (max-width:600px){

	.detail-song-profile{
		display:none;
	}
	.detail-song-name{
		margin-left:5%;
		margin-top:1em;
	}
	
}
@media screen and (max-width:480px){
	.detail-song-player-phone{
		height:50px;
		background:black;
		i
	}
	.detail-song-track .title .a_img{
		display:none;
	}
}
 @media screen and (max-width:360px){ 
	.detail-song-track .title .detail{
		min-width:100%;
	}

 	div#small-player{
 	    width:100%; 
 	} 
 	div#small-player-middle{ 
 		width:65%; 
 	} 
 	div#small-player-middle-bottom{ 
 	    width:100%; 
 	} 
 }
 
 
</style>
<script type="text/javascript">
$(function(){
	
	var content;
	var pre_content;
	var pro_etc;
	var feat_etc;
	var pro_array;
	var feat_array;
	var m_no = $("#session_m_no").val();
	var song_rating_chk;
	
	attach_image();
	array_chk();
	lyrics_set();
	song_rating_checked();
	load_song_rating();
	album_artist_set();
	album_track();
	
	function song_rating_checked(){
		var sr_form = new FormData();
		var s_no = $("#s_no").val();
		sr_form.append("m_no",m_no);
		sr_form.append("s_no",s_no)
		if(m_no != 'null'){
			$.ajax({
				url:"checkSongRating.do",
				method:'post',
				data:sr_form,
				dataType:"json",
				async:false,
				processData:false,
				contentType:false,
				success:function(data){
					song_rating_chk = eval("("+data+")");
				}
			})
		}else{
			song_rating_chk = null;	
		}
	}
	
	function load_song_rating(){
		var s_no = $("#s_no").val();

		var sr_form = new FormData();
		sr_form.append("s_no",s_no);
		$.ajax({
			url:"detailSongRating.do",
			method:'post',
			data:sr_form,
			dataType:"json",
			async:false,
			processData:false,
			contentType:false,
			success:function(data){
				var box = $(".detail-song-view .info .rating");
				var box2 = $(".detail-song-view .btn-box");
				var icon = $("<span></span>").attr("class","glyphicon glyphicon-thumbs-up");
				var fire = $("<span></span>").attr("class","glyphicon glyphicon-fire");
				var span = $("<span></span>").append(icon," Good!");
				
				$(icon).css("top","0.2em");
				
				$(box).append(fire," ",eval("("+data+")"));
				$(box2).append(span);
				if(m_no == '' || m_no == null){
					$(box2).attr("display","none");
				}
				
				if(song_rating_chk > 0){
					$(span).addClass("rating-checked");
					$(span).attr("style","color:#dd1111;");
				}else{
					$(span).attr("style","color:#aaa;");
				}
				$(span).click(function(){
					var rate_chk = 0;
					var sh_form = new FormData();
					
					sh_form.append("s_no",s_no);
					sh_form.append("m_no",m_no);
					if($(span).hasClass("rating-checked")){
						$.ajax({
							url:"updateSongRatingQuit.do",
							method:"post",
							data:sh_form,
							processData:false,
							contentType:false,
							success:function(data){
								rate_chk = eval("("+data+")");
								$(span).removeClass("rating-checked");
								$(span).attr("style","color:#aaa;");
								$(span).empty();
									
								$(span).append(icon," Good!");
								$(box).empty();
								$(box).append(fire," ",rate_chk);
							}
						})
						
					}else{
						$.ajax({
							url:"updateSongRating.do",
							method:"post",
							data:sh_form,
							processData:false,
							contentType:false,
							success:function(data){
								rate_chk = eval("("+data+")");
								$(span).addClass("rating-checked");
								$(span).attr("style","color:#dd1111;");
								$(span).empty();
								
								$(span).append(icon," Good!");
								$(box).empty();
								$(box).append(fire," ",rate_chk);
							}
						});

					}
				});
			}
		})
	}
	function attach_image(){
		var a_img = $("#a_img").val();
		
		$(".detail-song-profile").css("background-image","url('${pageContext.request.contextPath}/"+a_img+"')");
		$(".detail-song-header").css("background-image","url('"+a_img+"')");
		
	}
	
	function album_artist_set(){
		var a_no = $("#a_no").val();
		$.ajax({
			url:"listAlbumArtist.do",
			method:"post",
			data:{a_no:a_no},
			success:function(data){
				var artist = data;

				$(".detail-song-track .title .detail").append(artist);
				
			}
		});
	}
	
	function album_track(){
		var a_no = $("#a_no").val();
		$.ajax({
			url:"listAlbumTrack.do",
			method:"post",
			data:{a_no:a_no},
			success:function(data){
				var list = eval(data);
 				track_make(list);
			}
		});
	}
	
	function track_make(list){
		var length = $(list).length;
		var half;
		
		var tr_left = $(".track-left");
		var tr_right = $(".track-right");

		var td_after; 
		
		if(length % 2 != 0){
			half = (length-1)/2;
		}else{
			half = (length/2) - 1;
		}

		$(list).each(function(index,data){
			var song = "&nbsp;&nbsp;<a href='detailSong.do?s_no="+data.s_no+"&hitAdd=true'>"+data.s_title+"</a>";
			var cur_track = "&nbsp;&nbsp;<font color='#acacac'>"+data.s_title+"</font>"
			
			var td = $("<div class='track-td'></div>");
			
			var num = index + 1 + '.';
			td.append(num);
			
			if(data.s_no == $("#s_no").val()){
				td.append(cur_track);
			}else{
				td.append(song);
			}

			
			if(data.s_no == $("#s_no").val()){
				td.addClass("cur-track");
			}
			
			if(index <= half){
				tr_left.append(td);
			}else{
				tr_right.append(td);
			}
		})
	}
	
	function array_chk(){
		var s_no = $("#s_no").val();
		$.ajax({
			url:"detailSongArray.do",
			method:"post",
			data:{s_no:s_no},
			success:function(data){

				var content = "";
				content += data;

				
				var arr = content.split(':');
				
				$(arr).each(function(index,data){
					if(index == 0){
						pro_array = arr[index];
					}else{
						feat_array = arr[index];	
					}
				})
				
				etc_chk(pro_array,feat_array);
			}
		});
	}

	
	function etc_chk(pro_array,feat_array){
		var arr = $("#etc").val().split("/");
		var res = "";
		var res2 = "";
		$(arr).each(function(index,data){
			if(index == 0){
				pro_etc = data;
			}else{
				feat_etc = data;
			}
		});

		if(pro_etc != '*'){
			var pro = pro_etc.split(',');
			
			if(pro_array != '*'){
				res += pro_array +", ";
			}
			
			$(pro).each(function(index,data){
				if(index == 0){
					res += pro[index];
				}else if(index == $(pro).length-1){
					res += " &"+pro[index];
				}else{
					res += ","+pro[index];
				}
			});

		}else{
			res += pro_array;
		}
		
		$(".prodby").append(res);
		
		if(feat_etc != '*'){
			var feat = feat_etc.split(',');
			
			if(feat_array != '*'){
				res2 += feat_array +", ";
			}
			var f_length = $(feat).length;
			$(feat).each(function(index,data){
				if(index == 0){
					res2 += feat[index];
				}else if(index == f_length-1){
					res2 += " &"+feat[index];
				}else{
					res2 += ","+feat[index];
				}
			});

		}else{
			if(feat_array != '*'){
				res2 += feat_array;
			}else{
				$(".feat-ox").empty();
			}

		}
		if(res2 != '*'){
			$(".featuring").append(res2);
		}

	}
	
	var toggle = 0;
	
	function lyrics_set(){
		var skip = $("<span>접기</span>").attr("class","phone-skip")
		
		$(".detail-song-lyrics-phone .lyrics-phone").append(skip);
		$(".detail-song-lyrics-phone .lyrics-phone").css("display","none");
		$(".detail-song-lyrics-phone .lyrics-title2").css("display","none");
	}
	
	
	$(".phone-more").click(function(){
		$(".detail-song-lyrics-phone .lyrics-phone").css("display","block");
		$(".detail-song-lyrics-phone .lyrics-title1").css("display","none");
		$(".detail-song-lyrics-phone .lyrics-title2").css("display","block");
		$(".phone-more").css("display","none");
		$(".phone-skip").css("display","block");
	});

	
	$(".phone-skip").click(function(){
		$(".detail-song-lyrics-phone .lyrics-phone").css("display","none");
		$(".detail-song-lyrics-phone .lyrics-title1").css("display","block");
		$(".detail-song-lyrics-phone .lyrics-title2").css("display","none");
		$(".phone-more").css("display","block");
		$(".phone-skip").css("display","none");
	});

	
	$("p").removeAttr("style");
})
</script>

</head>
<body>
<div class="detail-song">

	<input type="hidden" id="s_no" value="${s_vo.s_no }">
	<input type="hidden" id="a_img" value="${s_vo.a_img}">
	<input type="hidden" id="etc" value="${s_vo.etc }">
	<input type="hidden" id="s_file" value="${s_vo.s_file }">
	<input type="hidden" id="a_no" value="${s_vo.a_no }">
	<div class="detail-song-header">
		<div class="detail-song-profile">
		</div>
		<div class="detail-song-name">
			${s_vo.s_title }<br>
			<div class="detail-song-artist">
			<c:forEach var="ar" varStatus="status" items="${ar_vo}">
				<c:choose>
					<c:when test="${status.first}">
						<a class="detail-song-artist-link" href="detailArtist.do?ar_no=${ar.ar_no }"> ${ar.ar_name }</a>
					</c:when>
					<c:when test="${status.last}">
						& <a class="detail-song-artist-link" href="detailArtist.do?ar_no=${ar.ar_no }">${ar.ar_name }</a>
					</c:when>
					<c:otherwise>
						, <a class="detail-song-artist-link" href="detailArtist.do?ar_no=${ar.ar_no }">${ar.ar_name }</a>
					</c:otherwise>
				</c:choose>
			</c:forEach>		
			</div>
			<div class="detail-song-detail">
			<span class="feat-ox">Featuring</span> <span class="featuring"></span><br>	
			Produced by <span class="prodby"></span> <br>
			Album <span><a href="detailAlbum.do?a_no=${s_vo.a_no }" style="color:#EDEFF0; text-decoration: none;">${s_vo.title }</a></span>
			</div>
			
		</div>
		
	</div>

	<div class="detail-song-body">

	<div class="detail-song-left">
		<div class="detail-song-view-phone" align="center">
			<span><img src="resources/upload/heart.png" width="20" height="auto">&nbsp;&nbsp;&nbsp;&nbsp;${s_vo.rating }
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${s_vo.hit }&nbsp;&nbsp;views</span>
		</div>
		<div class="detail-song-lyrics">
			${s_vo.lyrics }
		</div>
		<div class="detail-song-lyrics-phone">
			<div class="lyrics-title1">Show Lyrics <span class="phone-more"><img src="resources/upload/read.png" width="13" height="auto"/></span></div>
			<div class="lyrics-title2"><span class="phone-skip"><img src="resources/upload/skip.png" width="13" height="auto"/></span></div>
			<div class="lyrics-phone">${s_vo.lyrics }</div>
		</div>
	</div>
	<div class="detail-song-right">
		<div class="detail-song-player-bar" align="center">
			<div id="small-player">

			<div id="small-player-left">
			<div id="small-player-middle-controls">
					<div class="amplitude-play-pause amplitude-paused" amplitude-main-play-pause="true"></div>
			</div>
			</div>
			<div id="small-player-middle">	
				<div id="small-player-middle-top">

				</div>
				
				<div id="small-player-middle-bottom">
					<input type="range" class="amplitude-song-slider" amplitude-singular-song-slider="true" value="0"/>
				</div>
			</div>

			<div id="small-player-right">
				<span id="current-time">
					<span class="amplitude-current-minutes" amplitude-single-current-minutes="true">0</span>:<span class="amplitude-current-seconds" amplitude-single-current-seconds="true">00</span>
				
				</span>
			</div>

			</div>
		</div>
		<div class="detail-song-view" align="center">
			<div class="info">
				<span class="rating" style="margin-right:2em;"></span>
				<span class="hit">${s_vo.hit } views</span>
			</div>
			<c:if test="${m_no != null}">
			<div class="btn-box"></div>
			</c:if>
		</div>
<!-- 		<div class="detail-song-post"> -->
<!-- 			<div class="title"> -->
<!-- 				RELATED POSTS -->
<!-- 			</div> -->
<!-- 			<div class="content"></div> -->
<!-- 		</div> -->
		<div class="detail-song-thumbnail">
			<div class="title">
				RELATED ARTISTS
			</div>
			<div class="content">
				<c:forEach var="ar" items="${ar_vo }">
					<div class="block"><a href="detailArtist.do?ar_no=${ar.ar_no }"><img src="${ar.profile }" width="50" height="auto" style="border-radius:50%; border:2px solid #bcbcbc;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${ar.ar_name }</a></div>
				</c:forEach>
				<c:forEach var="feat" items="${feat_vo }">
					<div class="block"><a href="detailArtist.do?ar_no=${feat.ar_no }"><img src="${feat.profile }" width="50" height="auto" style="border-radius:50%; border:2px solid #bcbcbc;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;${feat.ar_name }</a></div>
				</c:forEach>
			</div>
		</div>
		<div class="detail-song-track">
			<div class="title">
				<div class="a_img">
					<img src="${s_vo.a_img }" width="70" height="auto">
				</div>
				<div class="detail">
					<p><a href="detailAlbum.do?a_no=${s_vo.a_no}">${s_vo.title } (${r_date })</a></p>
				</div>
			</div>
			<div class="content">
				<div class="track-left">
				</div>
				<div class="track-right">
				</div>
			</div>
		</div>
	</div>
	</div>
	<script type="text/javascript">
		Amplitude.init({
			"songs": [
				{
					"name": "Rooms",
					"artist": "Mia and Jonah",
					"album": "Rooms For Adelaide",
					"url": "resources/upload/music/"+$("#s_file").val(),
					"live": false,
					"cover_art_url": "images/roomsforadelaide.jpg"
				}
			],
			"default_album_art": "images/no-cover.png"
		});
		/*
			jQuery Visual Helpers
		*/
		$('#small-player-middle-controls').show();

	</script>
</div>
</body>
</html>