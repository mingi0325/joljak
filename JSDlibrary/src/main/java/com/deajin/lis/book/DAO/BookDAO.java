package com.deajin.lis.book.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.deajin.lis.commons.BookVO;

@Repository
public class BookDAO {

	@Autowired
	private SqlSession session;
	
	public int insertBook(BookVO vo) {
		// TODO Auto-generated method stub
		return session.insert("bookMapper.insertBook", vo);
	}
	
	public List<BookVO> getBookList(){
		
		return session.selectList("bookMapper.getBookList");
	}
}
