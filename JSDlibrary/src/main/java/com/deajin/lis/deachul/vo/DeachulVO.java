package com.deajin.lis.deachul.vo;

public class DeachulVO {
	private int dNo;
	private String isbn;
	private String userid;
	
	public int getdNo() {
		return dNo;
	}
	public void setdNo(int dNo) {
		this.dNo = dNo;
	}
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	
	@Override
	public String toString() {
		return "DeachulVO [dNo=" + dNo + ", isbn=" + isbn + ", userid=" + userid + "]";
	}
	
	
}
