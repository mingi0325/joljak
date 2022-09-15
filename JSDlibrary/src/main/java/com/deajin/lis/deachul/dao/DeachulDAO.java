package com.deajin.lis.deachul.dao;

import java.util.ArrayList;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.deajin.lis.commons.BookVO;
import com.deajin.lis.deachul.vo.DeachulVO;

@Repository
public class DeachulDAO {

	@Autowired
	private SqlSession session;
	
	public int insertDeachul(List<DeachulVO> dList) {
		// TODO Auto-generated method stub
		return session.insert("deachulMapper.insertDeachul", dList);
	}

	

}
