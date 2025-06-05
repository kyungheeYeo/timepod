package com.yeo.timepod.controller.admin;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("timepod/admin")
public class AdminDashboardController {
	
	@GetMapping("/")
	public String login() {
		return "timepod/admin/login";
	}
	
	@GetMapping("/dashboard")
	public String dashBoard() {
		return "timepod/admin/dashboard";
	}


}
