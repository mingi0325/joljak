package com.deajin.lis;

import java.text.DateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.deajin.lis.commons.UserVO;
import com.deajin.lis.test.Service.testService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@Autowired
	private testService service;
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
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
		
		return "deachul/deachul_insert"; 
	}
}
