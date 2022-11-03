package com.deajin.lis.book.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.deajin.lis.book.DAO.BookDAO;
import com.deajin.lis.commons.BookVO;
import com.deajin.lis.commons.CommentVO;
import com.deajin.lis.commons.pageVO;


@Repository
public class BookServiceImp implements BookService{

	@Autowired
	BookDAO bDao;
	
	public int insertBook(BookVO vo) {
		return bDao.insertBook(vo);
	}
	
	public List<BookVO> getBookList(pageVO pvo){
		return bDao.getBookList(pvo);
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return bDao.getCount();
	}

	@Override
	public BookVO getBookDetail(String isbn) {
		// TODO Auto-generated method stub
		return bDao.getBookDetail(isbn);
	}

	

	@Override
	public int insertComment(CommentVO cvo) {
		// TODO Auto-generated method stub
		return bDao.insertComment(cvo);
	}

	@Override
	public List<CommentVO> getCommentList(int bkNo) {
		// TODO Auto-generated method stub
		return bDao.getCommentList(bkNo);
	}
}
