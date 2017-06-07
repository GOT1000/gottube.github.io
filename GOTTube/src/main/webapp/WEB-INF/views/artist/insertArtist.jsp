<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/daumOpenEditor/css/editor.css" charset="utf-8" />
<script src="http://jcrop-cdn.tapmodo.com/v2.0.0-RC1/js/Jcrop.js"></script>
<link rel="stylesheet" href="http://jcrop-cdn.tapmodo.com/v2.0.0-RC1/css/Jcrop.css" type="text/css">
<script src="${pageContext.request.contextPath}/resources/daumOpenEditor/js/editor_loader.js" type="text/javascript" charset="utf-8"></script>
<style type="text/css">
body{
	background:#262626;
}
h1{
	color:#EDEFF0;
	margin-top:30px;
}

.artist-insert-body{
	width:98%;
	margin-top:200px;
	margin:auto;
	overflow-x:hidden;
	overflow-y: auto;
}

.artist-insert-table{
	max-width:700px;
}
.artist-insert-title{
	padding:20px;
	min-width:250px;
	text-align:center;
	margin:auto;
}
.artist-insert-box{
	padding-top:70px;
	float:left;
	min-height:580px;
	display:inline-block;
	width:100%;
	height:50%;
}
.artist-insert{
	
}

.artist-insert-table{
	width:100%;
	margin:auto;
}
.table-td{
	font-size:18px;
	padding:6px;
	height: 52px;
	vertical-align: middle;
}
.table-td-preview{
	height:300px;
}
.text-box{
	background: none;
	border: none;
	border-bottom:1px solid;
	border-color: #EDEFF0;
	color:#EDEFF0;
	width:80%;
	margin:5px;
	outline: none;
	margin-left:5%;
}
.artist-preview{
	width:50px;
	height:50px;
	border: 1px solid #EDEFFF0;
	border-radius: 7px;
	-moz-border-radius: 7px;
	-khtml-border-radius: 7px;
	-webkit-border-radius: 7px;
}
.thumb{
	display:block;
	overflow:hidden;
	height:200px;
	width:200px;
	border:1px solid white;
	border-radius:50em;
	vertical-align: center;
	text-align: center;
}
.thumb img{
	display:block;
	min-width:50%;
	min-height:50%;
	-ms-interpolation-mode:bicubic;
}
.btn:HOVER{
	opacity: 0.5;
}
.btn:active,:FOCUS{
	outline-color: orange;
	outline: 1px solid orange;
}
.upload-space{
	width:100%;
	max-width:700px;
	height:300px;
	margin:auto;
}

.upload-space-profile{
	float:left;
	display:inline-block; 
	padding:8px; 
	width:50%;
	min-width:350px; 
	margin:auto;
	text-align:center;
	vertical-align: middle;
}

.upload-space-bg{
	float:right;
	display:inline-block; 
	padding:8px; 
	width:50%;
	min-width:350px; 
	margin:auto;
	text-align:center;
	vertical-align: middle;
}

.profile-preview{
	width:100%;
	height:270px;
	text-align:center;
	vertical-align: middle;
	margin:auto;
}

.bg-preview{
	width:100%;
	height:270px;
	text-align:center;
	vertical-align: middle;
	margin:auto;
}

.button-space{
	width:100%;
	max-width:700px;
	height:200px;
	text-align:center;
	margin:auto;
	margin-top:70px;
	vertical-align:middle;
}

.button-space-insert{
	float:left;
	display:inline-block; 
	padding:8px; 
	width:50%;
	min-width:350px; 
	padding-top:65px;
	margin:auto;
	padding-left:130px;
	vertical-align: middle;
}

.button-space-exit{
	float:right;
	display:inline-block; 
	padding:8px; 
	width:50%;
	min-width:350px; 
	padding-top:65px;
	margin:auto;
	padding-right:130px;
	vertical-align: middle;
}
@media screen and (max-width:700px){
	.upload-space{
		height:700px;
	}
	.upload-space-profile{
		float:left;
		display:inline-block; 
		padding:8px; 
		width:100%;
		min-width:350px; 
		margin:auto;
		text-align:center;
		vertical-align: middle;
	}
	
	.upload-space-bg{
		float:left;
		display:inline-block; 
		padding:8px; 
		margin-bottom:50px;
		width:100%;
		min-width:350px; 
		margin:auto;
		text-align:center;
		vertical-align: middle;
	}
	.button-space{
		margin-top:30px;
	}
	.button-space-insert{
		float:left;
		display:inline-block; 
		padding:8px; 
		width:100%;
		min-width:350px; 
		margin-top:50px;
		margin:auto;
		text-align:center;
		vertical-align: middle;
	}

	.button-space-exit{
		float:left;
		display:inline-block; 
		padding:8px; 
		width:100%;
		min-width:350px; 
		margin:auto;
		text-align:center;
		vertical-align: middle;
	}
}
</style>
<script type="text/javascript">
$(function(){
	var winRef;

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
	function getCropAddr(img){
		alert(img);
	}
	$(".profile-upload").click(function(){
		popupOpen("profile");
	});
	$(".bg-upload").click(function(){
		popupOpen("bg");
	});
});

