package com.deajin.lis.util;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.deajin.lis.commons.UserVO;

public class sessionManager {

	/**
	 * 로그인 시 세션에 값을 유지하는 함수 
	 * @param session
	 * @param vo
	 * @return HashMap<String, String>
	 * 		- msg : 결과 메세
	 * 		- code : 결과 코드(000 성공, 001 실패)
	 */
	public static HashMap<String, String> setLoginSession(HttpServletRequest req, UserVO vo){
		HashMap<String, String> result = new HashMap();
		
		HttpSession session = req.getSession();
		
		System.out.println("set session");
		
		session.setAttribute("userid", vo.getUserid());
		session.setAttribute("username", vo.getUsername());
		session.setAttribute("grade", vo.getGrade());
		if(session.getAttribute("userid")!= null && session.getAttribute("username")!= null && session.getAttribute("grade")!= null) {
			System.out.println("널 아님");
			
			result.put("msg", "로그인 성공");
			result.put("code", "000");
		}else {
			
			System.out.println("널 임");
			result.put("msg", "로그인 실패 - 세션에 로그인 정보를 저장하는데 실패했습니다.");
			result.put("code", "001");
		}
		return result;
	}
	
	
	/**
	 * 간단하게 사용할 세션 값 추가
	 * @param {HttpSession} session
	 * @param {String} key
	 * @param {String, int, vo...} value
	 */
	public void setSessionParam(HttpSession session, String key, Object value) {
		session.setAttribute(key, value);
	}
}
