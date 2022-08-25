package com.deajin.lis.test.DAO;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.deajin.lis.commons.UserVO;

@Repository
public class testDAO {

	@Autowired
	private SqlSession session;

	public List<UserVO> getTestUser() {
		// TODO Auto-generated method stub
		return session.selectList("testMapper.getUser");
	}
	
	
	
}
