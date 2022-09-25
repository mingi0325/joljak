package com.deajin.lis.sign.service;

import com.deajin.lis.commons.UserVO;

public interface SignService {

	UserVO Login(UserVO login);

	int insertUSer(UserVO vo);

	UserVO getUser(UserVO vo);

}
