package com.deajin.lis.deachul.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.deajin.lis.commons.BookVO;
import com.deajin.lis.deachul.service.DeachulService;

@Controller
public class DeachulController {
	//도서의 대출, 책 추가 등의 업무를 담당하는 컨트롤러
	
	@Autowired
	DeachulService dService;
	
	@RequestMapping(value="/quick", method=RequestMethod.GET)
	public String quickMove(@RequestParam("des1") String des1, @RequestParam("des2") String des2) {
		System.out.println("퀵무");
		return des1+"/"+des2; 
	}
	
	@RequestMapping(value="/deachul/insert", method=RequestMethod.POST)
	public String insertBook(BookVO vo) {
		
		System.out.println(vo);
		int result = dService.insertBook(vo);
		
		System.out.println(result);
		return "deachul/deachul_insert";
	}
}
