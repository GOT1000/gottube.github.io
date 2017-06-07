<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
	
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	
	<title>Daum에디터 - 이미지 첨부</title>
	<style type="text/css">
		.header{
			background-image: none;
			background-color: #027dfc;
		}
		
		.file{
			display:inline-block;
			margin-top: 8px;
			overflow:hidden;
		}
		
		.file .file-text{
			display:inline-block;
			padding: 6px 10px 8px 10px;
			border:1px solid #c7c7c7;
			width:179px;
			font-size:14px;
			color:#8a8a8a;
			float:left;
		}
		
		.file .file-text:FOCUS{
			border-color:#54c4e5;
			outline:0;
			-webkit-box-shadow:inset 0px 1px 1px rgba(0,0,0,0.075), 0px 0px 8px rgba(102,175,233,0.6);
			box-shadow:inset 0px 1px 1px rgba(0,0,0,0.075), 0px 0px 8px rgba(102,175,233,0.6);
		}
		
		.file .file-btn{
			margin-left:2px;
			padding:6px 8px 4px 8px;
			height:20px;
			line-height:20px;
			font-size:12px;
			font-weight:bold;
			background-color:#fff;
			border:1px solid #989898;
			color:#989898;
			cursor:pointer;
			float:left;
		}
		
		.file .file-btn:HOVER{
			background-color:#edfbff;
			border:1px solid #009bc8;
			color:#009bc8;
		}
	</style>
	<!-- 다음오픈에디터 라이브러리 -->
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/daumOpenEditor/css/popup.css" charset="utf-8"/>
	<script src="${pageContext.request.contextPath}/resources/daumOpenEditor/js/popup.js" type="text/javascript" charset="utf-8"></script>
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.js"></script> 
    <script src="http://malsup.github.com/jquery.form.js"></script> 
	<script>
	
	</script>
	<script>
		
		//첨부한 이미지를 에디터에 적용시키는 함수
		function done(fileInfo) {
			if (typeof(execAttach) == 'undefined') {
				return;
	    		}
			
			var _mockdata = {
				'imageurl': fileInfo.imageurl,
				'filename': fileInfo.filename,
				'filesize': fileInfo.filesize,
				'imagealign': fileInfo.imagealign,
				'originalurl': fileInfo.originalurl,
				'thumburl': fileInfo.thumburl
			};
			execAttach(_mockdata);
			closeWindow();
		}
		
// 		var upload_path_object = opener.document.getElementById("upload_path");
// 		var upload_path_value = "";
// 		var save_file_name_object = opener.document.getElementById("save_file_name");
// 		var save_file_name_value = "";
// 		for(var i=0;i<data[0].file_count;i++){
// 			if(upload_path_object != null){
// 				upload_path_value = upload_path_object.value;
// 				save_file_name_value = save_file_name_object.value;
// 				if(upload_path_value=''){
// 					opener.document.getElementById("upload_path").value == data[i].upload_path;
// 					opener.document.getElementById("save_file_name").value == data[i].save_file_name;
// 				}else{
// 					opener.document.getElementById("upload_path").value = upload_path_value + '.' + data[i].upload_path;
// 					opener.document.getElementById("save_file_name").value = save_file_name_value + '.' + data[i].save_file_name;
// 				}
// 			}else{
// 				var form = opener.document.forms[0];
// 				var input1 = '<input type="hidden" id="upload_path" value='+data[i].upload_path+'/>';
// 				var input2 = '<input type="hidden" id="save_file_name" value='+data[i].save_file_name+'/>';
				
// 				$("form:first",opener.document).append(input1);
// 				$("form:first",opener.document).append(input2);
// 			}
// 		}
		
		function validation(fileName){
			fileName+='';
			var fileNameExtensionIndex = fileName.lastIndexOf('.')+1;
			var fileNameExtension = fileName.toLowerCase().substring(fileNameExtensionIndex,fileName.length);
	
			if(!((fileNameExtension === 'jpg') || (fileNameExtension === 'gif') || (fileNameExtension === 'bmp') || (fileNameExtension === 'png'))){
				alert('jpg,gif,png,bmp 확장자만 업로드 가능합니다.');
				return true;
			}else{
				return false;
			}
		}
		//잘못된 경로로 접근할 때 호출되는 함수
		function initUploader(){
	    		var _opener = PopupUtil.getOpener();
	    		if (!_opener) {
				alert('잘못된 경로로 접근하셨습니다.');
	        		return;
	    		}
			
	    		var _attacher = getAttacher('image', _opener);
	    		registerAction(_attacher);
		}
		
		
		$(document).ready(function(){
			$('.file input[type=file]').change(function(){
				var inputObj = $(this).prev().prev();
				var fileLocation = $(this).val();
				
				inputObj.val(fileLocation.replace('C:\\fakepath\\'));
			});
			
			$('.submit a').on('click',function(){
				var form = $('#daumOpenEditorForm');
				var fileName = $('.file input[type=text]').val();

				form.ajaxSubmit({
					type:'POST',
					url:'${pageContext.request.contextPath}/daumOpenEditor/singleUploadImageAjax',
					contentType:"application/json",
					dataType:'JSON',
					beforeSubmit:function(){
						if(validation(fileName)){
							return false;
						}
					},
					
					success:function(fileInfo){
						done(fileInfo);
					}
				});
			});
		});
		
	</script>
	
</head>

<body onload="initUploader();">

	<div class="wrapper">
		<div class="header">
			<h1>사진 첨부</h1>
		</div>	
		<div class="body">
			<dl class="alert">
		    		<dt>&nbsp;1MB이하 (JPG,GIF,PNG,BMP)</dt>
		    		<dd>
		    			<form id="daumOpenEditorForm" encType="multipart/form-data" method="post" action="">
		    				<div class="file">
		    					<input disabled class="file-text" type="text">
		    					<label class="file-btn" for="uploadInputBox">사진첨부</label>
		    					<input id="uploadInputBox" style="display:none" type="file" name="Filedata">
		    				</div>
		    			</form>
		    		</dd>
			</dl>
		</div>
		<div class="footer">
			<ul>
				<li class="submit"><a href="#" title="등록" class="btnlink">등록</a> </li>
				<li class="cancel"><a href="#" onclick="closeWindow();" title="취소" class="btnlink">취소</a></li>
			</ul>
		</div>
	</div>
</body>

</html>