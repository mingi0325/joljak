package com.deajin.lis.deachul.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

import com.deajin.lis.commons.BookVO;
import com.deajin.lis.deachul.vo.DeachulVO;

public interface DeachulService {

	int insertDeachul(List<DeachulVO> dList);

	List<HashMap<String, String>> getDeachulList(String id);

	

}
