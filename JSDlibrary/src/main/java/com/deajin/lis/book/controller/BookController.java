package com.deajin.lis.book.controller;

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
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.deajin.lis.book.service.BookService;
import com.deajin.lis.commons.BookVO;
import com.deajin.lis.commons.CommentVO;
import com.deajin.lis.commons.pageVO;

@Controller
public class BookController {

	@Autowired
	BookService bService;
	
	@RequestMapping(value="/book/insert", method=RequestMethod.POST)
	@ResponseBody
	public Map<String,String> insertBook(BookVO vo, HttpServletRequest req) {
		Map<String, String> res = new HashMap<String, String>();
		System.out.println(vo);
		HttpSession session = req.getSession();
		vo.setUserid((String)session.getAttribute("userid"));//테스트용 로그인 이후 세션의 값으로 변경해야함
		int result = bService.insertBook(vo);
		if(result == 1) {
			res.put("code", "000");
		}else {
			res.put("code", "001");
		}
		System.out.println(result);
		return res;
	}
	
	
	@RequestMapping(value="/book/getList", method=RequestMethod.GET)
	public String getList(Model model, HttpServletRequest req) {
		
		int page = Integer.parseInt(req.getParameter("page"));
		
		int totalCount = bService.getCount();
		pageVO pvo = new pageVO(page, totalCount);
		System.out.println(totalCount);
		System.out.println("end : " + pvo.getEndPage() + " / start : " + pvo.getStartPage());
		List<BookVO> bList = bService.getBookList(pvo);
		
		
		System.out.println(bList);
		model.addAttribute("pvo", pvo);
		model.addAttribute("bList", bList);
		return "library/book_list";
	}
	
	@RequestMapping(value="/book/get", method=RequestMethod.GET)
	@ResponseBody
	public Map<String, Object> getBookList(Model model, HttpServletRequest req) {
		Map<String, Object> res = new HashMap<String, Object>();
		
		int page = Integer.parseInt(req.getParameter("page"));
		
		int totalCount = bService.getCount();
		pageVO pvo = new pageVO(page, totalCount);
		System.out.println(totalCount);
		System.out.println("end : " + pvo.getEndPage() + " / start : " + pvo.getStartPage());
		List<BookVO> bList = bService.getBookList(pvo);
		
		
		if(bList == null) {
			res.put("code", "001");
		}else {
			System.out.println(bList);
			res.put("bookList", bList);
			res.put("bookPage", pvo);
			res.put("code", "000");
		}
		return res;
	}
	
	@RequestMapping(value="/book/book_detail", method= RequestMethod.POST)
	public String signInPage(Model model, HttpServletRequest req) {
		
		BookVO detail = bService.getBookDetail(req.getParameter("bkNo")); 
		List<CommentVO> cList = bService.getCommentList(Integer.parseInt(req.getParameter("bkNo")));
		//책 상세보기에서 필요한 정보
		model.addAttribute("book", detail);
		model.addAttribute("cList", cList);
		System.out.println(cList);
		return "library/book_detail";
	}
	
	
	@RequestMapping(value="/book/insertForm", method=RequestMethod.GET)
	public String insertForm(Model model, HttpServletRequest req) {
		
		
		return "book/book_insert";
	}
	
	@RequestMapping(value="/book/comment", method = RequestMethod.GET)
	@ResponseBody
	public Map<String, String> bookComment (HttpServletRequest req){
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
