package com.yeo.timepod.dto.admin;

import java.io.IOException;

import org.springframework.context.annotation.Scope;
import org.springframework.context.annotation.ScopedProxyMode;
import org.springframework.stereotype.Component;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import lombok.Getter;

@Component
@Scope(value = "request", proxyMode = ScopedProxyMode.TARGET_CLASS)
public class Req {
	
	@Getter
	private AdminLoginedMember adminLoginedMember;
	private HttpServletResponse resp;
	private HttpSession session;

	public Req(HttpServletRequest request, HttpServletResponse resp) {
		
		this.resp = resp;
		
		this.session = request.getSession();
		
		this.adminLoginedMember = (AdminLoginedMember) session.getAttribute("loginedMember");
		
		if (this.adminLoginedMember == null) {
			this.adminLoginedMember = new AdminLoginedMember();
		}
				
		request.setAttribute("req", this);
	}
	
	
	
	public void jsPrintReplace(String msg, String uri) {
		this.resp.setContentType("text/html; charset=UTF-8;");
		
		try {
			this.resp.getWriter().append(util.Util.jsReplace(msg, uri));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}
	
	public void login(AdminLoginedMember adminLoginedMember) {
		
		this.adminLoginedMember = adminLoginedMember;
		this.session.setAttribute("adminLoginedMember", adminLoginedMember);
		
	}
	
	
}
