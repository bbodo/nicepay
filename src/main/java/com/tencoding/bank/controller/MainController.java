package com.tencoding.bank.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MainController {

	@GetMapping("/")
	public String mainRedirect() {
		// 뷰 리졸버 동작.
		// prefix : /WEB-INF/view/
		// sufix  : .jsp
		return "layout/main";
		
	}

	// 주소 설계
	// GET localhost:80/main-page
	@GetMapping("main-page")
	public String mainPage() {
		// 뷰 리졸버 동작.
		// prefix : /WEB-INF/view/
		// sufix  : .jsp
		return "layout/main";
	}
	@GetMapping("admin-page")
	public String adminPage(){
		return "admin/adminPage";
	}

}
