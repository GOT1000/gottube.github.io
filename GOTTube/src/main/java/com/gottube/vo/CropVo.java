package com.gottube.vo;

public class CropVo {
	private String x;
	private String y;
	private String w;
	private String h;
	private String i;
	private String source;
	public CropVo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public CropVo(String x, String y, String w, String h, String i, String source) {
		super();
		this.x = x;
		this.y = y;
		this.w = w;
		this.h = h;
		this.i = i;
		this.source = source;
	}
	public String getX() {
		return x;
	}
	public void setX(String x) {
		this.x = x;
	}
	public String getY() {
		return y;
	}
	public void setY(String y) {
		this.y = y;
	}
	public String getW() {
		return w;
	}
	public void setW(String w) {
		this.w = w;
	}
	public String getH() {
		return h;
	}
	public void setH(String h) {
		this.h = h;
	}
	public String getI() {
		return i;
	}
	public void setI(String i) {
		this.i = i;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	
}
