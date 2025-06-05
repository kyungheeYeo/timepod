package com.yeo.timepod.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.yeo.timepod.dto.admin.AdminLoginedMember;
import com.yeo.timepod.dto.admin.AdminMemberDto;
import com.yeo.timepod.dto.admin.Req;
import com.yeo.timepod.service.admin.AdminMemberService;

import util.Util;



@Controller
@RequestMapping("/timepod/admin")
public class AdminMemberController {
	
	private	AdminMemberService adminMemberService;
	private Req req;
	
	public AdminMemberController(AdminMemberService adminMemberService, Req req) {
		this.adminMemberService = adminMemberService;
		this.req = req;
	}
	
	@GetMapping("")
	public String login() {
		return "timepod/admin/login";
	}	
	
	@PostMapping("/doLogin")
	@ResponseBody
	public String doLogin(String loginId, String loginPw) {
		
	   
		String encryptedPw = Util.encryptSHA256(loginPw);
		
		AdminMemberDto adminMemberDto = this.adminMemberService.loginMember(loginId, encryptedPw);
		
		if(adminMemberDto == null) {
			return util.Util.loginConfirm();
		}
		
		if (adminMemberDto.getLoginPw().equals(Util.encryptSHA256(loginPw)) == false) {
			return Util.jsReplace("비밀번호가 일치하지 않습니다", "login");
		}
		
		this.req.login(new AdminLoginedMember(
				adminMemberDto.getId(),
				adminMemberDto.getName(),
				adminMemberDto.getLoginId(),
				adminMemberDto.getLoginPw(),
				adminMemberDto.getAuthLevel()
			));
		
		System.out.println("loginId = " + loginId);
		System.out.println("암호화된 loginPw = " + Util.encryptSHA256(loginPw));
		
		return Util.loginSuccese();
		
	}
	
	

}
