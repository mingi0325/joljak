package com.deajin.lis.deachul.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.deajin.lis.deachul.dao.DeachulDAO;

@Repository
public class DeachulServiceImp implements DeachulService{
	
	@Autowired
	DeachulDAO dDao;
}
