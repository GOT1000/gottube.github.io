<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
@-webkit-keyframes 'mouseover-album'{
	from{
		background:none;
	}
	to{
		background:#eee;
	}
}
@-webkit-keyframes 'mouseout-album'{
	from{
		background:#eee;
	}
	to{
		background:none;
	}
}
body{
	background-color: #dedede;
	background-image: linear-gradient(-45deg, rgba(255, 255, 255, 0) 0%, rgba(255, 255, 255, 0) 44%, rgba(255, 255, 255, 0.3) 45%, rgba(255, 255, 255, 0.3) 55%, rgba(255, 255, 255, 0) 56%, rgba(255, 255, 255, 0) 100%);
	background-size: 4px 4px;
	background-repeat: repeat;
	overflow-x:hidden;
}
.list-album{
	margin:auto;
	margin-top:6%;
 	margin-bottom:6%; 
	padding-bottom:6%;
	background:#fefefe;
	width:1000px;
	min-width:300px;
	min-height:100%;
	height:auto;
	overflow-x:hidden;
	overflow-y:auto;
}
.list-album-header{
	font-size:2.6em;
	vertical-align:middle;
	position:relative; 
	width:96%;
	margin:auto;
	padding-top:1em;
	border-bottom:1px solid #dfdfdf;
	height:3em;
	overflow:auto;
	font-family:"Oswald";
	font-weight:light;
	text-align:center;
}
.list-album-body{
	background:#fefefe;
	height:auto;
	width:100%;
	padding-left:2%;
	padding-right:2%;
	padding-bottom:3em;
}
.list-album-left{
	width:650px;
	float:left;
	display:inline-block;
	height:auto;
}
.list-album-right{
	display:inline-block;
	float:right;
	padding-top:1.5em;
	padding-left:15px;
	width:300px;
}
.list-album-ad{
	height:auto;
	width:270px;
	margin:auto;
}
.list-album-breaking{
	margin-top:1em;
	width:100%;
	height:auto;
	padding-left:1em;
}
.list-album-breaking .title{
	height:1.6em;
	border-bottom:1px solid #dfdfdf;
	width:100%;
	font-family:"Whitney";
	font-size:1.1em;
}
.list-album-breaking .list a{
	color:#2c2c2c;
	font-family:'Whitney';
	text-decoration:none;
}
.list-album-breaking .list a:hover{
	opacity:0.6;
}
.list-album-breaking .list li{
	margin:0.2em;
}
.preview-img{
	width:98%;
	height:auto;
	margin-left:1%;
}

.list-album-content{
	font-family:'Open Sans';
	font-size:2em;
	margin-top:2em;
}
.list-album-footer{
	width:100%;
	min-height:16em;
	height:auto;
	padding-top:1em;
	display:inline-block;

}
.list-album-footer .header{
	width:100%;
	font-size:2em;
	height:2em;
	margin-bottom:1em;
	font-family:"Oswald";
	border-bottom: 1px solid black;
}
.list-album-footer .news-list{
	padding-right:30px;
	width:210px;
	display:inline-block;
	height:auto;
	vertical-align: top;
	position:relative;
}
.list-album-footer a{
	color:black;
}
.list-album-footer a:hover{
	text-decoration: none;
	opacity:0.6;
}
.list-album-footer .news-list .thumb{
	width:170px;
	height:170px;
	background-size:cover;
	background-position: center;
	display:inline-block;
}
.list-album-footer .news-list .title{
	font-size:1.2em;
	margin-top:0.5em;
	font-family:"Oswald";
	display:inline-block;
}
.list-album-left .pagingNum{
	color:black;
	padding-left:0.5%;
	padding-right:0.5%;
	font-family:'Open Sans';
	font-size:1em;
	vertical-align:middle;
}
.list-album-left .paging{
	text-align: center;
	position:relative;
	margin-top:0.5em;
}
.list-album-left .pagingBtn{
	color:#cc1111;
	font-weight:bold;
	text-decoration:none;
	font-family:'Whitney';
	font-size:1.3em;
}
.list-album-left .paging .next{
	position:absolute;
	top:0;
	right:5%;
}
.list-album-left .paging .prev{
	position:absolute;
	top:0;
	left:5%;
}
.list-album-left .news-search{
	position:relative;
	margin:auto;
	width:50%;
	margin-top:1em;
}
.list-album-left .inputb{
	border:1px solid gray; 
	background:#fcfcfc;
	border-radius:0.2em;
}
.write-news{
	width:3em;
	margin:auto;
	height:2em;
}
.write-news a{
	color:#cc1111;
}
.phone-write{
	display:none;
	width:100%;
}
.list-album-box{
	background:none;
	display:block;
	position:relative;
	padding:1em;
	width:100%;
}
.list-album-block{
	width:32%;
	height:20em;
	margin-right:1.5%;
	background:none;
	display:inline-block;
}
.list-album-block-last{
	width:32%;
	height:20em;
	background:none;
	display:inline-block;
}
.album-block{
	position:relative;
}
.album-block .a_img{
	position:relative;
	display:block;
	margin-top:1em;
	background-image:url('resources/upload/check1.jpg');
	background-size:cover;
	height:11em;
	width:11em;
}
.album-block .a_img:hover{
	cursor:pointer;
}
.album-block .detail{
	display:block;
	position:absolute;
	height:auto;
	width:100%;
	padding-left:1em;
	padding-right:1em;
	top:12.5em;
	text-align:center;
}
.album-block .detail:hover{
	cursor:default;
}
.list-album-box a:hover{
	text-decoration:none;
}
.album-block .title{
	font-size:1.2em;
	font-family:'Oswald';
	font-weight:bold;
	color:#111;
}
.album-block .detail .artist{
	font-size:0.8em;
	font-family:'Oswald';
	font-weight:bold;
	color:#999;
	margin-top:0.2em;
}
.album-block .detail .r_date{
	font-size:0.8em;
	font-family:'Whitney';
	color:#991111;
	font-weight:bold;
}

