package com.deajin.lis;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.deajin.lis.commons.BookVO;



@Controller
public class LibraryController {

	@RequestMapping(value="/library/BookList", method=RequestMethod.GET)
	public String getBookList(Model model) {
		
		BookVO bvo1 = new BookVO("지적 대화를 위한 넓고 얕은 지식 1","800"); 
		BookVO bvo2 = new BookVO("대충경재","500");
		List<BookVO> bookList = new ArrayList();
	
		bookList.add(bvo1);
		bookList.add(bvo2);
		
		model.addAttribute("list", bookList);
		return "library/book_list";
	}
}
