package com.yeo.timepod.service.admin;

import java.util.List;

import org.springframework.stereotype.Service;

import com.yeo.timepod.dao.admin.AdminMemberDao;
import com.yeo.timepod.dto.admin.AdminMemberDto;
import com.yeo.timepod.dto.admin.Req;

@Service
public class AdminMemberService {
	
	private AdminMemberDao adminMemberDao;
	private	Req req;
	
	public AdminMemberService(AdminMemberDao adminMemberDao, Req req) {
		this.adminMemberDao = adminMemberDao;
		this.req = req;
	}
	
	public List<AdminMemberDto> getAdminMember(){
		return this.adminMemberDao.getAdminMembers();
	}
	
	public AdminMemberDto loginMember(String loginId, String loginPw) {
		return this.adminMemberDao.loginMember(loginId, loginPw);
	}

}
