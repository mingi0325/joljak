package com.deajin.lis.sign.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.deajin.lis.commons.UserVO;

@Repository
public class SignDAO {

	@Autowired
	private SqlSession session;

	public UserVO Login(UserVO login) {
		return session.selectOne("signMapper.login", login);
	}

	public int insertUser(UserVO vo) {
		// TODO Auto-generated method stub
		return session.insert("signMapper.insertUser", vo);
	}

	public UserVO getUser(UserVO vo) {
		// TODO Auto-generated method stub
		return session.selectOne("signMapper.getUser", vo);
	}
}
