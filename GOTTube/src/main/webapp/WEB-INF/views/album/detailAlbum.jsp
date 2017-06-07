<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/daumOpenEditor/css/editor.css" charset="utf-8" />
<link href="https://fonts.googleapis.com/css?family=Open+Sans|Oswald" rel="stylesheet">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />
<script src="${pageContext.request.contextPath}/resources/daumOpenEditor/js/editor_loader.js" type="text/javascript" charset="utf-8"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
<style type="text/css">
body{
	background:#030303;
}

.detail-album{
	width:100%;
	min-width:320px;
	overflow-x:hidden;
	min-height:100%;
	height:auto;
	padding-bottom:70px;
}

.detail-album-left{
	width:42%;
	height:auto;
	float:left;
	display:inline-block;
	max-width:545px;
	margin-left:5%;
}

.detail-album-right{
	width:48%;
	height:auto;
	float:right;
	display:inline-block;
	margin-right:5%;
	margin-top:110px;
}

.detail-album-profile{
	position:relative;
	width:100%;
	line-height:10px;
	min-height:100px;
	min-width:100px;
	max-width:320px;
 	background-size:cover; 
	overflow:hidden;
	margin:auto;
	z-index:0;
}

.detail-album-profile:before{
	content:"";
	display:block;
	padding-top:100%;
}

.detail-album-name{
	position: relative;
	padding-top:40px;
	height:100px;
	text-align: center;
	width:100%;
	letter-spacing:1em;
	font-size: 3em;
	max-width:545px;
	color:white;
	font-weight:bolder;
	font-family:"Open Sans Condensed";
	letter-spacing:-1px;
	margin:auto;
}

.detail-album-content{
	background: #1C1C1C;
	min-height:100px;
	max-width:405px;
	margin:auto;
	margin-top:4em;
	padding:13px;
}

.detail-album-content .title{
	font-weight: bolder;
	font-family: 'Open Sans';
	letter-spacing: 0px;
	word-spacing: 3px;
	color: white;
}

.detail-album-content .content{
	height:auto;
	margin-top:15px;
	font-size: 17px;
	color:#BFBFBF;
	padding-right:20px;
}
.left-blank{
	height:55px;
	margin-top:25px;
	text-align: center;
	font-weight: bolder;
	font-family: 'Oswald';
	font-size:1.5em;
	color:white;
}

.left-blank2{
	height:60px;
	text-align: center;
	font-weight: bolder;
	font-family: 'Open Sans Condensed';
	font-size:2.5em;
	color:#8c8c8c;
}

.left-blank2 a{
	color:#8c8c8c;
}

.left-blank2 a:hover{
	color: #E89C0C;
	text-decoration: none;
}

.detail-album-song{

	float:left;
	display:inline-block;
	width:100%;
	min-width:250px;
	max-width:600px;
	margin-top:80px;
}

.detail-album-song .title{
	font-weight: bold;
	font-family: 'Open Sans';
	line-height:15px;
	letter-spacing: 0px;
	word-spacing: 3px;
	color: #E89C0C;
}

.detail-album-song .content{
	height:auto;
	width:96%;
	margin-top:5px;
	font-size: 17px;
	font-family:"Open Sans";
}


.more-btn{
	font-family: 'Open Sans';
	line-height:20px;
	letter-spacing: 0px;
	height:30px;
	width:96%;
	margin-top:5px;
	background:black;
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
	color:#E89C0C;
	margin-left:39%;
}

.phone-more{
	display:none;
}

.content-phone{
	display:none;
}

.detail-album-content-phone{
	display:none;
	margin-top:4em;
}
.detail-album-title{
	display:inline-block;
	text-align:center;
	margin:auto;
	overflow-x:hidden;
}
.track-table{
	padding:10px;
	width:100%;
	height:auto;
	font-size:1em;
}
.track-tr{
	border-top:0.1em solid ;
	width:100%;
	min-height:2em;
	height:auto;
}
.track-num{
	width:1.4em;
	min-height:2em;
	position:relative;
	height:auto;
	vertical-align:top;
	display:inline-block;
	text-align:right;
	padding-top:0.4em;
	margin-left:0.05em;
	color:#5c5c5c;
}

.track-name{
	width:80%;
	min-height:2em;
	position:relative;
	height:auto;
	display:inline-block;
	padding-top:0.4em;
	padding-bottom:0.4em;
	padding-left:0.8em;
	color:#8c8c8c;
}

.track-border{
	border-left:0.5px solid #4c4c4c;
	position:absolute;
	display:inline-block;
	top:20%;
	height:55%;
	bottom:0;
	left:0.3em;
	margin-right:2em;
	border-collapse: collapse;
}
.detail-song-insert{
	min-width:250px;
	
	overflow-x: hidden;
}
.song-insert{
	border:1px solid #4c4c4c;
	border-radius:0.2em;
	text-align:center;
	color:#8c8c8c;
	background:#1c1c1c;
	padding-top:0.5em;
	width:7em;
	height:2.5em;
	display:inline-block;

}

.song-insert:hover{
	opacity:0.5;
	cursor:pointer;
}
.song-insert-table{
	margin-top:2em;
}