.list-album-body .prev,.next{
	border:none;
	background:none;
	outline:none;
	color:#dd1111;
	font-size:1.5em;
	font-weight:bold;
	font-family:'Whitney';
}
.list-album-body .prev{
	float:left;
}
.list-album-body .next{
	float:right;
}
@media screen and (max-width:1020px){
	.list-album{
		width:100%;
		min-height:100%;
		margin-top:0;
		margin-bottom:0;
	}

	.list-album-header{
		font-size:2.4em;
		height:3em;
	}
	.list-album-left{
		width:100%;
		min-height:100%;
	}
	.list-album-right{
		display:none;
	}
	.list-album-footer .news-list{
		width:100%;
		margin-bottom:1em;
		padding-right:0;
	}
	.list-album-footer .news-list .thumb{
		width:130px;
		height:130px;
		position:relative;
	}
	.list-album-footer .news-list .title{
		width:70%;
		margin-left:1em;
		font-size:2.5vw;
		vertical-align:top;
	}
	.list-album-footer .header{
		font-size:4vw;
	}
	.news-block .caption .detail{
		font-size:1em;
	}
	.list-album-left .news-search{
		width:23em;
	}
	.phone-write{
		display:inline-block;
/* 		padding-top:6%; */
		width:100%;
		font-size:1em;
	}
}
@media screen and (max-width:720px){
	.list-album{
		margin-top:0;
		margin-bottom:0;
		min-height:100%;
	}
	.list-album-header{
		width:100%;
		font-size:6vw;
	}
	.list-album-body{
		padding-left:0;
		padding-right:0;
		padding-top:0.4em;
	}
	.news-block:before{
		padding-bottom:30%;
		content:"";
		display:block;
		border-bottom:1px solid #dfdfdf;
	}
	.list-album-footer .header{
		font-size:4vw;
	}
	.news-block .caption .title{
		font-size:3.2vw;
	}
	.news-block .caption .detail{
		font-size:1.8vw;
	}
	.news-block .caption{
		top:16%;
	}
	.news-block .caption .detail .hit{
		left:65%;
	}
	.news-block .caption .detail .comment{
	}
	.list-album-left .pagingNum{
		font-size:1.8vw;

	}

}
@media screen and (max-width:500px){
	
	.list-album-footer .header{
		font-size:1.2em;
	}
	.news-block .caption .detail .hit{
		left:60%;
	}
	.list-album-left .pagingBtn{
		font-size:3.4vw;
		margin-top:0.2%;
	}
	.list-album-left .news-search{
		width:20em;
	}
	.list-album-left .news-search select{
		width:5em;
	}

}
</style>
<script type="text/javascript">
$(function(){
	var page_no = 1;
	
	load_album();

	function load_album(){
		var params;
		var domain = document.location.href.split("?");
		
 		$(domain).each(function(index,data){
 			if(index == 1){
 				params = data.split("&");
 			}
 		});
 		
 		var keyField;
 		var keyWord;
 		var currentPage = 1;
 		
 		$(params).each(function(index,data){
 			var arr = data.split("=");

 			$(arr).each(function(idx,data){
 				if(idx == 1){
 		 			if(index==0){
 		 				keyField=data;
 		 			}else if(index == 1){
 		 				keyWord=data;
 		 			}else{
 		 				currentPage=data;
 		 			}
 				}
 			})

 		})
		
 		var formData = new FormData();
 		
 		formData.append("keyField",keyField);
 		formData.append("keyWord",keyWord);
 		formData.append("currentPage",currentPage);
		$.ajax({
			url:'listAlbumAjax.do',
			data:formData,
			method:"post",
			dataType:"json",
			contentType:false,
			async:false,
			processData:false,
			success:function(data){
				var left = $(".list-album-left")
				var body = $(".album-body");
				$(body).empty();
				$(data).each(function(index,data){
					var block = $("<div></div>").attr({"class":"album-block","align":"center"});
					var a_img = $("<div></div>").attr("class","a_img").css("background-image","url('"+data.a_img+"')");

					var detail = $("<div></div>").attr("class","detail");

					var title = $("<div></div>").attr("class","title").html(data.title);
					var artist = $("<div></div>").attr("class","artist").html(data.a_name);
					var r_date = $("<div></div>").attr("class","r_date").html(moment(data.release_date).format('YYYY-MM-DD'));
					
					var link = $("<a></a>").attr("href","detailAlbum.do?a_no="+data.a_no);
				
					
					$(link).append(a_img);

					$(detail).append(title,artist,r_date);
					
					
					
					$(block).append(link,detail);
					if((index+1) % 3 == 0){
						$(block).addClass("list-album-block-last");
						var last_box = $(".list-album-box").last();
						$(last_box).append(block);
					}else{
						if((index+1) % 3 == 1){
							var box = $("<div></div>").attr("class","list-album-box");
							
							$(box).append(block);
							$(body).append(box);
						
						}else{
							var last_box = $(".list-album-box").last();
							$(last_box).append(block);
						}
						$(block).addClass("list-album-block");
						
					}
					
					$(link).mouseover(function(){
						$(block).css({"-webkit-animation-name":"mouseover-album",
							"-webkit-animation-duration":"1s",
							"background":"#eee"});	
					})
					
					$(link).mouseout(function(){
						$(block).css({"-webkit-animation-name":"mouseout-album",
							"-webkit-animation-duration":"1s",
							"background":"none"});	
					})
					
					
				})
				$(left).append("<div class='paging'>${pagingHtml}</div>");
			}
		})
	}
})
</script>
</head>
<body>
<div class="list-album">
	<div class="list-album-header">
		<span style="color:#cc1111;">ALBUMS</span>
	</div>
	<div class="list-album-body">
		<div class="list-album-left">
			<div class="album-body"></div>
			<form action="listAlbum.do" name="search" method="get" onsubmit="return searchCheck()">
			    <table class="news-search">
			        <tr>
			            <td>
			                <select name="keyField">
			                    <option value="title">제목</option>
			                    <option value="a_name">아티스트</option>
		               		 </select>
		          		</td>
		            <td>
		                <input type="text" size="16" name="keyWord">
		            </td>
		            <td>
		                <input type="submit" value="검색" class="inputb">
		            </td>
		        </tr>
	    	</table>
			</form>
		</div>
		<div class="list-album-right">
			<c:if test="${m_id != null && m_level == 0 }">
				<div class="write-news"><a href="insertAlbum.do">앨범 등록</a></div>
			</c:if>
			<div class="list-album-ad">
				<img src="resources/upload/ad/ad1.png" width="270" height="auto" style="margin:auto;"/>
			</div>
		
			<div class="list-album-breaking">
				<div class="title">
					BREAKING <font color="#cc1111">NEWS</font>
				</div>
				<div class="list">
					<ul type="disc">
						<c:forEach var="news" items="${breaking }" begin="0" end="4">
								<li type="disc"><a href="detailNews.do?b_no=${news.b_no }&hitAdd=true">${news.title }</a></li>
						</c:forEach>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<div class="phone-write write-news">
		<c:if test="${m_id != null && m_level == 0 }">
			<div class="write-news"><a href="insertAlbum.do">앨범 등록</a></div>
		</c:if>
	</div>
</div>
</body>
</html>