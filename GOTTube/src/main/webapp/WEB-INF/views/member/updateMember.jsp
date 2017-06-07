<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
body{
	background:#fefefe;
	overflow-x:hidden;
}
input:-ms-input-placeholder { color: black; font-family:'Noto Sans Kr';}
input::-webkit-input-placeholder { color: black; font-family:'Noto Sans Kr';}
input::-moz-placeholder { color: black; font-family:'Noto Sans Kr';}
input::-moz-placeholder { color: black; font-family:'Noto Sans Kr';}
input[type="text"]:read-only
{
    background: white;
    cursor:default;
}
.join-body{
	width:1000px;
	min-height:100%;
	height:auto;
	position:relative;
}
.join-title{
	background-image:url("resources/upload/wallpaper.png");
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
.join-title .title{
	display:table-cell;
	align-items:center;
	position:relative;
	height:auto;
	color:#fefefe;
	font-family:'Open Sans';
	vertical-align:middle;
	font-size:3em;
}
.join-body{
	display:block;
	width:100%;
	height:auto;
	position:relative;
}
.join-body .join-block{
	width:1000px;
	margin:auto;
	height:auto;
	position:relative;
	display:block;
	margin-top:3%;
}
.join-body .join-td{
	width:450px;
	margin:auto;
}
.join-body .join-body-top{

	border-bottom:1px solid #e8e8e8;
}
.join-body .join-body-middle{
	margin-top:4%;
	padding-bottom:3%;
	border-bottom:1px solid #e8e8e8;
}
.join-body .join-body-bottom{
	padding-bottom:5%;
	
}
.join-body .join-block input[type='text']{
	width:100%;
	margin-bottom:3%;
	padding-left:1.2em;
	font-size:1em;
	box-shadow:none;
	border:1px solid #ddd;
}
.join-body .join-block input[type='text']:focus{
	outline:3px solid #5bc0de;
}
.join-body .join-block input[type='password']{
	width:100%;
	margin-bottom:3%;
	padding-left:1.2em;
	font-size:1em;
	box-shadow:none;
	border:1px solid #ddd;
	color:black;
}
.join-body .join-block input[type='password']:focus{
	outline:3px solid #5bc0de;
}
.id-chk{
 	font-size:1em;
 	background:#fefefe;
 	color:#428bca;
 	font-family:'Noto Sans Kr';
 	font-weight: bold;
 	position:table-cell;
 	vertical-align:middle;
 	margin-left:2em;
}
.id-chk:hover{
	cursor:pointer;
	text-decoration: underline;
}
.valid-chk{
	width:100%;
	height:3em;
	display:table-cell;
	padding-top:0.5em;
	font-size:0.7em;
	font-family:'Noto Sans Kr';
	color:#888;
}
#post-chk{
	width:10%;
	display:inline-block; 
	margin-left:1em;
	padding:0; 
	background:#fefefe;
 	border:none;
 	color:#428bca;
 	font-family:'Noto Sans Kr';
 	font-weight: bold;
 	box-shadow:none;
}
#post-chk:hover{
	cursor:pointer;
	text-decoration: underline;
}
#join-submit{
	font-size:1em;
	display:inline-block;
	font-family:'Noto Sans Kr';
 	font-weight: bold;
 	bolder:none;
 	background:none;
 	outline:none;
 	color:#428bca;
 	box-shadow:none;
 	-webkit-apperance:none;
}
#join-submit:hover{
	text-decoration:underline;
	cursor:pointer;
}
/* .join-btn:hover,:CHECKED,:active{ */
/*  	color:#428bca;  */
/*  	cursor:pointer; */
/*  	text-decoration: underline;  */
/* } */
.join-link{
	font-family:'Noto Sans Kr';
}
.join-body-middle2{
	padding-top:0;
	border-bottom:1px solid #e8e8e8;
}
.profile-upload-title{
	font-family:'Noto Sans Kr';
	margin-top:3%;
}
.profile-upload-btn{
	width:15em;
	height:6em;
	display:block;
	position:relative;
	margin-top:4em;
	padding-top:1em;
	text-align:center;
}
#profile-upload-btn{
	font-size:1em;
 	background:#fefefe;
 	color:#428bca;
 	font-family:'Noto Sans Kr';
 	font-weight: bold;
 	position:table-cell;
 	vertical-align:middle;
}
#profile-upload-btn:hover{
	cursor:pointer;
	text-decoration:underline;
}
.profile-preview{
	width:15em;
	height:15em;
	display:block;
	position:relative;
	margin:auto;
}
</style>

