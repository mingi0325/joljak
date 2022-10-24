package com.deajin.lis.board.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.deajin.lis.board.vo.BoardVO;
import com.deajin.lis.commons.pageVO;

@Repository
public class BoardDAO {

	@Autowired
	private SqlSession session;
	
	public List<BoardVO> getBoardList(pageVO pvo) {
		// TODO Auto-generated method stub
		return session.selectList("boardMapper.getBoardList", pvo);
	}

	public int getCount() {
		// TODO Auto-generated method stub
		return session.selectOne("boardMapper.getCount");
	}

	public int insertBoard(BoardVO bvo) {
		// TODO Auto-generated method stub
		return session.insert("boardMapper.insertBoard", bvo);
	}

}
