package com.deajin.lis.commons;


public class BookVO {
	private String isbn;
	private String title;
	private String ddc;
	private String author;
	private String publisher;
	private String page;
	private String info;
	
	public BookVO() {};
	public BookVO(String title, String ddc){	
		this.title = title;
		this.ddc = ddc;
	}
	
	
	public BookVO(String isbn, String title, String ddc, String author, String publisher, String page, String info) {
		super();
		this.isbn = isbn;
		this.title = title;
		this.ddc = ddc;
		this.author = author;
		this.publisher = publisher;
		this.page = page;
		this.info = info;
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
	public String getIsbn() {
		return isbn;
	}
	public void setIsbn(String isbn) {
		this.isbn = isbn;
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
	@Override
	public String toString() {
		return "BookVO [isbn=" + isbn + ", title=" + title + ", ddc=" + ddc + ", author=" + author + ", publisher="
				+ publisher + ", page=" + page + ", info=" + info + "]";
	}
	
	
	
}
