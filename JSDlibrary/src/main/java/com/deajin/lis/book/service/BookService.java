package com.deajin.lis.book.service;

import java.util.List;

import com.deajin.lis.commons.BookVO;

public interface BookService {

	public int insertBook(BookVO vo);
	
	public List<BookVO> getBookList();
}
