package com.deajin.lis.test.ServiceImp;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.deajin.lis.commons.UserVO;
import com.deajin.lis.test.DAO.testDAO;
import com.deajin.lis.test.Service.testService;

@Repository
public class testServiceImp implements testService{

	@Autowired
	testDAO dao;
	
	@Override
	public List<UserVO> getTestUser(){
		return dao.getTestUser(); 
	}
}
