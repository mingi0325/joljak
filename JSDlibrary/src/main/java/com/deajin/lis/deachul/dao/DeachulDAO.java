package com.deajin.lis.deachul.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.deajin.lis.commons.BookVO;

@Repository
public class DeachulDAO {

	@Autowired
	private SqlSession session;
	
	public int insertBook(BookVO vo) {
		// TODO Auto-generated method stub
		return session.insert("deachulMapper.insertBook", vo);
	}

}
