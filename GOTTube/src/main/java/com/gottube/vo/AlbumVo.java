package com.gottube.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class AlbumVo {
	private int a_no;
	private String title;
	private String content;
	private String a_img;
	private Date release_date;
	private int rating;
	private int hit;
	private MultipartFile uploadFile;
	public AlbumVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public AlbumVo(int a_no, String title, String content, String a_img, Date release_date, int rating, int hit) {
		super();
		this.a_no = a_no;
		this.title = title;
		this.content = content;
		this.a_img = a_img;
		this.release_date = release_date;
		this.rating = rating;
		this.hit = hit;
	}
	public int getA_no() {
		return a_no;
	}
	public void setA_no(int a_no) {
		this.a_no = a_no;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getA_img() {
		return a_img;
	}
	public void setA_img(String a_img) {
		this.a_img = a_img;
	}
	public Date getRelease_date(){
		return release_date;
	}
	public void setRelease_date(Date release_date){
		this.release_date = release_date;
	}
	public int getRating(){
		return rating;
	}
	public void setRating(int rating){
		this.rating = rating;
	}
	public int getHit(){
		return hit;
	}
	public void setHit(int hit){
		this.hit = hit;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	
}
