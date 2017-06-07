package com.gottube.vo;

import java.util.Date;

public class TrackVo {
	private int s_no;
	private String s_title;
	private String lyrics;
	private int rating;
	private Date release_date;
	private String s_file;
	private String etc;
	private int hit;
	private String a_img;
	private String title;
	private int a_no;
	private String a_name;
	public TrackVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public TrackVo(int s_no, String s_title, String lyrics, int rating,
			Date release_date,String s_file,String etc,int hit,String a_img,String title, int a_no, String a_name) {
		super();
		this.s_no = s_no;
		this.s_title = s_title;
		this.lyrics = lyrics;
		this.rating = rating;
		this.release_date = release_date;
		this.s_file = s_file;
		this.etc = etc;
		this.hit = hit;
		this.a_img = a_img;
		this.title = title;
		this.a_no = a_no;
		this.a_name = a_name;
	}
	public int getS_no() {
		return s_no;
	}
	public void setS_no(int s_no) {
		this.s_no = s_no;
	}
	public String getS_title() {
		return s_title;
	}
	public void setS_title(String s_title) {
		this.s_title = s_title;
	}
	public String getLyrics() {
		return lyrics;
	}
	public void setLyrics(String lyrics) {
		this.lyrics = lyrics;
	}
	public int getRating() {
		return rating;
	}
	public void setRating(int rating) {
		this.rating = rating;
	}
	public Date getRelease_date() {
		return release_date;
	}
	public void setRelease_date(Date release_date) {
		this.release_date = release_date;
	}
	public String getS_file(){
		return s_file;
	}
	public void setS_file(String s_file){
		this.s_file = s_file;
	}
	public String getEtc(){
		return etc;
	}
	public void setEtc(String etc){
		this.etc = etc;
	}
	public int getHit(){
		return hit;
	}
	public void sethit(int hit){
		this.hit = hit;
	}
	public String getA_img(){
		return a_img;
	}
	public void setA_img(String a_img){
		this.a_img = a_img;
	}
	public String getTitle(){
		return title;
	}
	public void setTitle(String title){
		this.title = title;
	}
	public int getA_no(){
		return a_no;
	}
	public void setA_no(int a_no){
		this.a_no = a_no;
	}
	public String getA_name(){
		return a_name;
	}
	public void setA_name(String a_name){
		this.a_name = a_name;
	}
}
