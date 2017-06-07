package com.gottube.vo;

import java.sql.Timestamp;

public class CommentsVo {
	private int c_no;
	private int b_no;
	private int m_no;
	private String m_id;
	private String profile;
	private String content;
	private String upload_time;
	private int rating;
	private int group_no;
	private int parent_c_no;
	private int depth;
	private int order_no;
	
	public CommentsVo() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CommentsVo(int c_no, int b_no, int m_no, String m_id, String profile, String content, String upload_time,
			int rating, int group_no, int parent_c_no, int depth, int order_no) {
		super();
		this.c_no = c_no;
		this.b_no = b_no;
		this.m_no = m_no;
		this.m_id = m_id;
		this.profile = profile;
		this.content = content;
		this.upload_time = upload_time;
		this.rating = rating;
		this.group_no = group_no;
		this.parent_c_no = parent_c_no;
		this.depth = depth;
		this.order_no = order_no;
	}

	public int getC_no() {
		return c_no;
	}

	public void setC_no(int c_no) {
		this.c_no = c_no;
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

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getUpload_time() {
		return upload_time;
	}

	public void setUpload_time(String upload_time) {
		this.upload_time = upload_time;
	}

	public int getRating() {
		return rating;
	}

	public void setRating(int rating) {
		this.rating = rating;
	}

	public int getGroup_no() {
		return group_no;
	}

	public void setGroup_no(int group_no) {
		this.group_no = group_no;
	}

	public int getParent_c_no() {
		return parent_c_no;
	}

	public void setParent_c_no(int parent_c_no) {
		this.parent_c_no = parent_c_no;
	}

	public int getDepth() {
		return depth;
	}

	public void setDepth(int depth) {
		this.depth = depth;
	}

	public int getOrder_no() {
		return order_no;
	}

	public void setOrder_no(int order_no) {
		this.order_no = order_no;
	}
	
}
