package com.gottube.vo;

import org.springframework.web.multipart.MultipartFile;

public class ArtistVo {
	private int ar_no;
	private String ar_type;
	private String ar_name;
	private String profile;
	private int rating;
	private String content;
	private String bg;
	private MultipartFile uploadFile;
	public ArtistVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ArtistVo(int ar_no, String ar_type, String ar_name, String profile, int rating, String content,String bg,MultipartFile uploadFile) {
		super();
		this.ar_no = ar_no;
		this.ar_type = ar_type;
		this.ar_name = ar_name;
		this.profile = profile;
		this.rating = rating;
		this.content = content;
		this.uploadFile = uploadFile;
		this.bg = bg;
	}
	public int getAr_no() {
		return ar_no;
	}
	public void setAr_no(int ar_no) {
		this.ar_no = ar_no;
	}
	public String getAr_type() {
		return ar_type;
	}
	public void setAr_type(String ar_type) {
		this.ar_type = ar_type;
	}
	public String getAr_name() {
		return ar_name;
	}
	public void setAr_name(String ar_name) {
		this.ar_name = ar_name;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	public String getBg(){
		return bg;
	}
	public void setBg(String bg){
		this.bg = bg;
	}
}
