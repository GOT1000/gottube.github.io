<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
body{
	background:#fefefe;
}
.myPage-title{
	background-image:url("resources/upload/wallpaper2.jpg");
	background-size:cover;
	background-position:center;
	height:13em;
	width:100%;
	text-align:center;
	position:relative;
	display:table;
	font-family:'Noto Sans Kr';
	font-weight:bold;
}
.overlay{
	display:inline-block;
	position:absolute;
	width:100%;
	height:100%;
	left:0;
	top:0;
	background-color:rgba(0,0,0,0.5);
	overflow-x:hidden;
}
.myPage-title .title{
	display:table-cell;
	align-items:center;
	position:relative;
	height:auto;
	color:#fefefe;
	font-family:'Whitney';
	vertical-align:middle;
	font-size:3em;
}
.myPage-body{
	width:1000px;
	min-height:100%;
	height:auto;
	position:relative;
	margin:auto;
}
.myPage-body .myPage-menu{
	width:100%;
	height:5em;
	position:relative;
	display:block;
	border-bottom:1px solid #ddd;
	margin:auto;
}
.myPage-body .myPage-menu .myPage-menu-block{
	height:auto;
	margin-top:2em;
	margin-left:3em;
	margin-right:3em;
	display:inline-block;
	position:relative;
	font-family:'Noto Sans Kr';
	font-size:1.2em;
	color:#aaa;
}
.checked{
	color:#5bc0de;
}
.hide{
	display:none;
}
.myPage-body .myPage-menu .myPage-menu-block:hover{
	cursor:pointer;
	color:#333;
}
.myPage-body .myPage-page{
	width:100%;
	height:auto;
	position:relative;
	display:block;
	margin-bottom:2em;
}
/* //=============myInfo======================= */
.myPage-body .myPage-page .myInfo-page{
	width:100%;
	height:auto;
	position:relative;
	display:block;
}
.myInfo-page .title{
	width:100%;
	height:15em;
	display:block;
	position:relative;
	padding:1em;
}
.myInfo-page .title .table{
	width:800px;
	height:15em;
	display:block;
	position:relative;
	margin:auto;
}
.myInfo-page .title .profile{
	width:9em;
	height:9em;
	background-size:cover;
	padding:1em;
	border-radius:50%;
	position:absolute;
	font-family:'Noto Sans Kr';
	top:19%;
	left:7%;
}
.myInfo-page .title .main-block{
	width:9em;
	height:9em;
	border-right:1px solid #ddd;
	position:absolute;
	top:19%;
	left:24%;
}
.myInfo-page .title .main-block .name{
	position:relative;
	display:block;
	font-size:1.2em;
	margin-top:30%;
}
.myInfo-page .title .main-block .id,.level{
	position:relative;
	display:block;
	font-size:0.8em;
}
.myInfo-page .title .main-block .id{
	color:#999;
}
.myInfo-page .title .main-block .level{
	margin-top:1%;
}
.myInfo-page .title .info-block{
	width:30em;
	height:12em;
	position:absolute;
	top:0%;
	left:38%;
	padding:1em;
	padding-top:2.7em;
}
.myInfo-page .title .info-block .td{
	width:100%;
	height:auto;
	position:relative;
	border-bottom:1px solid #ddd;
	margin-left:2em;
	padding-top:0.5em;
	padding-bottom:0.5em;
}
.myInfo-page .title .info-block .td .idx{

}
.myInfo-page .body{
	width:100%;
	height:auto;
	display:block;
	position:relative;
}
.myInfo-page .body .myBoard-body{
	width:800px;
	height:auto;
	display:block;
	position:relative;
	margin:auto;
}
.myInfo-page .body .myBoard-body .myBoard-title{
	width:100%;
	height:3em;
	display:inline-block;
	position:relative;
	border-collapse:collapse;
}
.myInfo-page .body .myBoard-body .myPost,.myComments{
	width:50%;
	height:100%;
	position:relative;
	display:inline-block;
	border-collapse:collapse;
}
.tab-content{

}
.nav-tabs>li.active>a, .nav-tabs>li.active>a:focus, .nav-tabs>li.active>a:hover {
    color: #333;
    cursor: default;
    opacity:0.8;
    border: 1px solid #ddd;
    border-bottom-color: white;
}
.nav-tabs>li>a {
    margin-right: 5px;
    line-height: normal;
    background-color:#333;
    border: none;
    border-radius: 4px 4px 0 0;
}
.nav a, .nav label {
    display: block;
    padding: .85rem;
    color: #fff;
    background-color: #fff;
    box-shadow: none;
    -webkit-transition: all .25s ease-in;
    transition: all .25s ease-in;
}
.myInfo-page .body{
	margin-top:3em;
}
.myBoard-body{
	width:100%;
	height:100%;
	display:inline-block;
	position:relative;
	margin-bottom:2em;
}
.myComments-table{
	margin-top:1em;
	margin-bottom:1em;
}
.myComments-table th{
	text-align:center;
	font-weight:bold;
}
.myComments-btn{
	width:100%;
	height:3em;
	color:#666;
	font-size:1em;
}
.myComments-btn .prev,.next:hover{
	cursor:pointer;
}
.myComments-btn .prev,.next{
	display:inline-block;
	position:relative;
}
.myComments-btn .prev{
	float:left;
}
.myComments-btn .next{
	float:right;
}
.myComments-above{
	margin-top:3em;
	padding:1em;
}
.comments-count{
	display:inline-block;
	float:left;
}
.comments-order{
	display:inline-block;
	float:right;
}
.myMusic-table{
	margin-top:1em;
	margin-bottom:1em;
}
.myMusic-above{
	margin-top:3em;
	padding:1em;
}
.music-count{
	display:inline-block;
	float:left;
}
.music-order{
	display:inline-block;
	float:right;
}
.myMusic-table th{
	text-align:center;
	font-weight:bold;
}
.myMusic-btn{
	width:100%;
	height:3em;
	color:#666;
	font-size:1em;
}
.myMusic-btn .prev,.next:hover{
	cursor:pointer;
}
.myMusic-btn .prev,.next{
	display:inline-block;
	position:relative;
}
.myMusic-btn .prev{
	float:left;
}
.myMusic-btn .next{
	float:right;
}
.update-title{
	text-align:center;
	margin-top:4em;
	width:100%;
}
.update-body{
	width:100%;
	margin-top:2em;
	text-align:center;
	min-height:15em;
}
#update-pwd{
	width:12em;
	height:1.5em;
	color:black;
	border:1px solid  #ddd;
}
.update-body .submit-btn{
	margin-top:2em;
	font-family:'Noto Sans Kr';
	font-weight:bold;
	color:#428bca;
}
.update-body .submit-btn #update-submit:hover{
	cursor:pointer;
}
/* //============================================ */
</style>
<script type="text/javascript">
$(function(){
	var m_no = $("#session_m_no").val();
	var c_page_no = 1;
	var m_page_no = 1;
	var keyField = 'upload_time';
	var m_keyField = 'release_date';
	var comments_count = 0;
	var music_count = 0;
	countMyComments();
	load_member_info();
	load_myComments();
	countMyMusic();
	load_myMusic();
	$('#boardTab a').click(function (e) {
		  e.preventDefault()
		  $(this).tab('show')
	})
	$("#update-link").click(function(){
		$("#update-pwd").val("");
	})
	$("#comments-order").change(function(){
		keyField = $(this).val();
		c_page_no = 1;
		load_myComments();
	})
	$("#music-order").change(function(){
		m_keyField = $(this).val();
		m_page_no = 1;
		load_myMusic();
	})
	$("#update-submit").click(function(){
		if($("#update-pwd").val() != ''){
			update_pwd_chk();
		}else{
			alert("비밀번호를 입력해주세요!");
		}
		
	})
	function load_member_info(){
		if(m_no != "" && m_no != null){
			$.ajax({
				url:"detailMember.do",
				dataType:'json',
				method:'post',
				async:false,
				processData:false,
				contentType:false,
				success:function(data){
					$.each(data,function(key,value){
						if(key == 'profile'){
							$(".myInfo-page .profile").css("background-image","url('"+value+"')");
							
						}else if(key == 'm_id'){
							$(".myInfo-page .main-block .id").append(value);
						}else if(key == 'm_name'){
							var name_span = $("<span></span>").css("font-weight","bold");
							$(name_span).append(value);
							$(".myInfo-page .main-block .name").append(name_span,"님");
						}else if(key == 'm_level'){
							if(value == '0'){
								$(".myInfo-page .main-block .level").append("관리자");
								$(".myInfo-page .main-block .level").css("color","gold");
							}else if(value == '1'){
								$(".myInfo-page .main-block .level").append("일반회원");
								$(".myInfo-page .main-block .level").css("color","#428bca");
							}
						}else if(key == 'phone'){
							$(".myInfo-page .info-block .phone").append(" ",value);
						}else if(key == 'email'){
							$(".myInfo-page .info-block .email").append(" ",value);
						}else if(key == 'addr'){
							$(".myInfo-page .info-block .addr").append(" ",value);
						}else if(key == 'join_time'){
							$(".myInfo-page .info-block .join-time").append(" ",moment(value).format('YYYY-MM-DD'));
						}
					})
				}
			})
		}
	}
	function load_myComments(){
		if(m_no != "" && m_no != null){
			var m_form = new FormData();
			m_form.append("page_no",c_page_no);
			m_form.append("keyField",keyField);
			
			$.ajax({
				url:"myComments.do",
				data:m_form,
				dataType:'json',
				method:'post',
				async:false,
				processData:false,
				contentType:false,
				success:function(data){
					var arr = data;
					var body = $("#myComments");
					var table = $(".myComments-table");
					var btn_box = $("<div></div>").attr("class","myComments-btn");
					var prev =  $("<div></div>").attr("class","prev").html("이전");
					var next =  $("<div></div>").attr("class","next").html("다음");
					
					$(".comments-tr").remove();
					$(arr).each(function(index,data){
						var tr = $("<tr></tr>");
						$(tr).attr("class","comments-tr");
						var title = $("<td></td>").html("<a href='detailNews.do?b_no="+data.b_no+"'>"+data.title+"</a>");
						var	content = $("<td></td>").append(data.content);
						var rating = $("<td></td>").append(data.rating);
						var upload_time = $("<td></td>").append(moment(data.upload_time).format('YYYY-MM-DD | hh:mm A'));
						
						$(rating).css("text-align","center");
						$(upload_time).css("text-align","center");
						
						$(tr).append(title,content,rating,upload_time);
						$(table).append(tr);
						$(".myComments-table td").css("vertical-align","middle");
					})
					
					if(c_page_no != 1){
						$(btn_box).append(prev);	
					}
					if(c_page_no*5 < comments_count){
						$(btn_box).append(next);
					}
					$("#myComments .myComments-btn").remove();
					$(body).append(btn_box);
					$(prev).click(function(){
						c_page_no--;
						load_myComments();
					})
					$(next).click(function(){
						c_page_no++;
						load_myComments();
					})
				}
			})
		}
	
	}
	function countMyComments(){
		if(m_no != "" && m_no != null){
			var m_form = new FormData();
			m_form.append("m_no",m_no);
			$.ajax({
				url:"countMyComments.do",
				data:m_form,
				dataType:'json',
				method:'post',
				async:false,
				processData:false,
				contentType:false,
				success:function(data){
					$(".comments-count").empty();
					var cnt = $("<strong></strong>").append(eval("("+data+")"));
					$(".comments-count").append("총 ",cnt,"개의 댓글을 작성했습니다.");
					comments_count = eval("("+data+")");
				}
			})
		}
	
	}
	function load_myMusic(){
		if(m_no != "" && m_no != null){
			var m_form = new FormData();
			m_form.append("page_no",m_page_no);
			m_form.append("keyField",m_keyField);
			
			$.ajax({
				url:"myMusic.do",
				data:m_form,
				dataType:'json',
				method:'post',
				async:false,
				processData:false,
				contentType:false,
				success:function(data){
					
					var arr = data;
					var body = $("#myMusic");
					var table = $(".myMusic-table");
					var btn_box = $("<div></div>").attr("class","myMusic-btn");
					var prev =  $("<div></div>").attr("class","prev").html("이전");
					var next =  $("<div></div>").attr("class","next").html("다음");
					
					$(".music-tr").remove();
					$(arr).each(function(index,data){
						var tr = $("<tr></tr>");
						$(tr).attr("class","music-tr");
						var cover = $("<div></div>").css({"background-image":"url('"+data.a_img+"')","background-size":"cover","width":"5em","height":"5em"});
						var cover_td = $("<td></td>").append(cover);
						var title = $("<td></td>").html("<a href='detailSong.do?s_no="+data.s_no+"&hitAdd=true'>"+data.s_title+"</a>");
						var	artist = $("<td></td>").attr("align","center").append(data.a_name);
						var hit = $("<td></td>").attr("align","center").append(data.hit);
						var rating = $("<td></td>").attr("align","center").append(data.rating);
						var release_date = $("<td></td>").attr("align","center").append(moment(data.release_date).format('YYYY-MM-DD'));
						
						
						
						$(rating).css("text-align","center");
						$(release_date).css("text-align","center");
						
						$(tr).append(cover_td,title,artist,hit,rating,release_date);
						$(table).append(tr);
						
						$(".myMusic-table td").css("vertical-align","middle");
					})
					
					if(m_page_no != 1){
						$(btn_box).append(prev);	
					}
					if(m_page_no*5 < music_count){
						$(btn_box).append(next);
					}
					$("#myMusic .myMusic-btn").remove();
					$(body).append(btn_box);
					$(prev).click(function(){
						m_page_no--;
						load_myMusic();
					})
					$(next).click(function(){
						m_page_no++;
						load_myMusic();
					})
				}
			})
		}
	
	}
	function countMyMusic(){
		if(m_no != "" && m_no != null){
			var m_form = new FormData();
			m_form.append("m_no",m_no);
			$.ajax({
				url:"countMyMusic.do",
				data:m_form,
				dataType:'json',
				method:'post',
				async:false,
				processData:false,
				contentType:false,
				success:function(data){
					$(".music-count").empty();
					var cnt = $("<strong></strong>").append(eval("("+data+")"));
					$(".music-count").append("총 ",cnt,"개의 노래가 있습니다.");
					music_count = eval("("+data+")");
				}
			})
		}
	
	}
	function update_pwd_chk(){
		if(m_no != "" && m_no != null){
			var m_form = new FormData();
			var m_id = $("#session_m_id").val();
			m_form.append("m_id",m_id);
			m_form.append("pwd",$("#update-pwd").val());
			$.ajax({
				url:"memberPwdChk.do",
				data:m_form,
				dataType:'json',
				method:'post',
				async:false,
				processData:false,
				contentType:false,
				success:function(data){
					var res = eval("("+data+")");
					if(res != 0){
						$(location).attr('href','updateMember.do?m_id='+m_id+'&pwd='+$("#update-pwd").val());
					}else if(res == 0){
						alert("잘못된 비밀번호입니다.");
					}
				}
			})
		}
	}
});
</script>
</head>
<body>
<div class="myPage-title">
		<div class="overlay"></div>
		<div class="title">
		MY PAGE
		</div>
	</div>
