<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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
	background:#f0f2f2;
}
h1{
	color:#1c1c1c;
	margin-top:30px;
}

.news-insert-body{
	width:80%;
	margin-top:200px;
	background:#fcfcfc;
	margin:auto;
	overflow-x:hidden;
	overflow-y: auto;
}

.news-insert-table{
	max-width:700px;
}
.news-insert-title{
	padding:20px;
	min-width:250px;
	text-align:center;
	margin:auto;
}
.news-insert-box{
	padding-top:30px;
	float:left;
	min-height:580px;
	display:inline-block;
	width:100%;
	height:50%;
}
.news-insert{
	
}

.news-insert-table{
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
	border-color: #acacac;
	color:#1c1c1c;
	width:80%;
	margin:5px;
	outline: none;
	margin-left:5%;
}
.news-preview{
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
	min-height:300px;
	height:auto;
	margin:auto;
	text-align: center;
}

.upload-space-profile{
	display:inline-block; 
	padding:8px; 
	width:70%;
	min-width:350px; 
	margin:auto;
	text-align:center;
	vertical-align: middle;
}


.profile-preview{
	width:100%;
	min-height:270px;
	height:auto;
	padding-bottom:20px;
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
	margin-top:3em;
	vertical-align:middle;
}

.button-space-insert{
	float:left;
	display:inline-block; 
	padding:8px; 
	width:36%;
	min-width:300px; 
	padding-top:65px;
	margin:auto;
	padding-left:130px;
	vertical-align: middle;
}

.button-space-exit{
	float:right;
	display:inline-block; 
	padding:8px; 
	width:36%;
	min-width:300px; 
	padding-top:65px;
	margin:auto;
	padding-right:130px;
	vertical-align: middle;
}
.related-space{
	width:100%;
	position:relative;
	display:inline-block;
	padding-top:2em;
}
.related-space-title{
	width:50%;
	float:left;
	position:relative;
	display:inline-block;
	text-align:right;
	padding-right:3em;
}
.related-space-body{
	width:50%;
	float:right;
	position:relative;
	display:inline-block;
	text-align:left;
}
.related-space-block{
	display:block;
	position:relative;
	margin-bottom:1em;
}
#related-plus:hover{
	cursor:pointer;
}
.related-space-block .remove-btn{
	margin-left:1em;
}
.related-space-block .remove-btn:hover{
	cursor:pointer;
}
@media screen and (max-width:1080px){
	.news-insert-body{
		width:90%;
	}
}
@media screen and (max-width:700px){

	.news-insert-body{
		width:95%;
	}
	.upload-space{
		margin-bottom:10px;
	}
	.upload-space-profile{
		float:left;
		display:inline-block; 
		padding:8px; 
	
		width:100%;
		min-width:300px; 
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
		min-width:300px; 
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
		min-width:300px; 
		margin:auto;
		text-align:center;
		vertical-align: middle;
	}
}
@media screen and (max-width:440px){
	#profile-img{
		width:90%;
		height:auto;
	}
}
</style>
<script type="text/javascript">
$(function(){
	var winRef;
	$("#related-plus").click(function(){
		var select = $("<select></select>").attr("name","related-artist");
		var option = $("<option></option>").attr({"selected":"selected","disabled":"disabled","value":"0"});
		$(option).html("선택");
		$(select).append(option);
		
		$(select).append("<c:forEach var='ar' items='${ar_vo}'><option value='${ar.ar_no}'>${ar.ar_name}</option></c:forEach>");
		
		var block = $("<div></div>").attr("class","related-space-block");
		
		var remove = $("<span></span>").attr("class","glyphicon glyphicon-remove remove-btn");
		
		
		$(block).append(select,remove);
		$(".related-space-body").append(block);
	
		$(remove).click(function(){
			$(block).remove();
		})
	})
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
		popupOpen("news-preview");
	});

});

</script>

<body>
<div class="news-insert-body">
	<div class="blank" style="height:60px;"></div>
	<div class="news-insert-title" align="center">
		<h1>글 등록</h1>
	</div>
	<form name="tx_editor_form" id="tx_editor_form" action="insertNews.do" method="post">
	<div class="news-insert-box">
			<input type="hidden" class="profile-og" value="">
			<input type="hidden" class="profile-val" name="fname" value="">
			<table class="news-insert-table" border="0">
				<tr>
					<td width="20%" class="table-td" style="text-align:right;font-weight: normal; padding-right:10px; color:#1c1c1c; font-family:'Whitney'">제목</td>
					<td width="80%" class="table-td"><input class="text-box" type="text" name="title" id="title"></td>
				</tr>	
			</table>
			<br>
			<br>
			<div align="center" style="padding:8px; width:100%; min-width:300px; max-width:720px; margin:auto;">
				<jsp:include page="/WEB-INF/views/daumOpenEditor/editor_frame.jsp"></jsp:include> 
			</div>
			<div class="upload-space">
				<div class="upload-space-profile" align="center">
					<div class="profile-preview">
						<img src="resources/upload/check3.jpg" width="400" height="auto" id="profile-img" style="margin-top:30px;" chk="no"/>
					</div>
					<button class="btn profile-upload" style="border:1px solid #dcdcdc; background:#ededed; color: #4c4c4c; width:180px; height:55px; font-size: 17px;">
						표지 추가
					</button>
				</div>
			</div>
			<div class="related-space">
				<div class="related-space-title">
					아티스트 추가 <span id="related-plus"><img src="resources/upload/plussign.png" width="25" height="auto"></span>
				</div>
				<div class="related-space-body">
					<div class="related-space-block">
						<select  name="related-artist">
							<option selected disabled value="0">선택</option>
							<c:forEach var="ar" items="${ar_vo}">
								<option value="${ar.ar_no}">${ar.ar_name}</option>
							</c:forEach>
						</select>
					</div>
				</div>
			</div>
			<div class="button-space">
				<div class="button-space-insert">
					<button onclick="saveContent()" class="btn news-insert" style="border:1px solid #dcdcdc; background:#ededed; color: #4c4c4c; width:180px; height:55px; font-size: 17px;">
							등록
					</button>
				</div>
				<div class="button-space-exit">
					<button class="btn news-exit" style="border:1px solid #dcdcdc; background:#ededed; color: #4c4c4c; width:180px; height:55px; font-size: 17px;">
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
		var ar_array;
		
		var valid_cnt = 0;
		var block_cnt = 0;
		
		var blocks = $(".related-space-block select");
		
		$(blocks).each(function(){
			if($(this).val() != null){
				valid_cnt++;
			}
			block_cnt++;
		})

		
		if($("#title").val() == ""){
			alert("제목을 입력하세요!");
			return;
		}
		else if (!validator.exists(content)) {
			alert('내용을 입력하세요!');
			return false;
		}else if($("#profile-img").attr("chk") == "no"){
			alert("표지 이미지를 지정해주세요!");
			return;
		}else if(block_cnt > 1 && block_cnt != valid_cnt){
			alert("아티스트를 입력해주세요!");
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