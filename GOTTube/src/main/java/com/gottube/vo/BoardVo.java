package com.gottube.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class BoardVo {
	private int b_no;
	private int m_no;
	private int b_type;
	private String title;
	private String content;
	private String fname;
	private Date upload_time;
	private int hit;
	private int rating;
	private int comment_count;
	private String m_id;
	private MultipartFile uploadFile;
	public BoardVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public BoardVo(int b_no, int m_no, int b_type, String title, String content, String fname, Date upload_time,
			int hit, int rating, int comment_count, String m_id, MultipartFile uploadFile) {
		super();
		this.b_no = b_no;
		this.m_no = m_no;
		this.b_type = b_type;
		this.title = title;
		this.content = content;
		this.fname = fname;
		this.upload_time = upload_time;
		this.hit = hit;
		this.rating = rating;
		this.comment_count = comment_count;
		this.m_id = m_id;
		this.uploadFile = uploadFile;
	}
	public int getB_no() {
		return b_no;
	}
	public void setB_no(int b_no) {
		this.b_no = b_no;
	}
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public int getB_type() {
		return b_type;
	}
	public void setB_type(int b_type) {
		this.b_type = b_type;
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
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public Date getUpload_time() {
		return upload_time;
	}
	public void setUpload_time(Date upload_time) {
		this.upload_time = upload_time;
	}
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public int getComment_count(){
		return comment_count;
	}
	public void setComment_count(int comment_count){
		this.comment_count = comment_count;
	}
	public String getM_id(){
		return m_id;
	}
	public void setM_id(String m_id){
		this.m_id = m_id;
	}
	public MultipartFile getUploadFile(){
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile){
		this.uploadFile = uploadFile;
	}
}
