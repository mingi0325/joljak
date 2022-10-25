package com.deajin.lis.board.serivce;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.deajin.lis.board.dao.BoardDAO;
import com.deajin.lis.board.vo.BoardVO;
import com.deajin.lis.commons.CommentVO;
import com.deajin.lis.commons.pageVO;

@Service
public class BoardServiceImp implements BoardService{

	@Autowired
	BoardDAO dao;
	
	@Override
	public List<BoardVO> getBoardList(pageVO pvo) {
		// TODO Auto-generated method stub
		return dao.getBoardList(pvo);
	}

	@Override
	public int getCount() {
		// TODO Auto-generated method stub
		return dao.getCount();
	}

	@Override
	public int insertBoard(BoardVO bvo) {
		// TODO Auto-generated method stub
		return dao.insertBoard(bvo);
	}

	@Override
	public BoardVO getBoardDetail(int bNo) {
		// TODO Auto-generated method stub
		return dao.getBoardDetail(bNo);
	}

	@Override
	public int increaseCount(int bNo) {
		// TODO Auto-generated method stub
		return dao.increaseCount(bNo);
	}

	@Override
	public int insertComment(CommentVO cvo) {
		// TODO Auto-generated method stub
		return dao.insertComment(cvo);
	}

	@Override
	public List<CommentVO> getCommentList(int bNo) {
		// TODO Auto-generated method stub
		return dao.getCommentList(bNo);
	}

}
