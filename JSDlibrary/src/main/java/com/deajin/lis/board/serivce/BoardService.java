package com.deajin.lis.board.serivce;

import java.util.ArrayList;
import java.util.List;

import com.deajin.lis.board.vo.BoardVO;
import com.deajin.lis.commons.CommentVO;
import com.deajin.lis.commons.pageVO;

public interface BoardService {

	List<BoardVO> getBoardList(pageVO pvo);

	int getCount();

	int insertBoard(BoardVO bvo);

	BoardVO getBoardDetail(int bNo);

	int increaseCount(int bNo);

	int insertComment(CommentVO cvo);

	List<CommentVO> getCommentList(int bNo);

}
