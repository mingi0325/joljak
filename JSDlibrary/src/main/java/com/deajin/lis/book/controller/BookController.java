package com.deajin.lis.book.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.deajin.lis.book.service.BookService;
import com.deajin.lis.commons.BookVO;
import com.deajin.lis.commons.pageVO;

@Controller
public class BookController {

	@Autowired
	BookService bService;
	
	@RequestMapping(value="/book/insert", method=RequestMethod.POST)
	public String insertBook(BookVO vo) {
		
		System.out.println(vo);
		
		vo.setUserid("test1");//테스트용 로그인 이후 세션의 값으로 변경해야함
		int result = bService.insertBook(vo);
		
		System.out.println(result);
		return "deachul/deachul_insert";
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
}
