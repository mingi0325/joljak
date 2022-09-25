package com.deajin.lis.sign.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.deajin.lis.commons.UserVO;
import com.deajin.lis.sign.dao.SignDAO;

@Repository
public class SignSerivceImp implements SignService{

	@Autowired
	SignDAO dao;
	
	@Override
	public UserVO Login(UserVO login) {
		return dao.Login(login);
	}

	@Override
	public int insertUSer(UserVO vo) {
		// TODO Auto-generated method stub
		return dao.insertUser(vo);
	}

	@Override
	public UserVO getUser(UserVO vo) {
		// TODO Auto-generated method stub
		return dao.getUser(vo);
	}

}