.song-left{
	width:3em;
	display:inline-block;
	text-align: right;
	color:#8c8c8c;
	vertical-align: top;
}
.song-right{
	width:76%;
	display: inline-block;
	margin-left:1em;
}
.table-td{
	font-size:18px;
	padding:6px;
	vertical-align: middle;
}
.table-left{
	width:3em;
	display:inline-block;
	text-align: right;
	color:#8c8c8c;
	padding-top:0.5em;
}
.table-right{
	display: inline-block;
	margin-left:0.2em;
	width:70%;
}
.song-table-tr{
	min-height:2em;
	margin-top:2em;
	height:auto;
}
.song-lyrics{
	height:18em;
}
.profile-input-attach{
	height:45px;
}
.profile-input-attach label{
    position:relative;
    cursor:pointer;
    display:inline-block;
    vertical-align:middle;
    overflow:hidden;
    width:30px;
    height:30px;
    text-align:center;
    line-height:28px;
    color:#8c8c8c;
	background:#1c1c1c;
	border:1px solid #4c4c4c;
	border-radius:0.2em;
	font-size:1.5em;
}
.profile-input-attach label input {
    position:absolute;
    width:0;
    height:0;
    overflow:hidden;
}
.profile-input-attach input[type=text] {
    vertical-align:middle;
    display:inline-block;
    max-width:280px;
    width:70%;
    height:30px;
    line-height:28px;
    font-size:11px;
    padding:0;
    border:0;
    margin-bottom:5px;
    border:1px solid #777;
}

.song-submit{
	border:1px solid #4c4c4c;
	border-radius:0.2em;
	text-align:center;
	color:#8c8c8c;
	background:#1c1c1c;
	padding-top:0.5em;
	margin-right:0.5em;
	width:7em;
	height:2.5em;
	display:inline-block;
	cursor:pointer;
}
.table1{
	margin-bottom:1.5em;
}
.table2{
	margin-bottom:1.5em;
}
.artist-change{
	font-size:1em;
	margin-left:10px;
	background:#1c1c1c;
	border:1px solid #4c4c4c;
	color:#8c8c8c;
}
.feat-change{
	font-size:1em;
	margin-left:10px;
	background:#1c1c1c;
	border:1px solid #4c4c4c;
	color:#8c8c8c;
}

.artist-change-no{
	font-size:1em;
	margin-left:25%;
	background:#1c1c1c;
	border:1px solid #4c4c4c;
	color:#8c8c8c;
}
.feat-change-no{
	font-size:1em;
	margin-left:25%;
	background:#1c1c1c;
	border:1px solid #4c4c4c;
	color:#8c8c8c;
}
.track-link:hover,:FOCUS{
	text-decoration: none;
	opacity:0.5;
}
@media screen and (max-width:1080px){

	.detail-album-name{
		min-width:240px;
		height:auto;
	}
	.detail-album-left{
		width:44%;
		margin-left:4%;
	}
	.detail-album-right{
		width:46%;
		margin-right:4%;
	}
}

