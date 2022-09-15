package com.bum2us.infra.modules.member;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/member/memberList")
	public String memberList (@ModelAttribute("vo")MemberVo vo, Model model) throws Exception {
		
		vo.setPageTotal(service.selectCount());
		List<Member> list = service.selectList(vo);
		
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
	
	@RequestMapping(value = "/infoReg")
	public String regResult(Model model,Member mb) throws Exception {
				
		service.insertList(mb);
		model.addAttribute("meminfo", mb);
		
		return "infra/user/infoFormReg";
	}
	
	
	@RequestMapping(value = "/main")
	public String main(Model model,MemberVo vo,HttpSession httpSession) throws Exception {
		
		if(httpSession.getAttribute("sessSql") != null)
			return "infra/user/mainForm";
		
		Member mb = service.chkLogin(vo);
		
		if(mb == null) 
		{	
			model.addAttribute("item", 0);
			return "infra/user/loginForm";
		}
		
		if(httpSession.getAttribute("sessSql") == null) 
		{
			httpSession.setAttribute("sessSql", mb.getSeq());
			httpSession.setAttribute("sessId", mb.getId());
			httpSession.setAttribute("sessPassword", mb.getPassword());
			httpSession.setAttribute("sessNickname", mb.getNickname());
			httpSession.setAttribute("sessEmail", mb.getEmail());
			httpSession.setAttribute("sessPhone", mb.getPhone());
			httpSession.setAttribute("sessGender", mb.getGender());
			httpSession.setAttribute("sessDob", mb.getDob());
			httpSession.setAttribute("sessComment", mb.getComment());
		}
		
		model.addAttribute("item", mb);
		
		return "infra/user/mainForm";
	}
}

