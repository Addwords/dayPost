package com.day.post.vo;

import java.util.Date;

public class DiPostVO {

	private int dayid; //게시글아이디
	private String hdctg; //분류
	private String title; //제목
	private String contents; //내용
	private String useYn; //사용여부
	private Date cretDt; //생성일
	private Date updDt; //수정일
	private int totalcnt; //전체건수
	
	public Date getupdDt() {
		return updDt;
	}
	public void setupdDt(Date updDt) {
		this.updDt = updDt;
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
	public String getuseYn() {
		return useYn;
	}
	public DiPostVO setuseYn(String useYn) {
		this.useYn = useYn;
		return this;
	}
	public Date getcretDt() {
		return cretDt;
	}
	public void setcretDt(Date cretDt) {
		this.cretDt = cretDt;
	}
	
}
