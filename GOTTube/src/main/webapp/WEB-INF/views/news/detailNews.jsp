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
	overflow-x:hidden;
}
.detail-news{
	background:#e6e6e6;
	width:1000px;
	min-width:300px;
	min-height:100%;
	overflow-x:hidden;
	overflow-y:auto;
	margin:auto;
	margin-top:6%;
}
.detail-news-header{
	background:#fefefe;
	font-size:2.6em;
	vertical-align:middle;
	position:relative;
	width:100%;
	margin:auto;
	padding-top:1em;
	height:3em;
	overflow:auto;
	font-family:"Oswald";
	font-weight:light;
	text-align:center;
}
.detail-news-header-border{
	width:100%;
	display:block;
	background:#fefefe;
}
.detail-news-header-border:before{
	border-bottom:1px solid #dfdfdf;
	margin:auto;
	width:96%;
	content:"";
	display:block;
}
.detail-news-body{
	background:#fefefe;
	height:auto;
	width:100%;
	padding-left:2%;
	padding-right:2%;
	padding-top:1.3em;
	padding-bottom:3em;
}
.detail-news-left{
	width:650px;
	float:left;
	display:inline-block;
	height:auto;
}
.detail-news-right{
	display:inline-block;
	float:right;
	padding:5px;
	padding-left:15px;
	width:300px;
}
.detail-news-ad{
	height:auto;
	width:270px;
	margin:auto;
}
.detail-news-breaking{
	margin-top:1em;
	width:100%;
	height:auto;
	padding-left:1em;
}
.detail-news-breaking .title{
	height:1.6em;
	border-bottom:1px solid #dfdfdf;
	width:100%;
	font-family:"Whitney";
	font-size:1.1em;
}
.detail-news-breaking .list a{
	color:#2c2c2c;
	font-family:'Whitney';
	text-decoration:none;
}
.detail-news-breaking .list a:hover{
	opacity:0.6;
}
.detail-news-breaking .list li{
	margin:0.2em;
}
.preview-img{
	width:100%;
	height:auto;
}
.detail-news-title{
	margin-bottom:1em;
	border-bottom:1px solid #dfdfdf;
}
.detail-news-title .title{
	margin-bottom:1em;
	position:relative;
	font-size:2.5em;
	font-weight:bold;
	font-family:'Oswald';
}
.detail-news-title .detail{
	font-size:1em;
	font-family:'Open Sans';
	color:#8c8c8c;
}
.detail-news-title .writer{
	font-size:1em;
	font-family:'Open Sans';
	color:#8c8c8c;
}
.detail-news-title .num{
	font-family:'Open Sans';
	color:#8c8c8c;
}
.detail-news-content{
	font-family:'Open Sans';
	font-size:2em;
	margin-top:2em;
}
.detail-news-rating{
	font-size:1.5em;
	padding:1em;
}
.detail-news-rating .rating-btn{
	font-weight:bold;
	font-family:'Whitney';
}
.detail-news-rating .rating-btn:hover{
	cursor:pointer;
}
.detail-news-rating .checked{
	color:#dd1111;
}
.detail-news-footer{
	width:650px;
	min-height:16em;
	height:auto;
	padding-top:1em;
	display:inline-block;
	
}
.detail-news-footer .header{
	width:100%;
	font-size:2em;
	height:2em;
	margin-bottom:1em;
	font-family:"Oswald";
	border-bottom: 1px solid #dfdfdf;
}
.detail-news-title{
	width:100%;
}
.detail-news-footer .news-list{
	margin-right:22.5px;
	width:140px;
	display:inline-block;
	height:auto;
	vertical-align: top;
	position:relative;
}
.detail-news-footer a{
	color:black;
}
.detail-news-footer a:hover{
	text-decoration: none;
	opacity:0.6;
}
.detail-news-footer .news-list .thumb{
	width:140px;
	height:140px;
	background-size:cover;
	background-position: center;
	display:inline-block;
}
.detail-news-footer .news-list .title{
	font-size:1em;
	margin-top:0.5em;
	font-family:"Oswald";
	display:inline-block;
}
.detail-news-comments-header{
	width:96%;
	font-size:1em;
	font-family:'Whitney';
	color:#8c8c8c;
	margin:auto;
	margin-top:1.5em;
}
.comments-header{
	color:black;
	font-size:1.7em;
	font-family:'Oswald';
	font-weight:bold;
	margin-right:0.6em;
}
.detail-news-comments{
	height:auto;
	width:96%;
	margin:auto;
	margin-top:2em;
	position:relative;
}
.detail-news-comments .comments-input{
	background:#fefefe;
	width:100%;
	min-height:98%;
	height:auto;
}
.detail-news-comments .comments-input textarea{
	width:98%;
	height:90%;
	background:none;
	margin-left:1%;
	padding-top:1%;
	outline:none;
	border:none;
	font-size:1.2em;
	resize:none;
}
.detail-news-comments .comments-input textarea:focus{
	outline:none;
}
.detail-news-comments .comments-input .input-box{
	width:100%;
	height:12em;
	position:relative;
}
.detail-news-comments .comments-input .counter{
	width:100%;
	text-align:right;
	position:relative;
	padding-right:1em;
	padding-bottom:0.5em;
	color:#999;
}
.detail-news-comments .comments-input .reply-counter{
	width:100%;
	text-align:right;
	position:relative;
	padding-right:1em;
	padding-bottom:0.5em;
	color:#999;
}
.detail-news-comments .comments-input .input-button{
	width:100%;
	height:4em;
	background:#bb1111;
	text-align:center;
	position:relative;
}
.detail-news-comments .comments-input .input-button:hover{
	cursor:pointer;
}
.detail-news-comments .comments-input .reply-input-button{
	width:100%;
	height:4em;
	background:#bb1111;
	text-align:center;
	position:relative;
}
.detail-news-comments .comments-input .reply-input-button:hover{
	cursor:pointer;
}
.detail-news-comments .comments-input .input-button .input-button-span{
	color:#fefefe;
	position:absolute;
	font-size:1.35em;
	left:46%;
	top:30%;
}
.detail-news-comments .comments-input .reply-input-button .input-button-span{
	color:#fefefe;
	position:absolute;
	font-size:1.35em;
	left:46%;
	top:30%;
}
.detail-news-comments .comments-order{
	width:100%;
	height:3em;
	margin-top:1em;
	background:#fefefe;
	color:#aaa;
	font-size:1.1em;
	text-align:center;
	padding-top:0.8em;
}
.comments-order .title{
	margin-right:1em;
}
.comments-order .latest{
	padding-right:1em;
	margin-right:1em;
	border-right:1px solid #bbb;
	color:#dd1111;
}
.comments-order .order-button:hover{
	cursor:pointer;
}
.comments-order .rating{
}

