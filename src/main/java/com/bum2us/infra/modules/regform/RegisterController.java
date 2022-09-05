package com.bum2us.infra.modules.regform;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bum2us.infra.modules.member.Member;

@Controller
public class RegisterController {

	@Autowired
	RegisterServiceImpl service;
	
	@RequestMapping(value = "/register/register")
	public String register(Model model) {
		
		return "infra/user/regForm";
	}
	
	@RequestMapping(value = "/register/Result")
	public String result(Member mb) {
		
		System.out.println(mb.getGender());
		
		service.insertList(mb);
		
		return "infra/adnnin/memberList";
	}
}
