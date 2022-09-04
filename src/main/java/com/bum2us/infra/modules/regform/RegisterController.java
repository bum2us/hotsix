package com.bum2us.infra.modules.regform;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class RegisterController {

	@Autowired
	RegisterServiceImpl service;
	
	@RequestMapping(value = "/register/register")
	public String register(Model model) {
		
		return "infra/adnnin/regForm";
	}
	
	@RequestMapping(value = "/register/Result")
	public String result(Register rg) {
		
		System.out.println("hello test");
		
		service.insertList(rg);
		
		return "infra/adnnin/memberList";
	}
}
