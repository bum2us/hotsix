package com.bum2us.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/member/memberList")
	public String memberList (Model model) throws Exception {
		
		List<Member> list = service.selectList();
		model.addAttribute("list", list);
		
		return "infra/adnnin/memberList";
	}
	
	@RequestMapping(value = "/member/src")
	public String src(Model model,MemberVo vo) throws Exception {
		
		
		System.out.println(vo.getShOption());
		System.out.println(vo.getShValue());
		System.out.println(vo.getShDateOption());
		System.out.println(vo.getShDateStart());
		System.out.println(vo.getShDateEnd());	
		
		List<Member>list = service.insertList(vo);
		model.addAttribute("list", list);
		
		return "infra/adnnin/memberList";
	}
	
	@RequestMapping(value = "/signup")
	public String register() throws Exception {
		
		return "infra/user/regForm";
	}
	
	@RequestMapping(value = "/info")
	public String result(Model model,Member mb) throws Exception {
				
		service.insertList(mb);
		model.addAttribute("meminfo", mb);
		
		return "infra/user/info";
	}
	
	@RequestMapping(value ="/login")
	public String login() throws Exception {
		
		return "infra/user/login";
	}
	
	
}
