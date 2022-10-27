package com.deajin.lis.commons;


public class BookVO {
	private String bkNo;
	private String title;
	private String author;
	private String publisher;
	private String page;
	private String info;
	private String userid;
	private String star;
	
	public BookVO() {};							//jsp에서 컨트롤러로 vo를 넘겨주기 위해서는 기본 생성자 반드시 필요
	
	
	
	public BookVO(String bkNo, String title, String author, String publisher, String page, String info, String userid,
			String star) {
		super();
		this.bkNo = bkNo;
		this.title = title;
		this.author = author;
		this.publisher = publisher;
		this.page = page;
		this.info = info;
		this.userid = userid;
		this.star = star;
	}
	public String getBkNo() {
		return bkNo;
	}
	public void setBkNo(String bkNo) {
		this.bkNo = bkNo;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublisher() {
		return publisher;
	}
	public void setPublisher(String publisher) {
		this.publisher = publisher;
	}
	public String getPage() {
		return page;
	}
	public void setPage(String page) {
		this.page = page;
	}
	public String getInfo() {
		return info;
	}
	public void setInfo(String info) {
		this.info = info;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}
	public String getStar() {
		return star;
	}
	public void setStar(String star) {
		this.star = star;
	}
	@Override
	public String toString() {
		return "BookVO [bkNo=" + bkNo + ", title=" + title + ", author=" + author + ", publisher=" + publisher
				+ ", page=" + page + ", info=" + info + ", userid=" + userid + ", star=" + star + "]";
	}
	
	
	
	
	
}
