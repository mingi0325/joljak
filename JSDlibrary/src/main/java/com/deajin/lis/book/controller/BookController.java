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
import com.deajin.lis.commons.pageVO;
import com.deajin.lis.deachul.vo.PickVO;

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
	
	@RequestMapping(value="/book/book_detail", method= RequestMethod.POST)
	public String signInPage(Model model, HttpServletRequest req) {
		
		BookVO detail = bService.getBookDetail(req.getParameter("isbn")); 
		
		//책 상세보기에서 필요한 정보
		model.addAttribute("book", detail);
		
		return "library/book_detail";
	}
	
	@RequestMapping(value="/book/pick", method=RequestMethod.POST)
	public @ResponseBody Map<String, String> pickBook(@RequestParam("isbn") String isbn, HttpServletRequest req){
		Map<String, String> res = new HashMap<String, String>();
		HttpSession session = req.getSession();
		
		String id = (String)session.getAttribute("userid");
		System.out.println("isbn"+isbn);
		
		System.out.println("id" + id);
		if(id == null) {
			res.put("msg", "먼저 로그인을 해야합니다.");
			return res;
		}
		
		PickVO pick = new PickVO();
		
		//도서중복 체크 넣어야함
		
		pick.setIsbn(isbn);
		pick.setUserid(id);
		int result = bService.pickBook(pick);
		if(result > 0) {
			res.put("msg", "해당 도서를 찜 했습니다.");			
		}else {
			res.put("msg", "처리 과정중 문제가 발생했습니다.");
		}
		return res;
	}
}
