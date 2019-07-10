package com.hk.mechuri.service;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.hk.mechuri.daos.IMembersDao;
import com.hk.mechuri.daos.MembersDao;
import com.hk.mechuri.dtos.membersDto;

@Service
public class MembersService implements IMembersService {
	
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
	public boolean loginCheck(membersDto dto, HttpSession session) {
	
		return false;
	}

	@Override
	public boolean loginCheck(membersDto dto) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public void logout(HttpSession session) {
		// TODO Auto-generated method stub
		
	}

	
	/*@Override
	public Map<String, Object> selectUserInfo(Map<String, Object> map) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public int loginCheck(HashMap<String, String> hstParam) {
		// TODO Auto-generated method stub
		return 0;
	}*/
	
	
	/*@Override
	public Map<String, Object> selectUserInfo(Map<String, Object> map) throws Exception {
		return membersDao.selectUserInfo(map);
    }*/
	

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
