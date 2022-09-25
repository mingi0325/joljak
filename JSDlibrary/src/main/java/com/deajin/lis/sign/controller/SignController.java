package com.deajin.lis.sign.controller;

import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.deajin.lis.commons.UserVO;
import com.deajin.lis.sign.service.SignService;
import com.deajin.lis.util.sessionManager;

/**
 * 회원관리
 * @author seomingi
 *
 */
@Controller
public class SignController {

	@Autowired
	SignService sService;
	
	sessionManager manager;
	
	@RequestMapping(value="/sign/login", method= RequestMethod.POST)
	public String login(Locale locale, Model model, HttpServletRequest req) {
		String id = req.getParameter("id");
		String pass = req.getParameter("pass");
		
		UserVO login = new UserVO();
		
		login.setUserid(id);
		login.setPassword(pass);
		
		System.out.println(login);
		
		UserVO user = sService.Login(login);
		String flag = "false";
		if(user != null) {
			HashMap<String, String> result = manager.setLoginSession(req, user);
			if(result.get("code").equals("000")) {
				flag = "true";
				model.addAttribute("user", user);				
			}
		}
		
		System.out.println(user);
		model.addAttribute("flag", flag);
		return "main";
	}
	
	@RequestMapping(value="/sign/logout", method= RequestMethod.GET)
	public String logout(Locale locale, Model model, HttpServletRequest req) {
		HttpSession session = req.getSession();
		
		session.removeAttribute("userid");
		session.removeAttribute("username");
		session.removeAttribute("phone");
		
		model.addAttribute("flag", "false");
		return "main";
	}
	
	@RequestMapping(value="/sign/insert", method=RequestMethod.POST)
	@ResponseBody
	public Map<String, String> insertUser(UserVO vo){
		Map<String, String> res = new HashMap<String, String>();
		UserVO pkUser = sService.getUser(vo);
		
		if(pkUser != null) {
			res.put("code", "002");
			res.put("msg", "회원가입에 이미 존재하는 회원아이디 입니다.");
			
			return res;
		}
		int result = sService.insertUSer(vo);
		if(result > 0) {
			res.put("code", "000");
			res.put("msg", "회원가입이 완료되었습니다.");
		}else {
			res.put("code", "001");
			res.put("msg", "회원가입에 실패했습니다.");
		}
		
		return res;
	}
	
	
	
	
	
	
	
}
