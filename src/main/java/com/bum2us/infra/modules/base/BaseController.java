package com.bum2us.infra.modules.base;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.bum2us.infra.modules.member.MemberServiceImpl;

@Controller
public class BaseController {
	
	@Autowired
	MemberServiceImpl service;
	

	@RequestMapping(value ="/")
	public String login() throws Exception {
		
		return "infra/user/loginForm";
	}
	
	@RequestMapping(value = "/signup")
	public String register() throws Exception {
		
		return "infra/user/regForm";
	}
	
	@RequestMapping(value = "/bookmark")
	public String bookmark() throws Exception {
		
		return "infra/user/bookmarkForm";
	}
	
	@RequestMapping(value = "/chat")
	public String chat() throws Exception {
		
		return "infra/user/chatForm";
	}
	
	@RequestMapping(value = "/upload")
	public String upload() throws Exception {
		
		return "infra/user/uploadForm";
	}
	
	@RequestMapping(value = "/profile")
	public String profile() throws Exception {
		
		return "infra/user/profileForm";
	}
	
	@RequestMapping(value = "/post")
	public String postForm() throws Exception {
		return "infra/user/postForm";
	}
	
	@RequestMapping(value = "/administrator/login")
	public String adnninLogin() throws Exception{
		
		return "infra/adnnin/adnninLoginForm";
		
	}
	
	@RequestMapping(value = "/administrator/main")
	public String adnninMain(Model model) throws Exception{
		
		return "infra/adnnin/memberList";
	}
}
