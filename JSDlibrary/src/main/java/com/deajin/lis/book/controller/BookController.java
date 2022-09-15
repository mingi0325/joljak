package com.deajin.lis.book.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.deajin.lis.book.service.BookService;
import com.deajin.lis.commons.BookVO;

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
}