<div class="myPage-body">
<!-- 	<div class="myPage-menu" align="center"> -->
<!-- 		<div class="myPage-menu-block info checked">내 정보</div> -->
<!-- 		<div class="myPage-menu-block like">선호하는 음악</div> -->
<!-- 		<div class="myPage-menu-block update">회원 정보 수정</div> -->
<!-- 	</div> -->
	<div class="myPage-page">
		<div class="myInfo-page">
			<div class="title">
				<div class="table">
					<div class="profile"></div>
					<div class="main-block">
						<div class="name"></div>
						<div class="id"></div>
						<div class="level"></div>
					</div>
					<div class="info-block">
						<div class="td">
							<div class="idx phone">phone :</div>
						</div>
						<div class="td">
							<div class="idx email">e-mail :</div>
						</div>
						<div class="td">
							<div class="idx addr">주소 :</div>
						</div>
						<div class="td">
							<div class="idx join-time">가입일 :</div>
						</div>
					</div>
				</div>
			</div>
			<div class="body">
				<div class="myBoard-body">
					  <!-- Nav tabs -->
					  <ul class="nav nav-tabs" role="tablist" id="boardTab">
					    <li role="presentation" class="active"><a id="myComments-link" href="#myComments" aria-controls="myComments" role="tab" data-toggle="tab">내가 쓴 댓글 목록</a></li>
					    <li role="presentation"><a href="#myMusic" aria-controls="myComments" role="tab" data-toggle="tab">선호하는 음악</a></li>
					    <li role="presentation"><a id="update-link" href="#update" aria-controls="myComments" role="tab" data-toggle="tab">회원 정보 수정</a></li>
					  </ul>
					
					  <!-- Tab panes -->
					  <div class="tab-content">
					    <div role="tabpanel" class="tab-pane fade in active" id="myComments">
