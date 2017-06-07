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
body{
	background-color: #dedede;
	background-image: linear-gradient(-45deg, rgba(255, 255, 255, 0) 0%, rgba(255, 255, 255, 0) 44%, rgba(255, 255, 255, 0.3) 45%, rgba(255, 255, 255, 0.3) 55%, rgba(255, 255, 255, 0) 56%, rgba(255, 255, 255, 0) 100%);
	background-size: 4px 4px;
	background-repeat: repeat;
	overflow-x:hidden;
	height:100%;
	
}
.list-news{
	margin:auto;
	margin-top:6%;
 	margin-bottom:6%; 
	padding-bottom:6%;
	background:#fefefe;
	width:1000px;
	min-width:300px;
	height:100%;
	overflow-x:hidden;
	overflow-y:auto;
}
.list-news-header{
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
.list-news-body{
	background:#fefefe;
	height:100%;
	width:100%;
	padding-left:2%;
	padding-right:2%;
	padding-bottom:3em;
	position:relative;
}
.list-news-left{
	width:650px;
	float:left;
	display:inline-block;
	min-height:770px;
	overflow:auto;
	position:relative;
}
.list-news-right{
	display:inline-block;
	float:right;
	padding-top:1.5em;
	padding-left:15px;
	width:300px;
}
.list-news-ad{
	height:auto;
	width:270px;
	margin:auto;
}
.list-news-breaking{
	margin-top:1em;
	width:100%;
	height:auto;
	padding-left:1em;
}
.list-news-breaking .title{
	height:1.6em;
	border-bottom:1px solid #dfdfdf;
	width:100%;
	font-family:'Whitney';
	font-size:1.1em;
}
.list-news-breaking .list a{
	color:#2c2c2c;
	font-family:'Whitney';
	text-decoration:none;
}
.list-news-breaking .list a:hover{
	opacity:0.6;
}
.list-news-breaking .list li{
	margin:0.2em;
}
.preview-img{
	width:98%;
	height:auto;
	margin-left:1%;
}

.list-news-content{
	font-family:'Open Sans';
	font-size:2em;
	margin-top:2em;
}

.news-block{
	min-height:100%;
	width:100%;
	position:relative;
}
.news-block:before{
	padding-bottom:20%;
	content:"";
	display:block;
	border-bottom:1px solid #dfdfdf;
}
.news-block .preview{
	position:absolute;
	width:20%;
	height:65%;
	top:16%;
	left:1.5%;
	background-size:cover;
	background-position:center;
}
.news-block .caption{
	position:absolute;
	top:18%;
	left:21.5%;
	padding-left:2.5%;
	width:70%;
	height:65%;
}
.news-block .caption .title{
	position:relative;
	font-size:1.3em;
	font-family:'Oswald';
	font-weight:bold;
	width:100%;
}
.news-block .caption .detail{
	position:absolute;
	top:70%;
	width:100%;
	height:50%;
	font-family:'Open Sans';
	font-size:0.9em;
}
.news-block .caption .detail .date{
	color:#7c7c7c;
	position:absolute;
	top:15%;
	left:0;
}
.news-block .caption .detail .hit{
	color:#7c7c7c;
	position:absolute;
	top:15%;
	left:70%;
}
.news-block .caption .detail .comment{
	color:#7c7c7c;
	position:absolute;
	top:15%;
	left:90%;
}
.news-block a{
	color:black;
	text-decoration:none;
}
.news-block a:hover{
	color:#cc1111;
}
/* .list-news-left .news-footer{ */
/* 	position:absolute; */
/* 	margin-top:2em; */
/* 	bottom:0; */
/* 	left:0; */
/* } */
.list-news-footer{
	width:650px;
	height:auto;
	text-align:center;
	display:block;
	position:relative;
	
}
.list-news-footer .news-search{
	margin:auto;
	margin-top:1em;
}
.list-news-footer .news-search td{
	padding:0.5em;
}
.list-album-footer .paging{
	text-align: center;
	position:relative;
	margin-top:0.5em;
}
.list-news-footer a{
	color:black;
}
.list-news-footer a:hover{
	text-decoration: none;
	opacity:0.6;
}
.list-news-footer .pagingNum{
	color:black;
	padding-left:0.5%;
	padding-right:0.5%;
	font-family:'Open Sans';
	font-size:1em;
	vertical-align:middle;
	
}
.list-news-footer .pagingBtn{
	color:#cc1111;
	font-weight:bold;
	text-decoration:none;
	font-family:'Whitney';
	font-size:1.3em;
	margin-bottom:3em;
}
.list-news-footer .paging .prev{
	position:absolute;
	bottom:0;
	left:5%;
}
.list-news-footer .paging .next{
	position:absolute;
	bottom:0;
	right:5%;
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

@media screen and (max-width:720px){
	.list-news-left{
		width:100%;
		min-height:100%;
	}
	.list-news-right{
		display:none;
		background:black;
	}
	.list-news{
		margin-top:0;
		margin-bottom:0;
		height:auto;
		width:100%;
	}
	.list-news-header{
		width:100%;
		font-size:6vw;
	}
	.list-news-body{
		padding-left:0;
		padding-right:0;
		padding-top:0.4em;
		min-height:500px;
	}
	.news-block:before{
		padding-bottom:30%;
		content:"";
		display:block;
		border-bottom:1px solid #dfdfdf;
	}
	.paging{
		width:100%;
		margin-top:0;
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

	.list-news-left .pagingNum{
		font-size:1.8vw;

	}
	.list-news-footer{
		width:100%;
		height:auto;
		text-align:center;
		display:block;
		position:relative;
		
	}
	.list-news-footer .news-search{
		margin:auto;
		margin-top:1em;
	}
	.list-news-footer .news-search td{
		padding:0.5em;
	}
	.list-album-footer .paging{
		width:100%;
	}
	.list-news-footer .pagingNum{
		padding-left:0.5%;
		padding-right:0.5%;
		font-family:'Open Sans';
		font-size:1em;
		vertical-align:middle;
		
	}
	.list-news-footer .pagingBtn{
		color:#cc1111;
		font-weight:bold;
		text-decoration:none;
		font-family:'Whitney';
		font-size:1em;
		margin-bottom:4em;
	}
	.list-news-footer .paging .prev{
		position:absolute;
		bottom:0;
		left:5%;
	}
	.list-news-footer .paging .next{
		position:absolute;
		bottom:0;
		right:5%;
	}
}
@media screen and (max-width:600px){

	.news-block .caption .detail .hit{
		left:60%;
	}
	.list-news-left .pagingBtn{
		font-size:3.4vw;
		margin-top:0.2%;
	}
	.list-news-left .news-search{
		width:20em;
	}
	.list-news-left .news-search select{
		width:5em;
	}

}
</style>
<script type="text/javascript">
$(function(){
	
	article_preview();	
	time_setting();
	breaking_thumb();
	article_setting();
	function article_setting(){
		var params;
		var left = $(".list-news-left");
		var box = $(".news-box");
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
			url:"listNewsAjax.do",
			data:formData,
			method:"post",
			processData:false,
			contentType:false,
			success:function(data){

				var arr = eval(data);
				$(arr).each(function(index,data){
					var block = $("<div></div>").attr("class","news-block");
					var link1 = $("<a></a>").attr("href","detailNews.do?b_no="+data.b_no+"&hitAdd=true");
					var link2 = $("<a></a>").attr("href","detailNews.do?b_no="+data.b_no+"&hitAdd=true");
					var preview = $("<div></div>").attr("class","preview");
					var caption = $("<div></div>").attr("class","caption");
					var title = $("<div></div>").attr("class","title");
					var detail = $("<div></div>").attr("class","detail");
					var date = $("<span></span>").attr("class","date");
					var hit = $("<span></span>").attr("class","hit");
					var comment = $("<span></span>").attr("class","comment");
					
					var clock = $("<span></span>").attr({"class":"glyphicon glyphicon-time","style":"top:0.15em;margin-right:0.6em;"});
					var talkbox = $("<span></span>").attr({"class":"glyphicon glyphicon-comment","style":"top:0.15em;"});
					
					var upload_time = moment(data.upload_time).format('YYYY.MM.DD');
					
					$(date).append(clock,upload_time);
					$(hit).append("조회수 ",data.hit);
					$(comment).append(talkbox," ",data.comment_count);
					
					$(detail).append(date,hit,comment);
					
					$(title).append(data.title);
					
					var linked_title = $(link1).append(title);
					
					$(caption).append(linked_title,detail);
				
					$(preview).css("background-image","url("+data.fname+")");
					var linked_preview = $(link2).append(preview);
					
					$(block).append(linked_preview,caption);
					
					$(box).append(block);
				})
				
				$(".list-news-footer").prepend("<div class='paging'>${pagingHtml}</div>");

			}
		})

	}
	
	function article_preview(){
		$(".news-block .preview").each(function(index,data){
			var pre = $(".news-block .pre-image").eq(index).val();
			$(this).css("background-image","url("+pre+")");
		});
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
	}
	
	function breaking_thumb(){
		$.ajax({
			url:"listBreaking.do",
			method:"post",
			success:function(data){
				var footer = $(".list-news-footer .content");
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
					if(cnt == 5){
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
<input type="hidden" id="b_no" value="${vo.b_no }">

<div class="list-news">
	<div class="list-news-header">
		<span style="color:#cc1111;">NEWS</span>
	</div>
	<div class="list-news-body">
		<div class="list-news-left">
			<div class="news-box"></div>
			
		</div>
		<div class="list-news-right">
			<c:if test="${m_id != null && m_level == 0 }">
				<div class="write-news"><a href="insertNews.do">글쓰기</a></div>
			</c:if>
			<div class="list-news-ad">
				<img src="resources/upload/ad/ad1.png" width="270" height="auto" style="margin:auto;"/>
			</div>
		
			<div class="list-news-breaking">
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
	<div class="list-news-footer" align="center">
			<form action="listNews.do" name="search" method="get" onsubmit="return searchCheck()">
			    <table class="news-search">
			        <tr>
			            <td>
			                <select name="keyField">
			                    <option value="title">제목</option>
			                    <option value="content">내용</option>
			                    <option value="all">제목+내용</option>
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
	<div class="phone-write write-news">
		<c:if test="${m_id != null && m_level == 0 }">
			<div class="write-news"><a href="insertNews.do">글쓰기</a></div>
		</c:if>
	</div>
</div>
</body>
</html>