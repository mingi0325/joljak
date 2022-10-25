package com.deajin.lis.board.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.deajin.lis.board.serivce.BoardService;
import com.deajin.lis.board.vo.BoardVO;
import com.deajin.lis.commons.BookVO;
import com.deajin.lis.commons.CommentVO;
import com.deajin.lis.commons.pageVO;

@Controller
public class BoardController {

	@Autowired
	BoardService bService;
	
	@RequestMapping(value="/board/moveList", method = RequestMethod.GET)
	public String moveBoardList(Model model, HttpServletRequest req) {
		
		return "board/board_list";
	}
	
	@RequestMapping(value="/board/getList", method = RequestMethod.GET)		//view에서 호출하는 url을 구분하기 위한 일종의 태그
	public String getBoardList(Model model, HttpServletRequest req) {
		int page = Integer.parseInt(req.getParameter("page"));
		if(page == 0) {
			page = 1;
		}
		int totalCount = bService.getCount();
		
		pageVO pvo = new pageVO(page, totalCount);
		System.out.println(totalCount);
		System.out.println("end : " + pvo.getEndPage() + " / start : " + pvo.getStartPage());
		
		
		List<BoardVO> bvo = bService.getBoardList(pvo);
		
		//model은 
		model.addAttribute("boardPage", pvo);
		model.addAttribute("boardList", bvo);
		return "board/board_list";
	}
	
	@RequestMapping(value="/board/get", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getBoard(HttpServletRequest req){
		System.out.println("getBoard");
		Map<String, Object> res = new HashMap<String, Object>();
		
		int page = (req.getParameter("page") == null) ? 0 : Integer.parseInt(req.getParameter("page"));
		System.out.println("page"+page);
		
		
		int totalCount = bService.getCount();
		
		pageVO pvo = new pageVO(page, totalCount);
		System.out.println(totalCount);
		System.out.println("end : " + pvo.getEndPage() + " / start : " + pvo.getStartPage());
		
		
		List<BoardVO> bvo = bService.getBoardList(pvo);
		if(bvo == null) {
			res.put("code", "001");
		}else {
			System.out.println(bvo);
			res.put("boardList", bvo);
			res.put("boardPage", pvo);
			res.put("code", "000");
		}
		
		return res;
	}
	
	@RequestMapping(value="/board/insert", method = RequestMethod.POST)
	@ResponseBody
	public Map<String, String> insertBoard(HttpServletRequest req){
		Map<String, String> res = new HashMap<String, String>();
		
		//값 세팅
		String title = req.getParameter("title");
		String contents = req.getParameter("contents");
		HttpSession session = req.getSession();
		
		String id = (String)session.getAttribute("userid");
		
		BoardVO bvo = new BoardVO();
		bvo.setTitle(title);
		bvo.setContents(contents);
		bvo.setUserid(id);
		
		
		System.out.println(bvo);
		int result = bService.insertBoard(bvo);
		
		if(result > 0) {
			res.put("code", "000");
		}else {
			res.put("code", "001");
		}
		
		return res;
	}
	
	@RequestMapping(value="/board/boardInsertForm", method = RequestMethod.GET)
	public String InsertBoardForm(Model model, HttpServletRequest req) {
		System.out.println("insert_board");
		
		Date date = new Date();
		
		SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy년 MM월 dd일"); 
    	//원하는 데이터 포맷 지정
		String strNowDate = simpleDateFormat.format(date); 

		model.addAttribute("date", strNowDate);
		return "board/board_insert";
	}
	
	@RequestMapping(value="/board/detail", method = RequestMethod.POST)
	public String getDetail(HttpServletRequest req, Model model) {
		
		
		int bNo = Integer.parseInt(req.getParameter("bNo"));
		int result = bService.increaseCount(bNo);
		BoardVO bvo = bService.getBoardDetail(bNo);
		
		List<CommentVO> cList = bService.getCommentList(bNo);
		
		model.addAttribute("bvo", bvo);
		model.addAttribute("cList", cList);
		return "board/board_detail";
	}
	
	@RequestMapping(value="/board/comment", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, String> BoardComment (HttpServletRequest req){
		Map<String, String> res = new HashMap<String, String>();
		HttpSession session = req.getSession();
		
		
		int pkNo = Integer.parseInt(req.getParameter("pkNo"));
		String contents = req.getParameter("contents");
		String userid = (String)session.getAttribute("userid");
		
		CommentVO cvo = new CommentVO();
		
		cvo.setPkNo(pkNo);
		cvo.setContents(contents);
		cvo.setUserid(userid);
		
		int result = bService.insertComment(cvo);
		res.put("code", "000");
		
		return res;
	}
}
