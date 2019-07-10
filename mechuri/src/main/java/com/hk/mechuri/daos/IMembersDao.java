package com.hk.mechuri.daos;

import java.util.Map;

import javax.servlet.http.HttpSession;

import com.hk.mechuri.dtos.membersDto;

public interface IMembersDao {
	
	public boolean signUpBoard(membersDto dto);
	
	public boolean compSignUpBoard(membersDto dto);
	
	
	public Map<String, Object> selectUserInfo(Map<String, Object>map) throws Exception;

	membersDto get(membersDto dto);
}
