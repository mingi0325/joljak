package com.deajin.lis.commons;


public class BookVO {
	private String title;
	private String ddc;
	
	public BookVO(String title, String ddc){	
		this.title = title;
		this.ddc = ddc;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getDdc() {
		return ddc;
	}
	public void setDdc(String ddc) {
		this.ddc = ddc;
	}
	
	
	
}
