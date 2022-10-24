package com.deajin.lis.board.vo;

import java.util.Date;

public class BoardVO {

	private int bNo;
	private String title;
	private String userid;
	private String contents;
	private String wdate;
	private int count;
	
	public int getbNo() {
		return bNo;
	}
	public void setbNo(int bNo) {
		this.bNo = bNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	public String getWdate() {
		return wdate;
	}
	public void setWdate(String wdate) {
		this.wdate = wdate;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	
	
	@Override
	public String toString() {
		return "BoardVO [bNo=" + bNo + ", title=" + title + ", userid=" + userid + ", contents=" + contents + ", wdate="
				+ wdate + ", count=" + count + "]";
	}
	
	
}