<script type="text/javascript">
$(function(){

	var pwd_checked = 0;
	var email_checked = 0;

	var cnt = 0;
	var winRef;
	name_split();
	email_split();
	
	$("#join-submit").click(function(){
		cnt = 0;
		join_form_chk();
		pwd_chk();
		email_chk();

		if(cnt == 9 && pwd_checked == 1 && email_checked == 1){
			update_member();
		}
	});
	
	$("#id-chk").click(function(){
		id_chk($("#m_id").val());

	});
	$(".pwd-form").click(function(){
		if($(this).val().length > 0){
			$(this).val("");
		}
	})
	$("#m_id").change(function(){
		id_checked = 0;
	})
	$(".pwd-form").change(function(){
		pwd_checked = 0;
	})
	$("#email").change(function(){
		email_checked = 0;
	})
	
	function name_split(){
		var name = $("#original-name").val().split(" ");
		var first = $("#first-name");
		var last = $("#last-name");
		
		$(name).each(function(index,data){
			if(index == 0){
				$(last).val(data);
			}else{
				$(first).val(data);
			}
		})
	}
	
	function email_split(){
		var addr = $("#original-addr").val().split("/");

		var postcode = $("#postcode");
		var addr1 = $("#addr1");
		var addr2 = $("#addr2");
		
	
		$(addr).each(function(index,data){
			if(index == 0){
				$(postcode).val(data);
			}else if(index == 1){
				$(addr1).val(data);
			}else{
				$(addr2).val(data);
			}
		})	
	}
	function popupOpen(data){
		var popUrl = "${pageContext.request.contextPath}/imageCrop.do?q="+data;
		var popOption = "left="+(screen.availWidth-450)/2+",top="+(screen.availHeight-500)/2+",width=450,height=500,resizable=no,scrollbars=no;";	
		
	
		if(winRef == null){
			winRef = window.open(popUrl,"",popOption);
		}else{
			if(winRef.closed == false){
				winRef.focus();
			}else{
				winRef = window.open(popUrl,"",popOption);
			}
		}

	}

	
	
	$("#profile-upload-btn").click(function(){
		popupOpen("member-profile");
	});
	function update_member(){
		$("#join-form").submit();
	}

	function pwd_chk(){
		var pwd = $("#pwd").val();
		var repwd = $("#re-pwd").val();
		if($(pwd)== ""){
			$(".pwd-valid").html("암호를 입력해주세요.");
			$(".pwd-form").css("background","#faffbd");
			pwd_checked = 0;
		}else{
			if(pwd == repwd){
				if((pwd.length > 0 && pwd.length < 7) || pwd.length > 12){
					$(".pwd-valid").html("암호는 7자 이상 12자 이하이어야 합니다.");
					$(".pwd-form").css("background","#faffbd");
					pwd_checked = 0;
				}else if(pwd.length == 0){
					$(".pwd-valid").html("암호를 입력해주세요.");
					$(".pwd-form").css("background","#faffbd");
					pwd_checked = 0;
				}else{
					$(".pwd-valid").html("");
					$(".pwd-form").css("background","#fefefe");
					pwd_checked = 1;
					return 1;
				}
			}else{
				$(".pwd-valid").html("암호가 일치하지 않습니다.");
				$(".pwd-form").css("background","#faffbd");
				pwd_checked = 0;
				return 0;
			}
		}
		
	}
	function email_chk(){
		var regExp = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i; 
		if( !$("#email").val() ){ 
		  $(".email-valid").html("이메일주소를 입력 해 주세요"); 
		  email_checked = 0; 
		  return false; 
		} else { 
		   if(!regExp.test($("#email").val())) { 
		      $(".email-valid").html("이메일 주소가 유효하지 않습니다"); 
		      email_checked = 0;
		      return false; 
		   }else{
			   $(".email-valid").html(""); 
			   email_checked = 1;
			   return false;
		   }
		} 

	}
	function join_form_chk(){
		$(".join-form").each(function(index,data){
			if($(this).val().length == 0){
				$(this).css({"background":"#faffbd"});
				$(this).click(function(){
					$(this).css("background","#fefefe");
				});
			}else{
				$(this).css("background","#fefefe");
				cnt++;
			}
	
			if(email_checked == 0){
				$("#email").css("background","#faffbd");
			}
		})
	}
	
		
	
});
</script>
</head>
<body>
<div class="join-body">
	<div class="join-title">
		<div class="overlay"></div>
		<div class="title">
		<span style="font-size:0.95em;">회원 정보 수정</span>
		</div>
	</div>
	<div class="join-body">
	<form action="updateMember.do" method="post" id="join-form">
		<div class="join-body-top join-block">
			<div class="join-td" style="text-align:center;margin-bottom:2%;">
				<span style="font-family:'Noto Sans Kr'">아래의 항목을 작성해주세요.</span><br>
				<input type="hidden" value="${vo.m_id }" name="m_id">
			</div>
			<div class="join-td">
				<input id="pwd" value="${vo.pwd }" type="password" name="pwd" placeholder="암호" class="form-control pwd-form join-form">
			</div>
			<div class="join-td" style="padding-bottom:2%;">
				<input id="re-pwd" type="password" placeholder="암호 확인" class="form-control pwd-form join-form" style="margin-bottom:0;">
				<span class="valid-chk pwd-valid"></span>
			</div>
		</div>
		<div class="join-body-middle join-block">
			<div class="join-td">
				<input type="hidden" id="original-name" name="original-name" value="${vo.m_name }">
				<input type="text" id="last-name" name="last-name" style="width:48.5%;display:inline;" placeholder="성" class="form-control join-form">
				<input type="text" id="first-name" name="first-name" style="width:48.5%;float:right;display:inline;" placeholder="이름" class="form-control join-form">
			</div>
			<div class="join-td">
				<input type="text" value="${vo.phone }" name="phone" placeholder="전화번호" class="form-control join-form" style='ime-mode:disabled;' onkeydown='return onlyNumber(event)' onkeyup='removeChar(event)'/>
			</div>
			<script type="text/javascript">
			function onlyNumber(event){
				event = event || window.event;
				var keyID = (event.which) ? event.which : event.keyCode;
				if ( (keyID >= 48 && keyID <= 57) || (keyID >= 96 && keyID <= 105) || keyID == 8 || keyID == 9 || keyID == 46 || keyID == 37 || keyID == 39 ) 
					return;
				else
					return false;
			}
			function removeChar(event) {
				event = event || window.event;
				var keyID = (event.which) ? event.which : event.keyCode;
				if ( keyID == 8 || keyID == 46 || keyID == 37 || keyID == 39 ) 
					return;
				else
					event.target.value = event.target.value.replace(/[^0-9]/g, "");
			}
			</script>
			<div class="join-td">
				<input id="email" value="${vo.email }" type="text" name="email" placeholder="e-mail" style="margin-bottom:0;" class="form-control join-form">
				<span class="valid-chk email-valid"></span>
			</div>
			<div class="join-td">
				<input type="hidden" id="original-addr" name="orginal-addr" value="${vo.addr }">
				<input type="text" id="postcode" readonly="readonly" name="postcode" style="width:30%; display:inline-block;" placeholder="우편번호" class="form-control join-form">
				<span id="post-chk" onclick="execDaumPostcode()" class="form-control">검색 <span class="glyphicon glyphicon-search"></span></span>
				<input type="text" id="addr1" readonly name="addr1" style="width:100%; display:inline-block;" placeholder="주소" class="form-control join-form">
				<input type="text" id="addr2" name="addr2" style="width:100%; display:inline-block;" placeholder="상세주소" class="form-control join-form">
			</div>
			<script>
			    function execDaumPostcode() {
			        new daum.Postcode({
			            oncomplete: function(data) {
			                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
			
			                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
			                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
			                var fullAddr = ''; // 최종 주소 변수
			                var extraAddr = ''; // 조합형 주소 변수
			
			                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
			                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
			                    fullAddr = data.roadAddress;
			
			                } else { // 사용자가 지번 주소를 선택했을 경우(J)
			                    fullAddr = data.jibunAddress;
			                }
			
			                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
			                if(data.userSelectedType === 'R'){
			                    //법정동명이 있을 경우 추가한다.
			                    if(data.bname !== ''){
			                        extraAddr += data.bname;
			                    }
			                    // 건물명이 있을 경우 추가한다.
			                    if(data.buildingName !== ''){
			                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
			                    }
			                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
			                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
			                }
			
			                // 우편번호와 주소 정보를 해당 필드에 넣는다.
			                $("#postcode").val(data.zonecode);//5자리 새우편번호 사용
			                $("#addr1").val(fullAddr);
			
			                // 커서를 상세주소 필드로 이동한다.
			                $("#addr2").focus();
			            }
			        }).open();
			    }
			</script>
		</div>
		<div class="join-body-middle2 join-block" align="center">
			<div class="join-td">
				<div class="profile-upload-title">
					프로필 사진을 업로드 해주세요.
				</div>
				<div class="profile-preview">
					<input type="hidden" value="${vo.profile }" name="original-profile">
					<img src="${vo.profile }" width="100%" height="100%" id="profile-img" style="margin-top:30px;" chk="no"/>
					<input type="hidden" value="${vo.profile }" name="profile" id="profile-val"/>
				</div>
				<div class="profile-upload-btn">
					<span id="profile-upload-btn">
						사진 추가
					</span>
				</div>
				</div>
			</div>
		<div class="join-body-bottom join-block">
			
			<div align="center" style="margin-top:4em;"><span class="join-btn" id="join-submit">계속</span></div>
		</div>
	</form>
	</div>
</div>
</body>
</html>