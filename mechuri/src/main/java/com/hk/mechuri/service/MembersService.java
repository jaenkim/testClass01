package com.hk.mechuri.service;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.mechuri.daos.IMembersDao;
import com.hk.mechuri.daos.MembersDao;
import com.hk.mechuri.dtos.membersDto;

@Service
public abstract class MembersService implements IMembersService {
	
	@Autowired
	private IMembersDao membersDao;
	
	@Override
	public boolean signUpBoard(membersDto dto) {
		return membersDao.signUpBoard(dto); 
	}

	@Override
	public boolean compSignUpBoard(membersDto dto) {
		return membersDao.compSignUpBoard(dto); 
	}
	@Override
	public Map<String, Object> selectUserInfo(Map<String, Object> map) throws Exception {
		return null/*MembersDao.selectUserInfo(map)*/;
    }
	
/*//	<!-- 로그인 -->
	@Override
	public membersDto memLoginBoard(membersDto dto) {
		System.out.println("memLoginBoard Service");
		return membersDao.memLoginBoard(dto);
	}
	

	public static boolean loginChk(Map<String, String> map) {
		// TODO Auto-generated method stub
		return false;
	}*/


}
