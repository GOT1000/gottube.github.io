package com.gottube.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

public class MemberVo {
	private int m_no;
	private String m_id;
	private String profile;
	private String pwd;
	private String m_name;
	private String phone;
	private String email;
	private String addr;
	private int m_level;
	private Date join_time;
	private MultipartFile uploadFile;
	public MemberVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public MemberVo(int m_no, String m_id, String profile, String pwd, String m_name, String phone, String email,
			String addr, int m_level, Date join_time, MultipartFile uploadFile) {
		super();
		this.m_no = m_no;
		this.m_id = m_id;
		this.profile = profile;
		this.pwd = pwd;
		this.m_name = m_name;
		this.phone = phone;
		this.email = email;
		this.addr = addr;
		this.m_level = m_level;
		this.join_time = join_time;
		this.uploadFile = uploadFile;
	}
	public int getM_no() {
		return m_no;
	}
	public void setM_no(int m_no) {
		this.m_no = m_no;
	}
	public String getM_id() {
		return m_id;
	}
	public void setM_id(String m_id) {
		this.m_id = m_id;
	}
	public String getProfile() {
		return profile;
	}
	public void setProfile(String profile) {
		this.profile = profile;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getM_name() {
		return m_name;
	}
	public void setM_name(String m_name) {
		this.m_name = m_name;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public int getM_level() {
		return m_level;
	}
	public void setM_level(int m_level) {
		this.m_level = m_level;
	}
	public Date getJoin_time() {
		return join_time;
	}
	public void setJoin_time(Date join_time) {
		this.join_time = join_time;
	}
	public MultipartFile getUploadFile() {
		return uploadFile;
	}
	public void setUploadFile(MultipartFile uploadFile) {
		this.uploadFile = uploadFile;
	}
	
}
