package com.deajin.lis.commons;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import com.deajin.lis.HomeController;

public class pageVO {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	// 전체 글의 행의 수
	private int total;
	// 현재 페이지 번호
	private int currentPage;
	// 전체 페이지 개수
	private int totalPages;
	// 시작 페이지 번호
	private int startPage;
	// 종료 페이지 번호
	private int endPage;
	// 페이징의 개수
	private int pagingCount = 10;
	
	public pageVO() {};
	
	public pageVO(int page, int count) {
		this.totalPages = count / this.pagingCount + 1;
		this.total = count;
		this.currentPage = page;
		calStart();
		calEnd();
	};
	
	public pageVO(int total, int currentPage, int totalPages, int startPage, int endPage, int pagingCount) {
		this.total = total;
		this.currentPage = currentPage;
		this.totalPages = totalPages;
		this.startPage = startPage;
		this.endPage = endPage;
		this.pagingCount = pagingCount;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getCurrentPage() {
		return currentPage;
	}

	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}

	public int getTotalPages() {
		return totalPages;
	}

	public void setTotalPages(int totalPages) {
		this.totalPages = totalPages;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public int getPagingCount() {
		return pagingCount;
	}

	public void setPagingCount(int pagingCount) {
		this.pagingCount = pagingCount;
	}
	
	public void calPaging() {
		calTotalPage();
		calStart();
		calEnd();
	}
	
	private void calTotalPage() {
		this.totalPages = this.total / this.pagingCount;
	}
	
	private void calStart() {
		logger.info("paginfCount : {} / currentPage : {}", this.pagingCount, this.currentPage);
		if(this.currentPage == 1) {
			this.startPage = 1;
		}else {
			this.startPage = this.pagingCount * (this.currentPage - 1) + 1;
		}
	}
	
	private void calEnd() {
		logger.info("paginfCount : {} / currentPage : {}", this.pagingCount, this.currentPage);
		this.endPage = (this.pagingCount * this.currentPage);
	}

	@Override
	public String toString() {
		return "pageVO [total=" + total + ", currentPage=" + currentPage + ", totalPages=" + totalPages + ", startPage="
				+ startPage + ", endPage=" + endPage + ", pagingCount=" + pagingCount + "]";
	}
	
	
	
	
}
