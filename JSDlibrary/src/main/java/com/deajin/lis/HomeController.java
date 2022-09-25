package com.deajin.lis;

import java.net.http.HttpRequest;
import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.deajin.lis.book.service.BookService;
import com.deajin.lis.commons.BookVO;
import com.deajin.lis.commons.UserVO;
import com.deajin.lis.deachul.service.DeachulService;
import com.deajin.lis.deachul.vo.DeachulVO;
import com.deajin.lis.test.Service.testService;
import com.deajin.lis.util.sessionManager;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private testService service;
	
	private static sessionManager manager;
	
	@Autowired
	BookService bService;
	
	@Autowired
	DeachulService dService;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		String flag = "false";
		if(session.getAttribute("userid") != null) {
			flag = "true";
			UserVO user = new UserVO();
			
			user.setUserid((String)session.getAttribute("userid"));
			user.setUsername((String)session.getAttribute("username"));
			user.setPhone((String)session.getAttribute("phone"));
			model.addAttribute("user", user);
		}
		
		model.addAttribute("flag", flag);
		return "main";
	}
	
	@RequestMapping(value="/move", method=RequestMethod.GET)
	public String move(Model model) {
		
		model.addAttribute("test", "테스트용 이동");
		return "test_page";
	}
	
	
	@RequestMapping(value="/testmove", method=RequestMethod.GET)
	public String testmove(Model model) {
		List<UserVO> list = service.getTestUser();
		for(UserVO item : list) {
			System.out.println(item.toString());
		}
		model.addAttribute("test", list);
		return "test_page";
	}
	
	
	
	@RequestMapping(value="/qmove", method=RequestMethod.GET)
	public String quick() {
		
		return "test/test_login"; 
	}
	
	
	@RequestMapping(value="/testlogin", method=RequestMethod.GET)
	public String testlogin(UserVO vo,HttpServletRequest req, Model model) {
		
		 
		System.out.println(vo);
		
		HashMap<String, String> seResult = sessionManager.setLoginSession(req, vo);
		
		//List<BookVO> bookList = bService.getBookList();
		
		System.out.println("결과 : " + seResult);
		
		model.addAttribute("sessionVO", req.getSession());
		//model.addAttribute("bookList", bookList);
		model.addAttribute("user", vo);
		return "test/test_deachul";
	}
	
	@RequestMapping(value="/deachulList", method=RequestMethod.GET)
	public String MypageDeachulList(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		
		String id = (String)session.getAttribute("userid");
		String name = (String)session.getAttribute("username");
		if(id == null) {
			id = "test1";
			name = "서민기";
		}
		
		
		List<HashMap<String, String>> dList = dService.getDeachulList(id);
		UserVO user = new UserVO();
		
		user.setUsername(name);
		user.setUserid(id);
		
		model.addAttribute("user", user);
		model.addAttribute("dList", dList);
		return "mypage/deachul_list";
	}
	
	@RequestMapping(value="/loginpage", method= RequestMethod.GET)
	public String loginPage() {
		
		return "user/login";
	}
	
	@RequestMapping(value="/signin", method= RequestMethod.GET)
	public String signInPage() {
		
		return "user/signin";
	}
}











