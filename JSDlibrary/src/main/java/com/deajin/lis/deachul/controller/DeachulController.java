package com.deajin.lis.deachul.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletRequest;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.deajin.lis.commons.BookVO;
import com.deajin.lis.deachul.service.DeachulService;
import com.deajin.lis.deachul.vo.DeachulVO;

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
	@ResponseBody
	public Map<String, String> insertDeachul(HttpServletRequest req){
		Map<String, String> res = new HashMap<String, String>();
		String[] deachulList = req.getParameterValues("deachul");
		HttpSession session = req.getSession();
		
		String id = (String)session.getAttribute("userid");
		System.out.println("list " + id);
		List<DeachulVO> dList = new ArrayList();
		for(int i = 0; i < deachulList.length; i++) {
			DeachulVO dbvo = new DeachulVO();
			
			dbvo.setIsbn(deachulList[i]);
			dbvo.setUserid(id);
			
			dList.add(dbvo);
		}
		int result = dService.insertDeachul(dList);
		if(result > 0) {
			res.put("msg", "deachul test suc");
		}else {
			res.put("msg", "deachul test err");
		}
		
		return res;
	}
}
