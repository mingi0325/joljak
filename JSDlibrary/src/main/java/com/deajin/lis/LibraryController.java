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