</script>

<body>
<div class="artist-insert-body">
	<div class="blank" style="height:60px;"></div>
	<div class="artist-insert-title" align="center">
		<h1>아티스트 등록</h1>
	</div>
	<form name="tx_editor_form" id="tx_editor_form" action="insertArtist.do" method="post">
	<div class="artist-insert-box">
			<input type="hidden" class="profile-og" value="">
			<input type="hidden" class="bg-og" value="">
			<input type="hidden" class="profile-val" name="profile" value="">
			<input type="hidden" class="bg-val" name="bg" value="">
			<table class="artist-insert-table" border="0">
				<tr>
					<td width="20%" class="table-td" style="text-align:right;font-weight: bold; padding-right:10px; color:#F0BF50;">NAME</td>
					<td width="80%" class="table-td"><input class="text-box" type="text" name="ar_name" id="name"></td>
				</tr>	
				<tr>
					<td width="20%" class="table-td" style="text-align:right;font-weight: bold; padding-right:10px;color:#F0BF50;">TYPE</td>
					<td width="80%" style="">
						<div style="min-width:250px;padding-top:10px; font-size: 15px; padding:6px;vertical-align: middle;text-align: center; padding-right:15%;">
							<input type="checkbox" name="ar_type" value="가수" id="ar_type">&nbsp;<font color="#EDEFF0">가수</font>&nbsp;
							<input type="checkbox" name="ar_type" value="랩퍼" id="ar_type">&nbsp;<font color="#EDEFF0">랩퍼</font>&nbsp;
							<input type="checkbox" name="ar_type" value="프로듀서" id="ar_type">&nbsp;<font color="#EDEFF0">프로듀서</font>&nbsp;
						</div>
					</td>
				</tr>
			</table>
			<br>
			<br>
			<div align="center" style="padding:8px; width:100%; min-width:316px; max-width:720px; margin:auto;">
				<jsp:include page="/WEB-INF/views/daumOpenEditor/editor_frame.jsp"></jsp:include> 
			</div>
			<div class="upload-space">
				<div class="upload-space-profile">
					<div class="profile-preview">
						<img src="resources/upload/check1.jpg" width="180" height="180" id="profile-img" style="margin-top:30px;" chk="no"/>
					</div>
					<button class="btn profile-upload" style="border:1px solid #EDEFF0; background:none; color: #EDEFF0; width:180px; height:55px; font-size: 17px;">
						프로필 추가
					</button>
				</div>
				<div class="upload-space-bg">
					<div class="bg-preview">
						<img src="resources/upload/check2.jpg" width="280" height="80" id="bg-img" style="margin-top:80px;" chk="no"/>
					</div>
					<button class="btn bg-upload" style="border:1px solid #EDEFF0; background:none; color: #EDEFF0; width:180px; height:55px; font-size: 17px;">
						배경 추가
					</button>
				</div>
			</div>
			<div class="button-space">
				<div class="button-space-insert">
					<button onclick="saveContent()" class="btn artist-insert" style="border:1px solid #EDEFF0; background:none; color: #EDEFF0; width:180px; height:55px; font-size: 17px;">
							등록
					</button>
				</div>
				<div class="button-space-exit">
					<button class="btn artist-exit" style="border:1px solid #EDEFF0; background:none; color: #EDEFF0; width:180px; height:55px; font-size: 17px;">
							취소
					</button>
				</div>
				
			</div>
	</div>
	</form>
</div>
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
		if($("#name").val() == ""){
			alert("이름을 입력하세요!");
			return;
		}else if($("#ar_type:checked").length == 0){
			alert("타입을 지정해주세요!");
			return;
		}
		else if (!validator.exists(content)) {
			alert('내용을 입력하세요!');
			return false;
		}else if($("#profile-img").attr("chk") == "no"){
			alert("프로필 이미지를 지정해주세요!");
			return;
		}else if($("#bg-img").attr("chk") == "no"){
			alert("배경 이미지를 지정해주세요!");
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