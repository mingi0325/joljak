package com.deajin.lis.deachul.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.deajin.lis.commons.BookVO;
import com.deajin.lis.deachul.dao.DeachulDAO;
import com.deajin.lis.deachul.vo.DeachulVO;

@Repository
public class DeachulServiceImp implements DeachulService{
	
	@Autowired
	DeachulDAO dao;
	
	public int insertDeachul(List<DeachulVO> dList) {
		return dao.insertDeachul(dList);
	}
}
