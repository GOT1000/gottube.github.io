<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
@-webkit-keyframes 'mouseover-song'{
	from{
		background:none;
	}
	to{
		background:#333;
	}
}
@-webkit-keyframes 'mouseout-song'{
	from{
		background:#333;
	}
	to{
		background:none;
	}
}
@-webkit-keyframes 'mouseover-title'{
	from{
		color:#fefefe;
	}
	to{
		color:#fefe00;
	}
}
@-webkit-keyframes 'mouseout-title'{
	from{
		color:#fefe00;
	}
	to{
		color:#fefefe;
	}
}
@-webkit-keyframes 'mouseover-artist'{
	from{
		color:#999;
	}
	to{
		color:#fefefe;
	}
}
@-webkit-keyframes 'mouseout-artist'{
	from{
		color:#fefefe;
	}
	to{
		color:#999;
	}
}
body{
	background:black;
}
.search-body{
	width:1000px;
	display:block;
	position:relative;
	margin:auto;
	margin-top:3em;
	margin-bottom:3em;
}
.search-body-title{
	color:#ccc;
	font-family:'Whitney';
	font-weight:bold;
	font-size:1em;
	position:relative;
	display:block;
	width:100%;
	height:2em;
	border-bottom:1px solid #1f1f1f;
}
.search-body-left{
	width:570px;
	margin-right:70px;
	float:left;
	display:inline-block;
	position:relative;
	padding-bottom:3em;
}
.search-body-right{
	width:360px;
	background:#333;
	float:right;
	display:inline-block;
	position:relative;
	padding:1em;
	overflow-y:auto;
}
.search-block{
	width:100%;
	height:4.8em;
	border-bottom:1px solid #1f1f1f;
	position:relative;
	display:block;
}
.search-block .title{
	position:absolute;
	display:block;
	top:0.5em;
	left:0.5em;
	color:#fefefe;
	font-family:'Whitney';
	font-weight:bold;
	font-size:1.2em;
}
.search-block .artist{
	position:absolute;
	display:block;
	top:1.9em;
	left:0.5em;
	color:#999;
	font-family:'Whitney';
	font-weight:bold;
	font-size:1.2em;
}
.more-btn-box{
	width:100%;
	height:4em;
	position:relative;
	display:block;
	margin-bottom:3em;
}
.more-btn{
	width:3em;
	padding-top:1em;
	margin:auto;
	position:relative;
	display:block;
	color:#fefefe;
	font-family:'Noto Sans Kr';
}
.more-btn:hover{
	cursor:pointer;
}
.artist-title{
	width:100%;
	height:3em;
	color:#fefefe;
	font-family:'Whitney';
}
.artist-block{
	width:100%;
	height:2.5em;
	position:relative;
	display:block;
	font-family:'Whitney';
	font-size:1.1em;
}
.artist-count{
	width:100%;
	height:3em;
	position:relative;
	display:block;
	color:#999;
	font-weight:normal;
	font-family:'Noto Sans Kr';
}
.artist-box .more-btn-box{
	width:100%;
	margin:auto;
	position:relative;
	display:block;
	color:#fefefe;
	font-family:'Noto Sans Kr';
}
.artist-box .more-btn{
	width:100%;
	padding-top:1em;
	margin:auto;
	position:relative;
	display:block;
	color:#fefefe;
	font-family:'Noto Sans Kr';
}
.album-title{
	width:100%;
	height:3em;
	color:#fefefe;
	font-family:'Whitney';
}
.album-block{
	width:100%;
	height:2.5em;
	position:relative;
	display:block;
	font-family:'Whitney';
	font-size:1.1em;
}
.album-count{
	width:100%;
	height:3em;
	position:relative;
	display:block;
	color:#999;
	font-weight:normal;
	font-family:'Noto Sans Kr';
}
.album-box .more-btn-box{
	width:100%;
	margin:auto;
	position:relative;
	display:block;
	color:#fefefe;
	font-family:'Noto Sans Kr';
}
.album-box .more-btn{
	width:100%;
	padding-top:1em;
	margin:auto;
	position:relative;
	display:block;
	color:#fefefe;
	font-family:'Noto Sans Kr';
}
</style>
<script type="text/javascript">
$(function(){
// 	$(".search-block").hover(function(){
// 		$(this).css("background","gray");
// 	})
	var q = '';
	var keyField = 'all';
	var start = 1;
	var ar_start = 1;
	var a_start = 1;
	var cnt = 0;
	var ar_cnt = 0;
	var a_cnt = 0;
	
	getQueryString();
	load_count_song();
	load_search_song();
	load_count_artist();
	load_search_artist();
	load_count_album();
	load_search_album();

	
	function getQueryString(){
		var url = window.location.search.substring(1);
		var arr = url.split('&');
		
		$(arr).each(function(index,value){
			var param = value.substring(2);

			if(index == 0){
				var q_arr = param.split('%20');
				$(q_arr).each(function(index,data){
					if(index != 0){
						q += " "+data;
					}else{
						q += data;
					}
				})
			}else if(index == 1){
				if(param != ''){
					keyField = param;
				}

			}
		})
	}
	function load_count_song(){
		var c_form = new FormData();
		c_form.append("q",q);
		c_form.append("keyField",keyField);
		$.ajax({
			url:'countSongAjax.do',
			method:'post',
			data:c_form,
			dataType:'json',
			contentType:false,
			processData:false,
			async:false,
			success:function(data){
				cnt = eval("("+data+")");

				var span1 = $("<span></span>").css("color","#fefefe");
				var span2 = $("<span></span>").css("color","#ccf");
				var box = $(".search-body-title");

				$(span1).append(cnt);
				$(span2).append(q);
				$(box).append(" ",span1," RESULTS FOR '",span2,"'");
			}
		})
	}
	function load_search_song(){
		var end = start + 9;
		var s_form = new FormData();
		s_form.append("q",q);
		s_form.append("keyField",keyField);
		s_form.append("start",start);
		s_form.append("end",end);
		$.ajax({
			url:'searchSongAjax.do',
			method:'post',
			data:s_form,
			dataType:'json',
			contentType:false,
			processData:false,
			async:false,
			success:function(data){
				var arr = data;
				var box = $(".search-box");
				$(arr).each(function(index,data){
					var block = $("<div></div>").attr("class","search-block");
					var title = $("<div></div>").attr("class","title");
					var artist = $("<div></div>").attr("class","artist");
					var link = $("<a></a>").attr("href","detailSong.do?s_no="+data.s_no+"&hitAdd=true");
					
					$(title).append(data.s_title);
					$(artist).append(data.a_name);
					
					$(block).append(title,artist);
					
					$(link).append(block);
					
					$(link).mouseover(function(){
						$(block).css({"-webkit-animation-name":"mouseover-song",
							"-webkit-animation-duration":"1s",
							"background":"#333"});	
						$(title).css({"-webkit-animation-name":"mouseover-title",
							"-webkit-animation-duration":"1s",
							"color":"#fefe00"});	
						$(artist).css({"-webkit-animation-name":"mouseover-artist",
							"-webkit-animation-duration":"1s",
							"color":"#fefefe"});	
					})
					
					$(link).mouseout(function(){
						$(block).css({"-webkit-animation-name":"mouseout-song",
							"-webkit-animation-duration":"1s",
							"background":"none"});	
						$(title).css({"-webkit-animation-name":"mouseout-title",
							"-webkit-animation-duration":"1s",
							"color":"#fefefe"});	
						$(artist).css({"-webkit-animation-name":"mouseout-artist",
							"-webkit-animation-duration":"1s",
							"color":"#999"});	
					})
					
					$(box).append(link);
				})
				
				var more_btn = $("<div></div>").attr("class","more-btn-box");
				var more_span = $("<span></span>").attr("class","more-btn");
				
				$(more_span).append("더 보기");
				$(more_btn).append(more_span);
				
				$(box).append(more_btn);
				$(more_span).click(function(){
					start = start+10;
					$(more_btn).remove();
					load_search_song();
				})
				
				var block_cnt = $(".search-block").length;

				if(block_cnt == cnt){
					$(more_btn).remove();
				}
			}
		})
	}	
	function load_count_artist(){
		var c_form = new FormData();
		c_form.append("q",q);
		$.ajax({
			url:'countArtistAjax.do',
			method:'post',
			data:c_form,
			dataType:'json',
			contentType:false,
			processData:false,
			async:false,
			success:function(data){
				ar_cnt = eval("("+data+")");

				var block = $(".artist-count");
				$(block).append(data,"개의 검색 결과가 있습니다.")
			}
		})
	}
	function load_search_artist(){
		var end = a_start+4;
		
		var ar_form = new FormData();
		ar_form.append("q",q);	
		ar_form.append("start",a_start);
		ar_form.append("end",end);

		$.ajax({
			url:'searchArtistAjax.do',
			method:'post',
			data:ar_form,
			dataType:'json',
			contentType:false,
			processData:false,
			async:false,
			success:function(data){
				var arr = data;
				var box = $(".artist-box");
				$(arr).each(function(index,data){
					var block = $("<div></div>").attr("class","artist-block");
					var link = $("<a></a>").attr("href","detailArtist.do?ar_no="+data.ar_no);
					$(block).append(data.ar_name);
					$(link).append(block);
					$(box).append(link);
				})
				
				var more_btn = $("<div></div>").attr("class","more-btn-box");
				var more_span = $("<span></span>").attr("class","more-btn");
				
				$(more_span).append("검색 결과 더 보기");
				$(more_btn).append(more_span);
				
				$(box).append(more_btn);
				$(more_span).click(function(){
					ar_start = a_start+5;
					$(more_btn).remove();
					$(".count-artist").remove();
					load_search_artist();
					load_count_artist();
				})
				
				var block_cnt = $(".artist-block").length;

				if(block_cnt == ar_cnt){
					$(more_btn).remove();
				}
			}
		})
	}	
	function load_count_album(){
		var c_form = new FormData();
		c_form.append("q",q);
		c_form.append("keyField",keyField);
		$.ajax({
			url:'countAlbum.do',
			method:'post',
			data:c_form,
			dataType:'json',
			contentType:false,
			processData:false,
			async:false,
			success:function(data){
				a_cnt = eval("("+data+")");
					alert(a_cnt);
				var block = $(".album-count");
				$(block).append(data,"개의 검색 결과가 있습니다.")
			}
		})
	}
	function load_search_album(){
		var end = a_start+4;
		
		var a_form = new FormData();
		a_form.append("q",q);
		a_form.append("keyField",keyField);
		a_form.append("start",start);
		a_form.append("end",end);
		$.ajax({
			url:'searchAlbumAjax.do',
			method:'post',
			data:a_form,
			dataType:'json',
			contentType:false,
			processData:false,
			async:false,
			success:function(data){
				var arr = data;
				var box = $(".album-box");
				$(arr).each(function(index,data){
					var block = $("<div></div>").attr("class","album-block");
					var link = $("<a></a>").attr("href","detailAlbum.do?a_no="+data.a_no);
					$(block).append(data.a_name," - ",data.title);
					$(link).append(block);
					$(box).append(link);
				})
				
				var more_btn = $("<div></div>").attr("class","more-btn-box");
				var more_span = $("<span></span>").attr("class","more-btn");
				
				$(more_span).append("검색 결과 더 보기");
				$(more_btn).append(more_span);
				
				$(box).append(more_btn);
				$(more_span).click(function(){
					a_start = a_start+5;
					$(more_btn).remove();
					$(".count-album").remove();
					load_search_album();
					load_count_album();
				})
				
				var block_cnt = $(".album-block").length;

				if(block_cnt == a_cnt){
					$(more_btn).remove();
				}
			}
		})
	}	
})
</script>
</head>
<body>
<div class="search-body">
	<div class="search-body-left">
	<div class="search-body-title">
		<span class="glyphicon glyphicon-search" style="color:#bbb; margin-right:0.5em;"></span>
	</div>
	<div class="search-box">
	</div>
	</div>
	<div class="search-body-right">
		<div class="artist-title"><span class="glyphicon glyphicon-user" style="color:#999;margin-right:0.2em;"></span> 아티스트 검색 결과</div>
		<div class="artist-box"></div>
		<div class="artist-count"></div>
		<div class="album-title"><span class="glyphicon glyphicon-cd" style="color:#999;margin-right:0.2em;"></span>  앨범 검색 결과</div>
		<div class="album-box"></div>
		<div class="album-count"></div>
	</div>
</div>
</body>
</html>