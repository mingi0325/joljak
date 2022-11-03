package com.deajin.lis.book.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.deajin.lis.commons.BookVO;
import com.deajin.lis.commons.CommentVO;
import com.deajin.lis.commons.pageVO;

@Repository
public class BookDAO {

	@Autowired
	private SqlSession session;
	
	public int insertBook(BookVO vo) {
		// TODO Auto-generated method stub
		return session.insert("bookMapper.insertBook", vo);
	}
	
	public List<BookVO> getBookList(pageVO pvo){
		
		return session.selectList("bookMapper.getBookList", pvo);
	}

	public int getCount() {
		// TODO Auto-generated method stub
		return session.selectOne("bookMapper.getCount");
	}

	public BookVO getBookDetail(String isbn) {
		// TODO Auto-generated method stub
		return session.selectOne("bookMapper.getBookDetail", isbn);
	}


	public int insertComment(CommentVO cvo) {
		// TODO Auto-generated method stub
		return session.insert("bookMapper.insertComment", cvo);
	}

	public List<CommentVO> getCommentList(int bkNo) {
		// TODO Auto-generated method stub
		return session.selectList("bookMapper.getCommentList", bkNo);
	}
}