@media screen and (max-width:720px){
	.phone-blank{
		height:auto;
		width:100%;
		min-height:50px;
	}
	.detail-album-profile{
		position:relative;
		width:100%;
		line-height:10px;
		min-height:75px;
		min-width:75px;
		width:50vw;
		background-size:cover;
		overflow:hidden;
		z-index:0;
	}
	.left-blank2{
		min-height:50px;
		height:auto;
	}
	.detail-album-name{
		margin-top:0;
		height:auto;
		min-width:240px;
		max-width:650px;
		text-align:center;	
		display:inline-block;
		width:100%;
	}
	.detail-album{
		margin:auto;
		min-width:250px;
		overflow-x:hidden;
		height:auto;
		min-height:100%;
	}
	.detail-album-left{
		width:90%;
		height:auto;
		float:left;
		display:inline-block;
		max-width:700px;
		margin:auto;
		margin-left:5%;
		min-width:250px;
	}
	.detail-album-right{
		width:90%;
		height:100%;
		float:left;
		display:inline-block;
		max-width:700px;
		margin:auto;
		margin-left:5%;
		min-width:250px;
		margin-top:10px;
	}
	.detail-album-content{
		display:none;
	}
	.detail-album-content-phone{
		min-height:48px;
		max-width:650px;
		width:100%;
		display:block;
		color:#EDEFF0;
		background: #1C1C1C;
		margin:auto;
		margin-top:3em;
		padding:13px;
	}
	.detail-album-content-phone .title-phone{
		font-weight: bolder;
		font-family: 'Open Sans';
		letter-spacing: 0px;
		word-spacing: 3px;
		color: white;
	}
	
	.detail-album-content-phone .content-phone{
		height:auto;
		margin-top:15px;
		padding-right:20px;
		background: #1C1C1C;
		min-height:48px;
		width:100%;
		max-width:650px;
		min-width:250px;
		margin:auto;
		padding:13px;
		display:none;
		color:#BFBFBF;
	}

	.detail-album-album{
		width:100%;
	}
	.detail-album-song{
		width:100%;
		margin-top:10px;
	}
	.detail-album-song .title{
		margin-top:10px;
	}
	.detail-album-song .content{
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
		color: #E89C0C;
	}
}
@media screen and (max-width:520px){
	.left-blank2{
		font-size:6.5vw;
	}
	.detail-album-name{
		font-size:8vw;
	}
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
	
	var content;
	var pre_content;
	var etc_chk=0;
	var etc_chk2=0;
	var change = 0;
	var change2 = 0;
	
	attach_image();
	content_set();
	year_set();
	artist_set();
	album_track();
	
	$(".imsi").click(function(){
		$("#datepicker").val($("#r_date").val());
	});
	
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
		$(list).each(function(index,data){
			var tr_border = $("<div></div>").attr("class","track-border");
			var tr_name = $("<div></div>").attr("class","track-name");
			var tr_num = $("<div></div>").attr("class","track-num");
			var tr_tr = $("<div></div>").attr("class","track-tr");
			var tr_table = $(".track-table");
			
			var res;
			
			var song = "&nbsp;<a href='detailSong.do?s_no="+data.s_no+"&hitAdd=true' class='track-link'> <font color='#EDEFF0'> "+data.s_title+"</font> <font color='#8c8c8c'>by "+data.a_name+"</font></a>"
			tr_name = tr_name.append(tr_border,song);
			tr_num = tr_num.append(index+1+". ");
			
			res = tr_tr.append(tr_num,tr_name);
			tr_table.append(res);
		})
	}
	
	function year_set(){
		var rdate = $("#year").val();
		
		var year = rdate.substring(rdate.length-4,rdate.length);
		
		$(".detail-album-title").append("<font color='#8c8c8c'> ("+year+")</font>");
	}
	function artist_set(){
		var a_no = $("#a_no").val();
		$.ajax({
			url:"listAlbumArtist.do",
			method:"post",
			data:{a_no:a_no},
			success:function(data){
				var artist = data;

				$(".left-blank2").append(artist);
				
				$(".og-artist").append($(".left-blank2").text());
			}
		});
	}
	function content_set(){
		var a_no = $("#a_no").val();
		$.ajax({
			url:"detailAlbumContent.do",
			method:"post",
			data:{a_no:a_no},
			success:function(data){
				content = data;
				var content_box = $(".detail-album-content .content");
				var skip = $("<span>접기</span>").attr("class","phone-skip")
				
				$("#content").append(content);
				
				$(".content-phone").append(content,skip);
				
				$(".phone-more").click(function(){
					$(".detail-album-content-phone .content-phone").css("display","block");
					$(".phone-more").css("display","none");
					$(".phone-skip").css("display","block");
				});

				
				$(".phone-skip").click(function(){
					$(".detail-album-content-phone .content-phone").css("display","none");
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
		var content_block = $(".detail-album-content .content");
		
		content_block.empty();
		
		content_block.append(content);
	}
	
	function attach_image(){
		var profile = $("#profile").val();
		
		$(".detail-album-profile").css("background-image","url('"+profile+"')");
		
	}
	
	$("#datepicker").datepicker({
		changeMonth: true,
		changeYear: true,
		nextText: '다음 달',
		prevText: '이전 달',
		dateFormat: 'yy-mm-dd',
		yearRange: "1980:2017",
		monthNamesShort: ['1','2','3','4','5','6','7','8','9','10','11','12'],
		monthNames: ['1월','2월','3월','4월','5월','6월','7월','8월','9월','10월','11월','12월']
	});
	
	var og_name;
	
	$("#file-upload").on('change',function(){
		var lastindex = $(".filestyle").val().lastIndexOf('\\');
		var filename = $(".filestyle").val().substring(lastindex+1,$(".filestyle").val().length);
		
		var thumbtext = $(".filestyle").val();
		thumbtext = filename.slice(filename.indexOf(".")+1).toLowerCase();
		
		var file = $(".filestyle")[0].files[0];
		var fileType = file["type"];
		var ValidImageTypes = ["audio/mp3", "audio/mpeg"];
		if ($.inArray(fileType, ValidImageTypes) < 0) {
		     // invalid file type code goes here.
			if($(".filestyle")[0].files[0] != null && $(".filestyle")[0].files[0] != ""){
				alert("음악 파일만 등록 가능합니다!");
			}
		     return;
		}else{
			if(filename != null && filename != ""){
				$("#file_route").val(filename);

				og_name = filename;

			}else{
				if(("#file_route").val() != null && ("#file_route").val() != ""){

					$("#file_route").val(og_name);
				}

			}
		}
		
		
	});
	
	var toggle = 0;

	$("#artist-add").click(function(){

		var table = $(".table1");
		var tr = $("<tr></tr>").attr({"height":"34px","plus":"plus"});
		
		var td1 = $("<td></td>").attr({"width":"20%"});
		
		var td2 = $("<td></td>").attr({"width":"80%"});
		
		var select = $("<select></select>").attr({"name":"artist",
													"value":"${ar_no}"});
		
		var option = "<option selected disabled value='0'>선택</option>";
		var foreach = "<c:forEach var='ar' items='${ar_vo}'><option value='${ar.ar_no}'>${ar.ar_name}</option></c:forEach>";

		

		res = select.append(option,foreach);
		res = td2.append(res);
		res = tr.append(td1,res);
		table.append(res);

});

	$("#producer-add").click(function(){

			var table = $(".table2");
			var tr = $("<tr></tr>").attr({"height":"34px","plus2":"plus2"});
			
			var td1 = $("<td></td>").attr({"width":"20%"});
			
			var td2 = $("<td></td>").attr({"width":"80%"});
			
			var select = $("<select></select>").attr({"name":"producer",
														"value":"${ar_no}"});
			
			var option = "<option selected disabled value='0'>선택</option>";
			var foreach = "<c:forEach var='ar' items='${ar_vo}'><option value='${ar.ar_no}'>${ar.ar_name}</option></c:forEach>";

			

			res = select.append(option,foreach);
			res = td2.append(res);
			res = tr.append(td1,res);
			table.append(res);

	});
	
	$("#feat-add").click(function(){

		var table = $(".table3");
		var tr = $("<tr></tr>").attr({"height":"34px","plus3":"plus3"});
		
		var td1 = $("<td></td>").attr({"width":"20%"});
		
		var td2 = $("<td></td>").attr({"width":"80%"});
		
		var select = $("<select></select>").attr({"name":"feat",
													"value":"${ar_no}"});
		
		var option = "<option selected disabled value='0'>선택</option>";
		var foreach = "<c:forEach var='ar' items='${ar_vo}'><option value='${ar.ar_no}'>${ar.ar_name}</option></c:forEach>";

		

		res = select.append(option,foreach);
		res = td2.append(res);
		res = tr.append(td1,res);
		table.append(res);

});
	
	$("#artist-remove").click(function(){
		var tr = $("#artists");
		

			var remove = $("tr[plus=plus]").last();
				
			remove.remove();	
		
	});
	$("#producer-remove").click(function(){
		var tr = $("#artists");
		

			var remove = $("tr[plus2=plus2]").last();
				
			remove.remove();	
		
	});
	$("#feat-remove").click(function(){
		var tr = $("#artists");
		

			var remove = $("tr[plus3=plus3]").last();
				
			remove.remove();	
		
	});
	function init_setting(){
		$(".song-insert-table").addClass("hide");
		$(".song-insert").html("노래 추가 +");
		$(".song-title").val("");
		Editor.modify({content:" ",attachments:[]});
		$("#datepicker").val($("#r_date").val());
		$("#file_route").val("");
		$("#file-upload").val();
		if($("input:checkbox[class='etc-input']").is(":checked")){
			$("input:checkbox[class='etc-input']").prop("checked",false);
			$(".song-etc").addClass("hide");
			etc_chk--;
		}
		if($("input:checkbox[class='etc-input2']").is(":checked")){
			$("input:checkbox[class='etc-input2']").prop("checked",false);
			$(".song-etc2").addClass("hide");
			etc_chk2--;
		}
		if(change != 0){
			$(".artist-change-menu").addClass("hide");
			$(".og-artist").removeClass("hide");
			$("#artist-change").addClass("artist-change");
			$("#artist-change").removeClass("artist-change-no");
			$("#artist-change").html("수정");
			$("select[name=artist] option:eq(0)").prop("selected",true);
			$("tr[plus=plus]").remove();
			$("#song-etc").val();
			change--;
		}
		if(change2 != 0){
			$(".feat-change-menu").addClass("hide");
			$(".og-feat").removeClass("hide");
			$("#feat-change").addClass("feat-change");
			$("#feat-change").removeClass("feat-change-no");
			$("#feat-change").html("수정");
			$("select[name=feat] option:eq(0)").prop("selected",true);
			$("tr[plus3=plus3]").remove();
			$(".song-etc2").addClass("hide");
			$("#song-etc2").val();
			change2--;
		}
		$("#song-etc").val("");
		$("#song-etc2").val("");
		$("tr[plus=plus]").remove();
		$("tr[plus2=plus2]").remove();
		$("tr[plus3=plus3]").remove();
		toggle--;
	}
	$(".song-insert").click(function(){
		if(toggle == 0){
			$(".song-insert-table").removeClass("hide");
			$(".song-insert").html("작성 취소");
			toggle++;
		}else{
			init_setting();
		}
	});
	
	$("#artist-change").click(function(){
		if(change == 0){
			$(".artist-change-menu").removeClass("hide");
			$(".og-artist").addClass("hide");
			$("#artist-change").removeClass("artist-change");
			$("#artist-change").addClass("artist-change-no");
			$("#artist-change").html("취소");
			change++;
		}else{
			$(".artist-change-menu").addClass("hide");
			$(".og-artist").removeClass("hide");
			$("#artist-change").addClass("artist-change");
			$("#artist-change").removeClass("artist-change-no");
			$("#artist-change").html("수정");
			$("select[name=artist] option:eq(0)").prop("selected",true);
			$("tr[plus=plus]").remove();
			change--;
		}
	})

	$("#feat-change").click(function(){
		if(change2 == 0){
			$(".feat-change-menu").removeClass("hide");
			$(".og-feat").addClass("hide");
			$("#feat-change").removeClass("feat-change");
			$("#feat-change").addClass("feat-change-no");
			$("#feat-change").html("취소");
			change2++;
		}else{
			$(".feat-change-menu").addClass("hide");
			$(".og-feat").removeClass("hide");
			$("#feat-change").addClass("feat-change");
			$("#feat-change").removeClass("feat-change-no");
			$("#feat-change").html("수정");
			$("select[name=feat] option:eq(0)").prop("selected",true);
			$("tr[plus3=plus3]").remove();
			$(".song-etc2").addClass("hide");
			if($("input:checkbox[class='etc-input2']").is(":checked")){
				$("input:checkbox[class='etc-input2']").prop("checked",false);
				etc_chk2--;
			}

			change2--;
		}
	})
	

	$(".etc-input").click(function(){
		if(etc_chk == 0){
			$(".song-etc").removeClass("hide");
			etc_chk++;
		}else{
			$(".song-etc").addClass("hide");
			$("#song-etc").val("");
			etc_chk--;
		}
	
	});

	$(".etc-input2").click(function(){
		if(etc_chk2 == 0){
			$(".song-etc2").removeClass("hide");
			etc_chk2++;
		}else{
			$(".song-etc2").addClass("hide");
			$("#song-etc2").val("");
			etc_chk2--;
		}
	
	});
	
	$(".song-submit").click(function(){
		
		var cnt=0;
		var cnt2=0;
		var cnt3=0;
		var title = $("#s_title").val();
		var lyrics = Editor.getContent();
		var release_date = $("#datepicker").val();
		var s_file = $(".filestyle")[0].files[0];
		var a_no = $("#a_no").val();
		var etc = "";
		
		if($("#song-etc").val() == ""){
			etc += "*";
		}else{
			etc += $("#song-etc").val();
		}

		if($("#song-etc2").val() == ""){
			etc += "/*";
		}else{
			etc += "/"+$("#song-etc2").val();
		}
		
		var ar_array = "";
		var pro_array = "";
		var feat_array = "";
		
		var validator = new Trex.Validator();
		
		$("select[name=artist] option:selected").each(function(index){
			if(index != $("select[name=artist]").length-1){
				ar_array += $(this).val()+",";
			}else{
				ar_array += $(this).val();
			}
		});
		
		if($("select[name=producer]").length > 0){
			$("select[name=producer] option:selected").each(function(index){
				if(index != $("select[name=producer]").length-1){
					pro_array += $(this).val()+",";
				}else{
					pro_array += $(this).val();
				}
			});
		}else{
			pro_array += "*";
		}
		
		$("select[name=feat] option:selected").each(function(index){
			if(index != $("select[name=feat]").length-1){
				feat_array += $(this).val()+",";
			}else{
				feat_array += $(this).val();
			}
		});
		
		checkDupl($("select[name=artist]"));
		checkDupl($("select[name=producer]"));
		checkDupl($("select[name=feat]"));
		
		$("select[name=artist]").each(function(){
			if($(this).val() != null){
				cnt++;
			}
		});
		
		$("select[name=producer]").each(function(){
			if($(this).val() != null){
				cnt2++;
			}
		});
		
		$("select[name=feat]").each(function(){
			if($(this).val() != null){
				cnt3++;
			}
		});
		
		
		function checkDupl(obj){
			var temp = [];

			var res = false;
			
			$(obj).each(function(i){
				temp[i] = $(this).val();
			});
			
			$(temp).each(function(i){
				var x = 0;
				
				$(obj).each(function(){
					if(temp[i] == $(this).val()){
						x++;
					}
				});
				
				if(x > 1){
					res = true;
					return false;
				}
			});

			return res;
		}
		
		
		if($("#s_title").val() == ""){
			alert("타이틀을 입력하세요!");
			return;
		}else if(!$(".artist-change-menu").hasClass("hide") && cnt != $("select[name=artist]").length){
			alert("아티스트를 입력해주세요!");
			return;
		}else if(cnt2 != $("select[name=producer]").length){
			alert("프로듀서를 입력해주세요!");
			return;
		}else if($("select[name=producer]").length == 0 && $("#song-etc").val() == ""){
			alert("프로듀서를 입력해주세요!");
			return;
		}else if((!$(".feat-change-menu").hasClass("hide") && cnt3 != $("select[name=feat]").length) && $(".song-etc2").hasClass("hide")){
			alert("피쳐링 아티스트를 입력해주세요!");
			return;
		}else if(checkDupl($("select[name=artist]")) == true){
			alert("아티스트가 중복됩니다!");
			return;
		}else if(checkDupl($("select[name=producer]")) == true){
			alert("프로듀서가 중복됩니다!");
			return;
		}else if(checkDupl($("select[name=feat]")) == true){
			alert("피쳐링 아티스트가 중복됩니다!");
			return;
		}else if (!validator.exists(lyrics)) {
			alert('내용을 입력하세요!');
			return false;
		}else if($(".filestyle")[0].files[0] == null){
			alert("오디오 파일을 넣어주세요!");
			return;
		}
		
		var formData = new FormData();
		
		formData.append("title",title);
		formData.append("lyrics",lyrics);
		formData.append("release_date",release_date);
		formData.append("s_file",s_file);
		formData.append("a_no",a_no);
		formData.append("etc",etc);
		formData.append("ar_array",ar_array);
		formData.append("pro_array",pro_array);
		formData.append("feat_array",feat_array);
		formData.append("og-artist",$(".og-artist").html());
		
		$.ajax({
			url:"insertSong.do",
			method:"post",
			data:formData,
			processData:false,
			contentType:false,
			beforeSend:function(){
				$(".wrap.loading").removeClass("display-none");
			},
			complete:function(){
				$(".wrap-loading").addClass("display-none");
			},
			success:function(data){
				alert(data);
				init_setting();
				$(".track-table").empty();
				album_track();
			}
		});
	})
	
	$("p").removeAttr("style");
	
})
</script>
</head>
<body style="overflow-x: hidden;min-height:100%; min-width:320px;">
<div class="wrap-loading display-none">
    <div><img src="resources/img/loading1.gif" width="60" height="auto"/></div>
</div>   
<form name="tx_editor_form" id="tx_editor_form" action="insertAlbum.do" method="post">
<div class="detail-album" style="overflow-x: hidden;overflow-y:auto;min-height:100%;height:auto">
	<input type="hidden" id="a_no" value="${vo.a_no }">
	<input type="hidden" id="profile" value="${vo.a_img}">
	<input type="hidden" id="year" value="${vo.release_date}">
	<input type="hidden" id="r_date" value="${r_date}">
	<div id="content" style="display:none;">
	</div>
	
	<div class="detail-album-left">
		
<!-- 		<div class="phone-blank"></div> -->
		<div class="detail-album-name">
			<div style="margin:auto;text-align:center;width:90%;text-align:center;">
				<div class="detail-album-title">${vo.title }</div>
			</div>
		</div>
		<div class="left-blank2"></div>
		<div class="detail-album-profile">
		</div>

<%-- 		<div class="left-blank"><img src="resources/upload/heart.png" width="23" height="auto" style="margin-bottom:4px;"> ${vo.rating }</div> --%>
		
		<div class="detail-album-content">
			<div class="title">ABOUT "${vo.title }"</div>
			<div class="content">
			</div>
		</div>
		<div class="detail-album-content-phone">
			<div class="title-phone">ABOUT "${vo.title }" <span class="phone-more"><img src="resources/upload/read.png" width="13" height="auto"/></span></div>
			<div class="content-phone"></div>
		</div>
		
	</div>
	<div class="detail-album-right">
		<div class="detail-album-song">
			<div class="title">Tracklist</div>
			<div class="content">
				<div class="track-table">
				</div>
			</div>
		</div>
		<div class="detail-song-insert">
		<div class="song-insert">노래 추가 + </div>
		<div class="song-insert-table hide">
			<div class="song-table-tr song-title">
				<div class="song-left">제목</div>
				<div class="song-right">
					<input type="text" name="s_title" class="song-title" id="s_title" style="width:100%; background:none;outline: none; border:none;border-bottom:1px solid #4c4c4c; color:#EDEFF0;">
				</div>
			</div>
			
			<div class="song-table-tr song-producer">
			<table class="table1" width="100%" style="min-width:320px;">
				<tr id="artists">
					<td class="table-left">가수</td>
					<td width="80%" style="text-align:left; height:39px;">
						<div class="og-artist" style="color:#8c8c8c;font-size:1.3em;display:inline-block;">
						</div>
						<span id="artist-change" class="btn artist-change">수정</span>
						<div class="artist-change-menu hide">
						<select name="artist">
							<option selected disabled value="0">선택</option>
							<c:forEach var="ar" items="${ar_vo}">
								<option value="${ar.ar_no}">${ar.ar_name}</option>
							</c:forEach>
						</select>
						<div style="display:inline-block; margin-top:5px;">
						<span id="artist-add" class="btn" style="font-size:1em;height:34px;margin-left:10px;background:#1c1c1c;border:1px solid #4c4c4c;color:#8c8c8c;">+</span>
						<span id="artist-remove" class="btn" style="font-size:1em;width:34px;margin-left:10px;background:#1c1c1c;border:1px solid #4c4c4c;color:#8c8c8c;">-</span>
						</div>
						</div>
					</td>
				</tr>
			</table>
			<table class="table2" width="100%" style="min-width:320px;">
				<tr id="artists">
					<td class="table-left">Prod.</td>
					<td width="80%" style="text-align:left;">
						<div class="album-insert-artist">
						
						<div style="display:inline-block; margin-top:5px;">
						<span id="producer-add" class="btn" style="font-size:1em;height:34px;margin-left:10px;background:#1c1c1c;border:1px solid #4c4c4c;color:#8c8c8c;">+</span>
						<span id="producer-remove" class="btn" style="font-size:1em;width:34px;margin-left:10px;background:#1c1c1c;border:1px solid #4c4c4c;color:#8c8c8c;">-</span>
						</div>
						<div style="display:inline-block; text-align:right; margin-left:2em; color:#8c8c8c;">
							<input type="checkbox"  class="etc-input">  직접 입력
						</div>
						</div>
					</td>
				</tr>
			</table>
			<div class="song-etc hide" style="height:1.4em;margin-top:0.8em; margin-bottom:1.5em;">
				<div class="song-left"></div>
				<div class="song-right">
					<input type="text" name="etc" id="song-etc" width="2" style="margin-left:1%;">	
				</div>
			</div>
			<table class="table3" width="100%" style="min-width:320px;">
				<tr id="artists">
					<td class="table-left">Feat.</td>
					<td width="80%" style="text-align:left;">
						<div class="og-feat" style="color:#8c8c8c;font-size:1.3em;display:inline-block;">없음
						</div>
						<span id="feat-change" class="btn feat-change">수정</span>
						<div class="feat-change-menu hide">
						<select name="feat">
							<option selected disabled value="0">선택</option>
							<c:forEach var="ar" items="${ar_vo}">
								<option value="${ar.ar_no}">${ar.ar_name}</option>
							</c:forEach>
						</select>
						<div style="display:inline-block; margin-top:5px;">
						<span id="feat-add" class="btn" style="font-size:1em;height:34px;margin-left:10px;background:#1c1c1c;border:1px solid #4c4c4c;color:#8c8c8c;">+</span>
						<span id="feat-remove" class="btn" style="font-size:1em;width:34px;margin-left:10px;background:#1c1c1c;border:1px solid #4c4c4c;color:#8c8c8c;">-</span>
						</div>
						<div style="display:inline-block; text-align:right; margin-left:2em; color:#8c8c8c;">
							<input type="checkbox"  class="etc-input2">  직접 입력
						</div>
						</div>
					</td>
				</tr>
			</table>
			<div class="song-etc2 hide" style="height:1.4em;margin-top:0.8em;">
				<div class="song-left"></div>
				<div class="song-right">
					<input type="text" name="etc" id="song-etc2" width="2" style="margin-left:1%;">	
				</div>
			</div>
			</div>
			<div class="song-table-tr song-lyrics">
				<div class="song-left">가사</div>
				<div class="song-right">
					<jsp:include page="/WEB-INF/views/daumOpenEditor/editor_frame_simple.jsp"></jsp:include> 
				</div>
			</div>
			<div class="song-table-tr song-title">
				<div class="song-left">발매일</div>
				<div class="song-right">
					<input type="text" name="release_date" readonly="readonly" id="datepicker" placeholder="날짜를 입력하세요." value="${r_date }">
				</div>
			</div>
			<div class="song-table-tr song-title">
				<div class="song-left">파일</div>
				<div class="song-right">
					<div class="profile-input-attach">
						<input type="text" readonly="readonly" title="File Route" id="file_route" placeholder="파일을 등록해주세요.">
						<label>
		      				<input type='file' class="filestyle" id="file-upload" name="s_file" accept="audio/*" data-type="audio"/>
		      				+
						</label>
					</div>
				</div>
			</div>
			<div class="song-table-tr song-title" align="center">
				<div class="song-submit">등록</div>
			</div>
		</div>
		</div>
</div>
</div>
</form>
<script type="text/javascript">
	var config = {
		txHost: '', /* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) http://xxx.xxx.com */
		txPath: '', /* 런타임 시 리소스들을 로딩할 때 필요한 부분으로, 경로가 변경되면 이 부분 수정이 필요. ex) /xxx/xxx/ */
		txService: 'sample', /* 수정필요없음. */
		txProject: 'sample', /* 수정필요없음. 프로젝트가 여러개일 경우만 수정한다. */
		initializedId: "", /* 대부분의 경우에 빈문자열 */
		wrapper: "tx_trex_container", /* 에디터를 둘러싸고 있는 레이어 이름(에디터 컨테이너) */
		form: 'tx_editor_form'+"", /* 등록하기 위한 Form 이름 */
		txIconPath: "${pageContext.request.contextPath}/resources/daumOpenEditor/images/icon/editor/", /*에디터에 사용되는 이미지 디렉터리, 필요에 따라 수정한다. */
		txDecoPath: "${pageContext.request.contextPath}/resources/daumOpenEditor/images/deco/contents/", /*본문에 사용되는 이미지 디렉터리, 서비스에서 사용할 때는 완성된 컨텐츠로 배포되기 위해 절대경로로 수정한다. */
		
		canvas: {
            exitEditor:{
                /*
                desc:'빠져 나오시려면 shift+b를 누르세요.',
                hotKey: {
                    shiftKey:true,
                    keyCode:66
                },
                nextElement: document.getElementsByTagName('button')[0]
                */
            },
			styles: {
				color: "#123456", /* 기본 글자색 */
				fontFamily: "굴림", /* 기본 글자체 */
				fontSize: "10pt", /* 기본 글자크기 */
				backgroundColor: "#fff", /*기본 배경색 */
				lineHeight: "1.5", /*기본 줄간격 */
				padding: "8px" /* 위지윅 영역의 여백 */
			},
			initHeight:250,
			showGuideArea: false
		},
		events: {
			preventUnload: false
		},
		sidebar: {
			attachbox: {
				show: true,
				confirmForDeleteAll: true
			},
			attacher:{image:{
				features:{left:250,top:65,width:400,height:190,scrollbars:0},
				popPageUrl:'${pageContext.request.contextPath}/daumOpenEditor/imagePopup'
			}},
			capacity:{ maximum : 1024*1024*1024}
		},
		size: {
			contentWidth: 2048 /* 지정된 본문영역의 넓이가 있을 경우에 설정 */
		}
	};

	EditorJSLoader.ready(function(Editor) {
		var editor = new Editor(config);
	});
	
</script>
<script type="text/javascript">
	/* 예제용 함수 */
	function saveContent() {
		Editor.save(); // 이 함수를 호출하여 글을 등록하면 된다.
	}

	/**
	 * Editor.save()를 호출한 경우 데이터가 유효한지 검사하기 위해 부르는 콜백함수로
	 * 상황에 맞게 수정하여 사용한다.
	 * 모든 데이터가 유효할 경우에 true를 리턴한다.
	 * @function
	 * @param {Object} editor - 에디터에서 넘겨주는 editor 객체
	 * @returns {Boolean} 모든 데이터가 유효할 경우에 true
	 */
	function validForm(editor) {
		// Place your validation logic here

		// sample : validate that content exists
		var validator = new Trex.Validator();
		var content = editor.getContent();
		
		var cnt=0;

		

		function checkDupl(){
			var temp = [];
			var obj = $("select[name=ar_no]");
			
			var res = false;
			
			$(obj).each(function(i){
				temp[i] = $(this).val();
			});
			
			$(temp).each(function(i){
				var x = 0;
				
				$(obj).each(function(){
					if(temp[i] == $(this).val()){
						x++;
					}
				});
				
				if(x > 1){
					res = true;
					return false;
				}
			});

			return res;
		}
		
		
		if($("#title").val() == ""){
			alert("타이틀을 입력하세요!");
			return;
		}else if(cnt != $("select[name=ar_no]").length){
			alert("아티스트를 입력해주세요!");
			return;
		}else if(checkDupl() == true){
			alert("아티스트가 중복됩니다!");
			return;
		}else if($("#genre:checked").length == 0){
			alert("장르를 지정해주세요!");
			return;
		}else if (!validator.exists(content)) {
			alert('내용을 입력하세요!');
			return false;
		}else if($("#profile-img").attr("chk") == "no"){
			alert("프로필 이미지를 지정해주세요!");
			return;
		}
		
		return true;
	}

	/**
	 * Editor.save()를 호출한 경우 validForm callback 이 수행된 이후
	 * 실제 form submit을 위해 form 필드를 생성, 변경하기 위해 부르는 콜백함수로
	 * 각자 상황에 맞게 적절히 응용하여 사용한다.
	 * @function
	 * @param {Object} editor - 에디터에서 넘겨주는 editor 객체
	 * @returns {Boolean} 정상적인 경우에 true
	 */
	function setForm(editor) {
        var i, input;
        var form = editor.getForm();
        var content = editor.getContent();

        // 본문 내용을 필드를 생성하여 값을 할당하는 부분
        var textarea = document.createElement('textarea');
        textarea.name = 'content';
        textarea.value = content;
        form.createField(textarea);
		textarea.style.display='none';
        
        /* 아래의 코드는 첨부된 데이터를 필드를 생성하여 값을 할당하는 부분으로 상황에 맞게 수정하여 사용한다.
         첨부된 데이터 중에 주어진 종류(image,file..)에 해당하는 것만 배열로 넘겨준다. */
        var images = editor.getAttachments('image');
        for (i = 0; i < images.length; i++) {
            // existStage는 현재 본문에 존재하는지 여부
            if (images[i].existStage) {
                // data는 팝업에서 execAttach 등을 통해 넘긴 데이터
                alert('attachment information - image[' + i + '] \r\n' + JSON.stringify(images[i].data));
                input = document.createElement('input');
                input.type = 'hidden';
                input.name = 'attach_image';
                input.value = images[i].data.imageurl;  // 예에서는 이미지경로만 받아서 사용
                form.createField(input);
            }
        }

        var files = editor.getAttachments('file');
        for (i = 0; i < files.length; i++) {
            input = document.createElement('input');
            input.type = 'hidden';
            input.name = 'attach_file';
            input.value = files[i].data.attachurl;
            form.createField(input);
        }
        return true;
	}
</script>

<script type="text/javascript">
	function loadContent() {
		var attachments = {};
		attachments['image'] = [];
		attachments['image'].push({
			'attacher': 'image',
			'data': {
				'imageurl': 'http://cfile273.uf.daum.net/image/2064CD374EE1ACCB0F15C8',
				'filename': 'github.gif',
				'filesize': 59501,
				'originalurl': 'http://cfile273.uf.daum.net/original/2064CD374EE1ACCB0F15C8',
				'thumburl': 'http://cfile273.uf.daum.net/P150x100/2064CD374EE1ACCB0F15C8'
			}
		});
		attachments['file'] = [];
		attachments['file'].push({
			'attacher': 'file',
			'data': {
				'attachurl': 'http://cfile297.uf.daum.net/attach/207C8C1B4AA4F5DC01A644',
				'filemime': 'image/gif',
				'filename': 'editor_bi.gif',
				'filesize': 640
			}
		});
		/* 저장된 컨텐츠를 불러오기 위한 함수 호출 */
		Editor.modify({
			"attachments": function () { /* 저장된 첨부가 있을 경우 배열로 넘김, 위의 부분을 수정하고 아래 부분은 수정없이 사용 */
				var allattachments = [];
				for (var i in attachments) {
					allattachments = allattachments.concat(attachments[i]);
				}
				return allattachments;
			}(),
			"content": document.getElementById("sample_contents_source") /* 내용 문자열, 주어진 필드(textarea) 엘리먼트 */
		});
	}
</script>
</body>
</html>