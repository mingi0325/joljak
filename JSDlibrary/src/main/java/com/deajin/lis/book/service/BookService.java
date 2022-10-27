package com.deajin.lis.book.service;

import java.util.List;

import com.deajin.lis.commons.BookVO;
import com.deajin.lis.commons.CommentVO;
import com.deajin.lis.commons.pageVO;
import com.deajin.lis.deachul.vo.PickVO;

public interface BookService {

	public int insertBook(BookVO vo);
	
	public List<BookVO> getBookList(pageVO pvo);

	public int getCount();

	public BookVO getBookDetail(String isbn);

	public int pickBook(PickVO pick);

	public int insertComment(CommentVO cvo);

	public List<CommentVO> getCommentList(int parseInt);
}
