package com.day.post.vo;

public class DiPostVO {

	private int dayid; //게시글아이디
	private String hdctg; //분류
	private String title; //제목
	private String contents; //내용
	private String use_yn; //사용여부
	private String cret_dt; //생성일
	private String upd_dt; //수정일
	private int totalcnt; //전체건수
	
	public String getUpd_dt() {
		return upd_dt;
	}
	public void setUpd_dt(String upd_dt) {
		this.upd_dt = upd_dt;
	}
	public int getTotalcnt() {
		return totalcnt;
	}
	public void setTotalcnt(int totalcnt) {
		this.totalcnt = totalcnt;
	}
	public int getDayid() {
		return dayid;
	}
	public void setDayid(int dayid) {
		this.dayid = dayid;
	}
	public String getHdctg() {
		return hdctg;
	}
	public void setHdctg(String hdctg) {
		this.hdctg = hdctg;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getUse_yn() {
		return use_yn;
	}
	public DiPostVO setUse_yn(String use_yn) {
		this.use_yn = use_yn;
		return this;
	}
	public String getCret_dt() {
		return cret_dt;
	}
	public void setCret_dt(String cret_dt) {
		this.cret_dt = cret_dt;
	}
	
}
