package com.deajin.lis.commons;

public class CommentVO {

	private int cNo;
	private int pkNo;
	private int category;
	private String userid;
	private String contents;
	
	public CommentVO() {};
	
	public CommentVO(int cNo, int pkNo, int category, String userid, String contents) {
		super();
		this.cNo = cNo;
		this.pkNo = pkNo;
		this.category = category;
		this.userid = userid;
		this.contents = contents;
	}


	public int getcNo() {
		return cNo;
	}
	public void setcNo(int cNo) {
		this.cNo = cNo;
	}
	public int getPkNo() {
		return pkNo;
	}
	public void setPkNo(int pkNo) {
		this.pkNo = pkNo;
	}
	public int getCategory() {
		return category;
	}
	public void setCategory(int category) {
		this.category = category;
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
	
	
	@Override
	public String toString() {
		return "CommentVO [cNo=" + cNo + ", pkNo=" + pkNo + ", category=" + category + ", userid=" + userid
				+ ", contents=" + contents + "]";
	}
	
	
}
