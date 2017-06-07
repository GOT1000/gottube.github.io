package com.gottube.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

@Controller
@RequestMapping(value="/daumOpenEditor")
public class DaumOpenEditorController {
	@RequestMapping(value="/imagePopup")
	public String imagePopup(){
		return "daumOpenEditor/image";
	}
	
	@RequestMapping(value="/singleUploadImageAjax",method=RequestMethod.POST)
	public @ResponseBody HashMap<Object,Object> singleUploadImageAjax(@RequestParam("Filedata") MultipartFile multipartFile, HttpSession httpSession){
		HashMap<Object,Object> fileInfo = new HashMap();
		
		if(multipartFile != null && !(multipartFile.getOriginalFilename().equals(""))){
			String originalName = multipartFile.getOriginalFilename();
			String originalNameExtension = originalName.substring(originalName.lastIndexOf(".")+1).toLowerCase();
			if(!((originalNameExtension.equals("jpg")) || (originalNameExtension.equals("gif")) || (originalNameExtension.equals("png")) || (originalNameExtension.equals("bmp")))){
				fileInfo.put("result", -1);
				return fileInfo;
			}
			
			long filesize = multipartFile.getSize();
			long limitFileSize = 1*1024*1024;
			if(limitFileSize < filesize){
				fileInfo.put("result", -2);
				return fileInfo;
			}
			
			String defaultPath = httpSession.getServletContext().getRealPath("/");
			String path = defaultPath + "upload" + File.separator + "board" + File.separator + "images" + File.separator + "";
			
			File file = new File(path);
			if(!file.exists()){
				file.mkdirs();
			}
			
			SimpleDateFormat formatter = new SimpleDateFormat("yyyyMMddHHmmss");
			String today = formatter.format(new Date());
			String modifyName = today + "-" + UUID.randomUUID().toString().substring(20) + "." + originalNameExtension;
			
			try {
				multipartFile.transferTo(new File(path + modifyName));
				
				System.out.println("** upload 정보 **");
				System.out.println("** path : "+path+" **");
				System.out.println("** orignalName : " + originalName + " **");
				System.out.println("** modifyName : " + modifyName + " **");
			} catch (Exception e) {
				// TODO: handle exception
				e.printStackTrace();
				System.out.println("이미지파일업로드실패");
			}
			
			String imageurl = httpSession.getServletContext().getContextPath() + "/upload/board/images/" + modifyName;
			fileInfo.put("imageurl", imageurl);
			fileInfo.put("filename", modifyName);
			fileInfo.put("filesize", filesize);
			fileInfo.put("imagealign","C");
			fileInfo.put("originalurl", imageurl);
			fileInfo.put("thumbnail", imageurl);
			
			fileInfo.put("result", 1);
			
		}
	
		return fileInfo;
	}
}

