package com.deajin.lis;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.http.HttpHeaders;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.deajin.lis.commons.BookVO;

import net.nurigo.java_sdk.exceptions.CoolsmsException;



@Controller
public class LibraryController {

	@RequestMapping(value="/library/BookList", method=RequestMethod.GET)
	public String getBookList(Model model) {
		
		BookVO bvo1 = new BookVO("지적 대화를 위한 넓고 얕은 지식 1","800"); 
		BookVO bvo2 = new BookVO("대충경재","500");
		List<BookVO> bookList = new ArrayList();
	
		BookVO bvo3 = new BookVO("섹스잘하는법 ","600");
		
		bookList.add(bvo1);
		bookList.add(bvo2);
		bvo3.setTitle("친구 잘 사귀는 방");
		System.out.println("바뀐 책 이름 : " + bvo3.getTitle());
		bookList.add(bvo3);
		
		
		
		model.addAttribute("list", bookList);
		return "library/book_list";
	}
	
	@SuppressWarnings("unchecked")
	@RequestMapping(value="/library/test", method=RequestMethod.GET)	
	public @ResponseBody Map<String, String> sendSms(@RequestParam("id") String id, @RequestParam("pass") String pass) throws CoolsmsException {
		Map<String, String> res = new HashMap<String, String>();	
		
		HashMap<String, String> set = new HashMap<String, String>();
		
		res.put("msg", "ajax test");
				
		System.out.println("id : " + id);
		System.out.println("pass : " + pass);
		return res;
	}

}
