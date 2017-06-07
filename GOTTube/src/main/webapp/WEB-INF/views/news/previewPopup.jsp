<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>표지 이미지 추가</title>
<script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="http://jcrop-cdn.tapmodo.com/v2.0.0-RC1/js/Jcrop.js"></script>
<link rel="stylesheet" href="http://jcrop-cdn.tapmodo.com/v2.0.0-RC1/css/Jcrop.css" type="text/css">

<script type="text/javascript">
$(function(){
	var og_name;
	
	$("#file-upload").on('change',function(){
		var lastindex = $(".filestyle").val().lastIndexOf('\\');
		var filename = $(".filestyle").val().substring(lastindex+1,$(".filestyle").val().length);
		
		var thumbtext = $(".filestyle").val();
		thumbtext = filename.slice(filename.indexOf(".")+1).toLowerCase();
		
		if(thumbtext != "jpg" && thumbtext != "png" &&  thumbtext != "gif" &&  thumbtext != "bmp"){
			if($(".filestyle")[0].files[0] != null && $(".filestyle")[0].files[0] != ""){
				alert("이미지 파일만 등록 가능합니다!");
			}
			
			return;
		}else{
			if(filename != null && filename != ""){
				$("#file_route").val(filename);
				$("#i").val(filename);
				og_name = filename;
				fileTempUpload();
			}else{
				if(("#file_route").val() != null && ("#file_route").val() != ""){
					$("#i").val(filename);
					$("#file_route").val(og_name);
				}

			}
			readURL(this);
		}
		
		
	});
	function fileTempUpload(){
		var formData = new FormData();
		var file = $(".filestyle")[0].files[0];
		formData.append("temp_img",file);
		formData.append("source","news_temp");

		$.ajax({
			async:true,
			method:"post",
			url:"artistTempUpload.do",
			processData:false,
			data:formData,
			contentType:false,
			beforeSend:function(){
				$(".wrap-loading").removeClass("display-none");
			},
			complete:function(){
				$(".wrap-loading").addClass("display-none");
			},
			success:function(data){
				var res = eval(data);
				
				$("#i").val(res);
			},
			error:function(data){
				alert("사진 업로드 실패!");
			},
			timeout:100000
		});
		
	}
	function readURL(input) {

	    if (input.files && input.files[0]) {
	        var reader = new FileReader();
	        reader.onload = function (e) {
	        	var target = $(".profile-attach");
	        	var space = $(".profile-before");
	        	space.attr("")
	        	target.empty();
	        	target.append($("<img/>",{"src":e.target.result,"style":"max-width:390px;max-height:390px;","width":"auto","height":"auto","id":"cropbox"}));	
	
	        	
	        	$('#cropbox').Jcrop({
	        		addClass:'jcrop-centered',
	        		boxWidth:390,
	        		boxHeight:390,
	        		setSelect:[0,0,0,0],
	        		onSelect: updateCoords,
	        		onChange: updateCoords,
	        		bgColor: "black"
	        	});
	        	
	        	
	        }
	        reader.readAsDataURL(input.files[0]);
	    }
	}
	
	

	

	function updateCoords(c){
		$('#x').val(c.x);
		$('#y').val(c.y);
		$('#w').val(c.w);
		$('#h').val(c.h);
	};
	

	function checkCoords()
	{
		if (parseInt($('#w').val())) return true;
		alert('Please select a crop region then press submit.');
		return false;
	};
	
	function fileUpload(){
		var source = "news/preview";
		var x = $("#x").val();
		var y = $("#y").val();
		var w = $("#w").val();
		var h = $("#h").val();
		var i = $("#i").val();
		var og = $(opener.document).find(".profile-og").val();
		
		var formData = new FormData();

		formData.append("x",x);
		formData.append("y",y);
		formData.append("w",w);
		formData.append("h",h);
		formData.append("i",i);
		formData.append("og",og);
		formData.append("source",source);
		
		$.ajax({
			url:"artistCropOk.do",
			method:"POST",
			data:  formData ,
			processData:false,
			contentType:false,
			beforeSend:function(){
				$(".wrap-loading").removeClass("display-none");
			},
			complete:function(){
				$(".wrap-loading").addClass("display-none");
			},
			success:function(data){
				var img = eval(data);
				
				$(opener.document).find("#profile-img").attr("src",img);
				$(opener.document).find("#profile-img").attr("chk","yes");
				$(opener.document).find(".profile-val").val(img);
				$(opener.document).find(".profile-og").val(img);
				
				window.close();
			},
			timeout:100000
		});
	}
	
	function doClose(){
		$(opener.document).find("#artist").val("chris");
		window.self.close();
	}
	
	$("#cut-image").click(function(){

		if($("#file_route").val() != null && $("#file_route").val() != ""){
			fileUpload();
		}else{
			alert("파일을 등록해주세요!");
		}
		
	});
 	$("#exit").click(function(){
 		window.close();
 	})
	
});

	</script>
<style type="text/css">
body{
	background:white;
	min-width:405px;
	overflow-x:hidden;
	font: Arial Black;
}
.jcrop-centered{
	display:inline-block;
}
.profile-popup{
	width:100%;
	height:100%;
	margin:auto;
}
.profile-before{
	vertical-align: middle;
	display: inline-block;
	padding-top:180px;
}
.profile-attach{
	width:390px;
	padding:5px;
	margin:auto;
 	height:390px;
 	text-align:center;
	vertical-align: middle;
	background: silver;
	border: 1px solid silver;
}

.profile-input-button .input-button{
	width:180px;
	height:50px;
	background:white;
	border-radius:5px;
	border: 1px solid silver;
	font-size:15px;
	margin:5px;
}
.profile-input-button .input-button:hover{
	background:silver;
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
    width:100px;
    height:30px;
    background:#777;
    color:#fff;
    text-align:center;
    line-height:30px;
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
    width:280px;
    height:28px;
    line-height:28px;
    font-size:11px;
    padding:0;
    border:0;
    border:1px solid #777;
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
	</head>

	<body>
	<div class="wrap-loading display-none">
    	<div><img src="resources/img/loading1.gif" width="60" height="auto"/></div>
	</div>   
	<div class="profile-popup">
		<div align="center" style=" padding:10px;">
			<label style="font-family:Arial Black;font-size:30px;">표지 업로드</label>
		</div>
		<div class="profile-attach">
			<div class="profile-before">
				<label>이미지를 업로드해주세요.</label>
			</div>
<!-- 			<div class="profile-attach-left"> -->
				
<!-- 			</div> -->
<!-- 			<div class="profile-attach-right"> -->

<!-- 			</div> -->
		</div>
		<br>
		<div class="profile-input" align="center">
			<div class="profile-input-attach">
				<label>
					File Attach
      				<input type='file' class="filestyle" id="file-upload" name="img" data-type="image" accept="image/*"/>
				</label>
				<input type="text" readonly="readonly" title="File Route" id="file_route">
			</div>
			<div class="profile-input-button">
				<button class="input-button" id="cut-image" style="cursor:pointer;">자르기</button>
				<button class="input-button" id="exit" style="cursor:pointer;">취소</button>
			</div>
		</div>
	</div>

	<!-- This is the image we're attaching Jcrop to -->
	

	<!-- This is the form that our event handler fills -->
	
		<input type="hidden" id="x" name="l" />
		<input type="hidden" id="y" name="t" />
		<input type="hidden" id="w" name="w" />
		<input type="hidden" id="h" name="h" />
		<input type="hidden" id="i" name="i" />

	</body>
</html>