<!-- 							<div class="myComments-table"> -->
<!-- 								<div class="tr first"> -->
<!-- 									<div class="th title">글 제목</div> -->
<!-- 									<div class="th content">댓글</div> -->
<!-- 									<div class="th rating">추천</div> -->
<!-- 									<div class="th upload-time">등록 시간</div> -->
<!-- 								</div> -->
<!-- 								<div class="tr"> -->
<!-- 									<div class="td title"></div> -->
<!-- 									<div class="td content"></div> -->
<!-- 									<div class="td rating"></div> -->
<!-- 									<div class="td upload-time"></div> -->
<!-- 								</div> -->
<!-- 								<div class="tr"> -->
<!-- 									<div class="td title"></div> -->
<!-- 									<div class="td content"></div> -->
<!-- 									<div class="td rating"></div> -->
<!-- 									<div class="td upload-time"></div> -->
<!-- 								</div> -->
								
<!-- 							</div> -->
							<div class="myComments-above">
								<div class="comments-count"></div>
								<div class="comments-order">
									<select id="comments-order">
										<option selected="selected" value="upload_time">최근 업로드 순</option>
										<option value="rating">인기 순</option>
									</select>
								</div>
							</div>
							
							<table class="table myComments-table">
								<tr>
									<th align="center" width="30%">글 제목</th>
									<th align="center" width="30%">댓글 내용</th>
									<th align="center" width="15%">추천</th>
									<th align="center" width="25%">작성 시간</th>
								</tr>
							</table>
							<div class="myComments-btn">
								<div class="prev">이전</div>
								<div class="next">다음</div>
							</div>
						</div>
					    <div role="tabpanel" class="tab-pane fade" id="myMusic">
					    	<div class="myMusic-above">
					    		<div class="music-count"></div>
								<div class="music-order">
									<select id="music-order">
										<option selected="selected" value="release_date">발매일 순</option>
										<option value="rating">인기 순</option>
										<option value="hit">조회수 순</option>
									</select>
								</div>
							</div>
							<table class="table myMusic-table">
								<tr>
									<th align="center" width="15%"></th>
									<th align="center" width="30%">노래 제목</th>
									<th align="center" width="20%">아티스트</th>
									<th align="center" width="10%">조회수</th>
									<th align="center" width="10%">추천</th>
									<th align="center" width="15%">발매일</th>
								</tr>
							</table>
						</div>
					    <div role="tabpanel" class="tab-pane fade" id="update">
							<div class="update-title">
								본인 확인을 위해 패스워드를 한번 더 입력해주십시오.
							</div>
							<div class="update-body">
								<div class="input-box">
									<input type="password" id="update-pwd">
								</div>
								<div class="submit-btn">
									<span id="update-submit">확인</span>
								</div>
							</div>
						
						</div>
					  </div>
				</div>
			</div>
	</div>
	</div>
</div>
</body>
</html>