.detail-news-comments .comments-list{
	width:100%;
	height:auto;
	margin-top:1em;
	margin-bottom:3em;
	background:none;
}
.comments-box{
	box-shadow: 0 0.2em 0.5em 0em #ccc;
}
.comments-block{
	background:#fefefe;
	margin-top:1em;
	position:relative;
	overflow:hidden;
	height:auto;
	width:100%;
}
.comments-block .block-title{
	width:100%;
	height:4.2em;
	padding-bottom:1em;
	padding-top:0.5em;
	
	font-size:1.2em;
	font-family:"Whitney";
	position:relative;
}
.comments-block .block-title .block-title-left{
	position:relative;
	height:100%;
	display:inline-block;
	width:80%;
	
}
.comments-block .block-title .profile{
	position:absolute;
	top:0.5em;
	left:0.8em;
	width:2.8em;
	height:2.8em;
	background-image:url("resources/upload/drake.jpg");
	background-size:cover;
	background-position:center;
	border-radius:50%;
}
.comments-block .block-title .remove-btn{
	position:absolute;
	top:0.9em;
	right:1em;
	color:#aaa;
	cursor:pointer;
}
.comments-block .block-title .remove-btn:hover{
	color:#dd1111;
}
.comments-block .block-title .update-btn{
	position:absolute;
	top:0.9em;
	right:5em;
	color:#aaa;
	cursor:pointer;
}
.comments-block .block-title .update-btn:hover{
	color:#dd1111;
}
.comments-block .block-title .caption{
	position:absolute;
	top:0.6em;
	left:4.5em;
	height:3em;
	font-family:"Whitney";
}
.comments-block .block-title .caption .id{
	font-weight:bold;
}
.comments-block .block-title .caption .date{
	font-size:0.8em;
	color:#aaa;
}
.comments-block .block-content{
	position:relative;
	width:98%;
	overflow:hidden;
	min-height:3em;
	height:auto;
	padding-top:0.5em;
	padding-left:1em;
	font-size:1.2em;
	font-family:'Whitney';
}
.comments-block .block-content .text{
	position:relative;
	width:98%;
	min-height:2em;
	margin:auto;
	overflow:auto;
	height:auto;
}
.comments-block .block-content .caption{
	position:relative;
	width:90%;
	margin-left:10%;
	margin-top:1em;
	margin-bottom:0.5em;
	height:2em;
	font-size:1em;
	font-family:'Whitney';
	color:#aaa;
}
.comments-block .block-content .caption .rating{
	position:absolute;
	right:11%;
	top:0;
	cursor:pointer;
/* 	color:#FA8427; */
}
.comments-block .block-content .caption .reply-btn{
	position:absolute;
	right:1%;
	top:0;
	cursor:pointer;
}
.comments-block .block-content .caption .update-complete{
	position:absolute;
	right:11%;
	top:0;
	cursor:pointer;
}
.comments-block .block-content .caption .update-quit{
	position:absolute;
	right:1%;
	top:0;
	cursor:pointer;
}
.comments-block .block-content #update-content{
	width:98%;
	min-height:4em;
	height:auto;
	background:none;
	margin:auto;
	padding-top:1%;
	outline:none;
	border:none;
	font-size:1em;

}
.comments-block .block-content .caption .update-complete:hover{
	color:#dd1111;
}
.comments-block .block-content .caption .update-quit:hover{
	color:#dd1111;
}
.detail-news-comments .comments-input .reply-input{
	display:none;
}
@media screen and (max-width:1020px){
	.detail-news-header-border:before{
		border-bottom:1px solid #dfdfdf;
		margin:auto;
		width:100%;
		content:"";
		display:block;
	}
	.detail-news{
		width:100%;
		margin-top:0;
	}
	.detail-news-header{
		font-size:2.4em;
		height:3em;
	}
	.detail-news-left{
		width:100%;
	}
	.detail-news-right{
		display:none;
	}
	.detail-news-title .title{
		font-size:2.4em;
	}
	.detail-news-footer{
		width:100%;
	}
	.detail-news-footer .header{
		width:100%;
	}
	.detail-news-footer .news-list{
		width:100%;
		margin-bottom:1em;
		padding-right:0;
	}
	.detail-news-footer .news-list .thumb{
		width:130px;
		height:130px;
		position:relative;
	}
	.detail-news-footer .news-list .title{
		width:70%;
		margin-left:1em;
		font-size:1.5em;
		vertical-align:top;
	}
	.detail-news-footer .header{
		font-size:2em;
	}
}
@media screen and (max-width:720px){
	.detail-news-header{
		width:100%;
		font-size:6vw;
	}
	.detail-news-title span{
		font-size:2vw;
	}
	.detail-news-title .detail{
		font-size:2vw;
	}
	.detail-news-title .writer{
		font-size:2vw;
	}
	.detail-news-title .title{
		font-size:6vw;
	}
	.detail-news-body{
		padding-left:0;
		padding-right:0;
	}
	.detail-news-title{
		padding-left:2%;
		padding-right:2%;
	}
	.detail-news-content{
		padding-left:2%;
		padding-right:2%;
	}
	.detail-news-rating{
		font-size:3vw;
	}
	.detail-news-footer .news-list .thumb{
		width:20%;
		position:relative;
		height:auto;
	}
	.detail-news-footer .news-list .thumb:before{
		padding-top:100%;
		content:"";
		display:inline-block;
	}
	.detail-news-footer .news-list .title{
		width:70%;
		margin-left:1em;
		font-size:4vw;
		vertical-align:top;
	}
	.detail-news-footer .content{
		padding-left:2%;
		padding-right:2%;
	}
	.detail-news-footer .header{
		font-size:4vw;
		padding-left:1%;
	}
	.preview-img{
		margin-left:0;
		width:100%;
	}
	.detail-news-comments-header{
		font-size:2vw;
		margin-top:4%;
	}
	.comments-header{
		font-size:4vw;
	}
	.detail-news-comments{
		margin-top:4%;
		position:relative;
	}
	.detail-news-comments .comments-input textarea{
		font-size:2.7vw;
	}
	.detail-news-comments .comments-input .input-box{
		height:10em;
	}
	.detail-news-comments .comments-input .counter{
		font-size:1.7vw;
	}
	.detail-news-comments .comments-input .input-button{
		font-size:2.3vw;
		height:4em;
	}
	.detail-news-comments .comments-input .input-button .input-button-span{
		left:44%;
		top:30%;
	}
	.detail-news-comments .comments-input .reply-input-button{
		font-size:2.3vw;
		height:4em;
	}
	.detail-news-comments .comments-input .reply-input-button .input-button-span{
		left:44%;
		top:30%;
	}
	.detail-news-comments .comments-order{
		width:100%;
		height:3em;
		margin-top:4%;
		font-size:1.7vw;
	}

	.comments-block{
		margin-top:4%;
		min-height:2em;
	}
	.comments-block .block-title{
		font-size:2.2vw;
	}

	.comments-block .block-title .caption .id{
		font-weight:bold;
	}
	.comments-block .block-title .caption .date{
		font-size:0.8em;
		color:#aaa;
	}
	.comments-block .block-content{
		position:relative;
		width:100%;
		min-height:5em;
		height:auto;
		padding-top:0.5em;
		padding-left:1em;
		font-size:2.2vw;
		font-family:'Whitney';
	}
	.comments-block .block-content .caption{
		bottom:40%;
	}
	.comments-block .block-content .caption .rating{
		right:18%;
		top:0;
	/* 	color:#FA8427; */
	}
	.comments-block .block-content .caption .reply-btn{
		right:4%;
		top:0;
	}
	.detail-news-comments .comments-input .reply-counter{
		font-size:2.2vw;
	}
}
@media screen and (max-width:500px){
	
	.detail-news-title .content{
		font-size:1em;
	}
	.detail-news-rating{
		font-size:1em;
	}
	.detail-news-footer .header{
		font-size:1.2em;
	}
	.detail-news-comments-header{
		font-size:0.8em;
	}
	.comments-header{
		font-size:1.5em;
	}
	.detail-news-comments .comments-input .input-box{
		height:8em;
	}
}
</style>
<script type="text/javascript">
$(function(){
	var b_no = $("#b_no").val();
	var comment_chk = false;
	var comment_warning = false;
	var keyField = 'latest';
	var member_rating_chk;
	var rating_list;
	var m_no = $("#session_m_no").val();
	var m_id = $("#session_m_id").val();
	var comments_last_id;

	board_rating_checked();
	member_rating_history();
	time_setting();
	breaking_thumb();
	comments_list();
	load_board_rating();

// 	function news_setting(){
// 		$.ajax({
// 			url:
// 		})
// 	}
	$(".comments-input #content").keyup(function(e){
		var content = $(this).val();
		
		if(comment_warning == true && content.length > 0){
			comment_warning == false;
			$(".comments-input .input-box").css("background","none");
			$(".comments-input .counter").css("background","none");
		}
		
		$(".comments-input .counter").html("<font id='counter-length'>"+content.length+"</font>" + "/300");
		if(content.length >= 300){
			$("#counter-length").css("color","#cc1111");
			$("#counter-length").html("300");
		}else{
			$("#counter-length").css("color","#999");
		}
	});
	$('.comments-input #content').keyup();
	$(".comments-input .input-button").click(function(){
		
		if($("#content").val() == ""){

			alert("댓글을 입력해주세요!");
			$(".comments-input .input-box").css("background","#FFD2CD");
			$(".comments-input .counter").css("background","#FFD2CD");
			comment_warning = true;
			return false;
		}
		
		var formData = new FormData();
		
		formData.append("b_no",$("#b_no").val());
		formData.append("m_no",$("#m_no").val());
		formData.append("content",$("#content").val());

		comment_submit(formData);
	})

	$(".comments-order .latest").click(function(){
		if(keyField != 'latest'){
			$(this).css("color","#dd1111");
			$(".comments-order .rating").css("color","#aaa");
			keyField = 'latest';
			comments_list(keyField);
		}
	});
	$(".comments-order .rating").click(function(){
		if(keyField != 'rating'){
			$(this).css("color","#dd1111");
			$(".comments-order .latest").css("color","#aaa");
			keyField = 'hot';
			comments_list(keyField);
		}
	})

	function board_rating_checked(){
		var br_form = new FormData();
		br_form.append("m_no",m_no);
		br_form.append("b_no",b_no)
		if(m_no != 'null'){
			$.ajax({
				url:"checkBoardRating.do",
				method:'post',
				data:br_form,
				dataType:"json",
				async:false,
				processData:false,
				contentType:false,
				success:function(data){
					
					member_rating_chk = eval("("+data+")");
				}
			})
		}else{
			member_rating_chk = null;	
		}
	}
	function load_board_rating(){
		var b_no = $("#b_no").val();
		var br_form = new FormData();
		br_form.append("b_no",b_no);
		$.ajax({
			url:"detailBoardRating.do",
			method:'post',
			data:br_form,
			dataType:"json",
			async:false,
			processData:false,
			contentType:false,
			success:function(data){
				var box = $(".detail-news-rating");
				var title = $(".detail-news-title .rating");
				
				var span = $("<span></span>").attr("class","rating-btn");
				
				var icon = $("<span></span>").attr("class","glyphicon glyphicon-thumbs-up");
				
				$(icon).css("top","0.15em");
				
				$(span).append(icon," Good!");
				
				$(box).append(span);
				$(title).append(eval("("+data+")"));
				
				if(m_no == '' || m_no == null){
					$(box).attr("display","none");
				}
				
				if(member_rating_chk > 0){
					$(span).addClass("rating-checked");
					$(span).attr("style","color:#dd1111;");
				}else{
					$(span).attr("style","color:#aaa;");
				}
 				
				$(span).click(function(){
					var rate_chk = 0;
					var b_form = new FormData();
					
					b_form.append("b_no",b_no);
					b_form.append("m_no",m_no);
					if($(span).hasClass("rating-checked")){
						$.ajax({
							url:"updateBoardRatingQuit.do",
							method:"post",
							data:b_form,
							processData:false,
							contentType:false,
							success:function(data){
								rate_chk = eval("("+data+")");
								$(span).removeClass("rating-checked");
								$(span).attr("style","color:#aaa;");
								$(span).empty();
									
								$(span).append(icon," Good!");
								$(title).empty();
								$(title).append(rate_chk);
							}
						})
						
					}else{
						$.ajax({
							url:"updateBoardRating.do",
							method:"post",
							data:b_form,
							processData:false,
							contentType:false,
							success:function(data){
								rate_chk = eval("("+data+")");
								$(span).addClass("rating-checked");
								$(span).attr("style","color:#dd1111;");
								$(span).empty();
								
								$(span).append(icon," Good!");
								$(title).empty();
								$(title).append(rate_chk);
							}
						});

					}
				});
			}
		})
	}
	function member_rating_history(){
		var ch_form = new FormData();
		ch_form.append("m_no",m_no);
		if(m_no != 'null'){
			$.ajax({
				url:"detailCommentsHistory.do",
				method:'post',
				data:ch_form,
				dataType:"json",
				async:false,
				processData:false,
				contentType:false,
				success:function(data){
					rating_list = data;
				}
			})
		}else{
			rating_list = null;	
		}
	}
	
	function comments_reply_chk(){
		if(m_no != 'null' && m_no != ''){
		}else{
			alert("로그인한 회원만 가능합니다!");
		}
	}
	function comments_list(){
		var formData = new FormData();
		formData.append("b_no",$("#b_no").val());
		var selSpan;
		$.ajax({
			url:"listComments.do",
			method:"post",
			data:formData,
			processData:false,
			contentType:false,
			async:false,
			success:function(data){
				var arr = eval(data);
				var box = $(".comments-list");
				var cnt = 0;
				var r_cnt = 0;
				var comments_count = $(arr).length;
				var opened_input;
				var opened_span2;
				var opened_textbox
				$(box).empty();
				if(comments_count == 0){
					$(".detail-news-title .ccount").empty;
					$(".detail-news-title .ccount").append(cnt);
					$(".comments-header-ccount").empty();
					$(".comments-header-ccount").append(" "+cnt+"개의 댓글이 작성되었습니다.");
				}
				$(arr).each(function(index,data){
					
					var block = $("<div></div>").attr("class","comments-block comments-box");
					var b_title = $("<div></div>").attr("class","block-title");
					var b_title_left = $("<div></div>").attr("class","block-title-left");
					var profile = $("<div></div>").attr("class","profile");
					var title_caption = $("<div></div>").attr("class","caption");
					var id = $("<div></div>").attr("class","id");
					var date = $("<div></div>").attr("class","date");
					var b_content = $("<div></div>").attr("class","block-content");
					var text = $("<div></div>").attr("class","text");
					var content_caption = $("<div></div>").attr("class","caption");
					var span1 = $("<span></span>").attr("class","rating");
					var span2 = $("<span></span>").attr("class","reply-btn");
					var icon_fire = $("<span></span>").attr("class","glyphicon glyphicon-fire");
					var icon_reply = $("<span></span>").attr("class","glyphicon glyphicon-share-alt");
					var c_no = $("<input/>").attr({"type":"hidden","value":data.c_no})
					
					if(m_no != 'null'){
						$.each(rating_list,function(key,value){
							if($(c_no).val() == value.c_no){
								$(span1).addClass("rating_checked");
								$(span1).attr("style","color:#dd1111;");
							}
						})
					}
					
					
					$(span1).append(icon_fire," ",data.rating);
					$(span2).append(icon_reply," 답글");
					
					$(profile).css("background-image","url('"+data.profile+"')");
					$(id).append(data.m_id);

					$(date).append(moment(data.upload_time).format('YYYY-MM-DD | hh:mm A'));
					$(title_caption).append(id,date);
					
					
					if(data.depth > 0){
						var indent;
						if(data.depth>=3){
							indent = 3;
						}else{
							indent = data.depth;
						}

						var reply_img = $("<img/>").attr({"src":"resources/upload/reply_img2.jpg","style":"width:0.75em;height:auto;margin-bottom:1.5em;margin-left:"+indent*1.2+"em;"});
						
						$(b_title).append(reply_img);
					}
					$(b_title_left).append(profile,title_caption);
					$(b_title).append(b_title_left);
					
					$(text).append(data.content);
					
					$(content_caption).append(span1," ",span2);
					
					if(data.m_no == $("#m_no").val()){
						var span3 = $("<span></span>").attr("class","remove-btn");
						var span4 = $("<span></span>").attr("class","update-btn");
						var cog = $("<span></span>").attr("class","glyphicon glyphicon-cog");
						var bin = $("<span></span>").attr("class","glyphicon glyphicon-remove");
						$(span3).append(bin," 삭제");
						$(span4).append(cog," 수정");
						$(b_title).append(" ",span4);
						$(b_title).append(" ",span3);
					}
					$(b_content).append(text,content_caption);
					
					$(block).append(b_title,b_content);
					
					var reply_input = $("<div></div>").attr({"class":"comments-input reply-input","style":"display:none;"});
					
					$(reply_input).css({"border-top":"2px solid #dfdfdf"});
					
					var reply_box = $("<div></div>").attr("class","input-box");
					var textbox = $("<textarea></textarea>").attr({"id":"reply-content","placeholder":"답글을 입력하세요.","name":"content","maxlength":"300"});
					
					var counter = $("<div></div>").attr("class","reply-counter");
					var reply_btn = $("<div></div>").attr("class","reply-input-button");
					var reply_span = $("<span></span>").attr("class","input-button-span");
					
					var reply_warning = false;
					
					$(reply_span).append("댓글 입력");
					$(reply_btn).append(reply_span);
					$(reply_box).append(textbox);
					
					$(reply_input).append(reply_box,counter,reply_btn);
					$(block).append(reply_input);
					$(textbox).keyup(function(e){
						var content = $(this).val();
						
						if(reply_warning == true && content.length > 0){
							reply_warning == false;
							$(reply_box).css("background","none");
							$(counter).css("background","none");
						}
						
						$(counter).html("<font id='reply-counter-length'>"+content.length+"</font>" + "/300");
						if(content.length >= 300){
							$("#reply-counter-length").css("color","#cc1111");
							$("#reply-counter-length").html("300");
						}else{
							$("#reply-counter-length").css("color","#999");
						}
						
						reply_warning = true;
					});
					$(textbox).keyup();

					$(reply_btn).click(function(){
						if($(textbox).val() == ""){

							alert("답글을 입력해주세요!");
							$(reply_box).css("background","#FFD2CD");
							$(counter).css("background","#FFD2CD");
							comment_warning = true;
							return false;
						}
						
						var reply_form = new FormData();
						reply_form.append("p_no",data.c_no);
						reply_form.append("b_no",$("#b_no").val());
						reply_form.append("m_no",$("#m_no").val());
						reply_form.append("content",$(textbox).val());
					
						comment_submit(reply_form);
					})
				
					if(data.parent_c_no > 0){
						var last_block = $(".comments-block").last();
						$(id).empty();
						$(id).append(data.m_id);
						$(block).css({"margin-top":"0"});
						//$(b_title).append("<span class='glyphicon glyphicon-hand-right' style='color:#888; top:0.1em; margin-right:2em;margin-left:0.2em;'></span>");
						//$(profile).css("left",data.c_level*1.5+"%");
						//$(title_caption).css("left",data.c_level*1.5+"%");
						var border_top = $("<div style='border-top:2px solid #dfdfdf; width:96%; margin:auto;'></div>")
						//$(b_title).css("border-top","1px solid #dfdfdf");
						$(last_block).append(border_top,block);
					}else{
						$(box).append(block);
					}
					
					comments_last_id = data.m_id;
					
					cnt++;
					
					if(cnt == comments_count){
						$(".detail-news-title .ccount").empty();
						$(".detail-news-title .ccount").append(cnt);
						$(".comments-header-ccount").empty();
						$(".comments-header-ccount").append(" "+cnt+"개의 댓글이 작성되었습니다.");
					}
					
					if(m_no == data.m_no){
						$(span1).css("cursor","default");
					}
					
					$(span1).click(function(){
						if(m_no == 'null'){
							alert("로그인한 회원만 가능합니다!");
						}else if(m_no == data.m_no){
							return false;
						}
						else{
							var rate_chk = 0;
							var c_form = new FormData();
							c_form.append("c_no",data.c_no);
							c_form.append("b_no",data.b_no);
							if($(span1).hasClass("rating_checked")){
								$.ajax({
									url:"updateCommentsRatingQuit.do",
									method:"post",
									data:c_form,
									processData:false,
									contentType:false,
									success:function(data){
										rate_chk = eval("("+data+")");
										$(span1).removeClass("rating_checked");
										$(span1).removeAttr("style");
										$(span1).empty();
											
										$(span1).append(icon_fire," ",rate_chk);
									}
								})
								
							}else{
								$.ajax({
									url:"updateCommentsRating.do",
									method:"post",
									data:c_form,
									processData:false,
									contentType:false,
									success:function(data){
										rate_chk = eval("("+data+")");
										$(span1).addClass("rating_checked");
										$(span1).attr("style","color:#dd1111;");
										$(span1).empty();
										
										$(span1).append(icon_fire," ",rate_chk);
									}
								});

							}
						}
						
					});
					var reply_chk = 0;

					$(span2).click(function(){
						if(m_no == 'null'){
							alert("로그인한 회원만 가능합니다!");
						}else{
							if(reply_input != selSpan){
								var inputs = $(".reply-input");
								
								$(inputs).each(function(){
									$(".comments-block textarea").val("");
									$(".reply-btn").css("color","#aaa");
									$(this).css("display","none");
								});
								
								$(this).css("color","#dd1111");
								$("#reply-content").focus();
								$(reply_input).css("display","block");
								selSpan = reply_input;
							}else{
								$(textbox).val("");
								$(span2).css("color","#aaa");
								$(reply_input).css("display","none");
								selSpan = null;
							}
						}
						
// 						if(reply_chk == 0){
// 							if(m_no == 'null'){
// 								alert("로그인한 회원만 가능합니다!");
// 							}else{
// 								$(span2).css("color","#dd1111");

// 								$(reply_input).css("display","block");
// 								$(reply_input).addClass("opened");
// 								$(textbox).val("");
								
// 							}
// 							reply_chk++;

// 						}else{
// 							if($(opened).length > 0){
// 								$(opened).css("display","none");
// 								$(opened).removeClass("opened");
// 							}else{
// 								$(reply_input).css("display","none");
// 								$(span2).css("color","#aaa");
// 								reply_chk--;
// 							}

// 						}

					});
					
					$(span3).click(function(){
						if(confirm("댓글을 삭제하시겠습니까?")){
							var remove_form = new FormData();
							remove_form.append("b_no",data.b_no);
							remove_form.append("c_no",data.c_no);
							remove_form.append("group_no",data.group_no);
							comment_remove(remove_form);
						}else{
							return false;
						}
					})
					$(span4).click(function(){
						$(content_caption).empty();
						$(span3).remove();
						$(span4).remove();
						var update_complete = $("<span></span>").attr("class","update-complete").append("수정");
						var update_quit = $("<span></span>").attr("class","update-quit").append("취소");
						$(content_caption).append(update_complete," ",update_quit);
						
						var update_content = $("<textarea></textarea>").attr({"id":"update-content","placeholder":"답글을 입력하세요.","name":"content","maxlength":"300"});
						

						
						$(b_content).empty();
						$(b_content).append(update_content,content_caption);
						
						
						$(update_content).val(data.content);
						$(update_content).focus();
						$(update_complete).click(function(){
							if($(update_content).val() != ""){
								if(confirm("댓글을 수정하시겠습니까?")){
									var update_form = new FormData();
									update_form.append("content",$(update_content).val());
									update_form.append("c_no",data.c_no);
									
									comment_update(update_form);
								}else{
									return false;
								}
							}else{
								alert("댓글을 입력해주세요!");
							}
							
						})
						$(update_quit).click(function(){
							comments_list();
						})
					})
				})
				
				
			}
		})
	}

	function comments_rating_quit(c_no){
		var result = 0;
		
		var formData = new FormData();
		
		formData.append("c_no",c_no);
		
		if(m_no != 'null' && m_no != ''){
			
		}else{
			return result;
		}
	}
	function comment_submit(formData){
		$.ajax({
			url:"insertComments.do",
			type:"post",
			data:formData,
			processData:false,
			contentType:false,
			success:function(data){
				alert(eval("("+data+")"));
				$(".comments-input #content").val("");
				comments_list();
			}
		})
	}
	function comment_update(formData){
		$.ajax({
			url:"updateComments.do",
			type:"post",
			data:formData,
			processData:false,
			contentType:false,
			async:false,
			success:function(data){
				alert(eval("("+data+")"));
				comments_list();
			}
		})
	}
	function comment_remove(formData){
		$.ajax({
			url:"deleteComments.do",
			type:"post",
			data:formData,
			processData:false,
			contentType:false,
			success:function(data){
				alert("("+data+")");
				comments_list();
			}
		})
	}
	function time_setting(){
		var time = $("#upload-time").val();
		
		var year;
		var month;
		var date;
		
		var arr = time.split(' ');
		
		$(arr).each(function(index,data){
			if(index == 1){
				if(data == 'Jan'){
					month = '01';
				}else if(data == 'Feb'){
					month = '02';
				}else if(data == 'Mar'){
					month = '03';
				}else if(data == 'Apr'){
					month = '04';
				}else if(data == 'May'){
					month = '05';
				}else if(data == 'Jun'){
					month = '06';
				}else if(data == 'Jul'){
					month = '07';
				}else if(data == 'Aug'){
					month = '08';
				}else if(data == 'Sep'){
					month = '09';
				}else if(data == 'Oct'){
					month = '10';
				}else if(data == 'Nov'){
					month = '11';
				}else if(data == 'Dec'){
					month = '12';
				}
			}else if(index == 2){
				date = data;
			}else if(index == 5){
				year = data;
			}
		});
		$(".detail-news-title .detail").append(year+'-'+month+'-'+date);
	}
	
	function breaking_thumb(){
		$.ajax({
			url:"listBreaking.do",
			method:"post",
			success:function(data){
				var footer = $(".detail-news-footer .content");
				var cnt = 0;
				var arr = eval(data);
				var b_no = $("#b_no").val();
				$(arr).each(function(index,data){

					var title = $("<div></div>").attr("class","title");
					var list = $("<div></div>").attr("class","news-list");
					
					var link = $("<a></a>").attr("href","detailNews.do?b_no="+data.b_no+"&hitAdd=true");
					
					if(data.b_no != b_no){
						var thumb = $("<div></div>").attr({"class":"thumb"});
						$(thumb).css("background-image","url("+data.fname+")")
						$(title).append(data.title);
						$(list).append(thumb,title);
						$(link).append(list);
						$(footer).append(link);
						cnt++;
					}
					if(cnt == 4){
						return false;
					}
				});
			}
		})
	}
})
</script>
</head>
<body>
<input type="hidden" id="upload-time" value="${vo.upload_time }">
<input type="hidden" id="b_no" value="${vo.b_no }" name="b_no">
<div class="detail-news">
	<div class="detail-news-header">
		<span style="color:#cc1111;">NEWS</span>
	</div>
	<div class="detail-news-header-border">
	</div>
	<div class="detail-news-body">
		<div class="detail-news-left">
			<div class="detail-news-title">
				<span class="title">${vo.title }</span><br><br>
				<span class="detail"></span><br>
				<span style="color:#dd2222;">by</span> <span class="writer">${name }</span>
				<span style="float:right;">조회수 <span class="num">${vo.hit }</span>  댓글 <span class="num ccount"></span>  추천 <span class="num rating"></span></span>
				<br><br>

			</div>
			<div class="detail-news-preview">
				<img src="${vo.fname }" class="preview-img">
			</div>
			<div class="detail-news-content">
			${vo.content }
			</div>
			<c:if test="${m_id != null }">
			<div class="detail-news-rating" align="center">
			</div>
			</c:if>
		</div>
		<div class="detail-news-right">
			<div class="detail-news-ad">
				<img src="resources/upload/ad/ad1.png" width="270" height="auto" style="margin:auto;"/>
			</div>
			<div class="detail-news-breaking">
				<div class="title">
					BREAKING <font color="#cc1111">NEWS</font>
				</div>
				<div class="list">
					<ul type="disc">
						<c:forEach var="news" items="${breaking }" begin="0" end="4">
							<c:choose>
							<c:when test="${news.b_no eq vo.b_no }">
								<li type="disc"><font color="gray" face="Whitney">${news.title }</font></li>
							</c:when>
							<c:otherwise>
								<li type="disc"><a href="detailNews.do?b_no=${news.b_no }&hitAdd=true">${news.title }</a></li>
							</c:otherwise>
							</c:choose>

						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
		<div class="detail-news-footer">
			<div class="header">
				<span>MORE <font face="Oswald" color="cc1111">NEWS</font></span>
			</div>
			<div class="content">
			</div>
		</div>
	</div>
	<div class="detail-news-comments-header">
		<font class="comments-header">COMMENTS</font><span class="comments-header-ccount"></span>
	</div>
	<div class="detail-news-comments">
		<c:if test="${m_id != null }">
		<form action="insertComments.do" method="post" id="comments-form">
			<input type="hidden" id="m_no" value="${m_no }" name="m_no">
			<div class="comments-input">
				<div class="input-box">
					<textarea id="content" placeholder="댓글을 입력하세요." name="content" maxlength="300"></textarea>
				</div>
				<div class="counter"></div>
				<div class="input-button">
					<span class="input-button-span">댓글 입력</span>
				</div>
			</div>
		</form>
		</c:if>
<!-- 			<div class="comments-order comments-box"> -->
<!-- 				<span class="title">댓글 순서</span> -->
<!-- 				<span class="latest order-button"><span class="glyphicon glyphicon-time"></span> 작성 시간 순</span> -->
<!-- 				<span class="rating order-button"><span class="glyphicon glyphicon-heart"></span> 추천 순</span> -->
<!-- 			</div> -->
		<div class="comments-list">
		</div>
	</div>
</div>
</body>
</html>