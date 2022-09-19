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
	
	@RequestMapping(value ="member/memberForm")
	public String memberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		Member item = service.selectOne(vo);
		model.addAttribute("item", item);
		
		System.out.println(item.getName());
		
		return "infra/adnnin/memberForm";
	}
	
	@RequestMapping(value ="member/formAction")
	public String memberAction(@ModelAttribute("vo") Member vo) throws Exception{
		
		service.updateOne(vo);
		
		return "infra/adnnin/mamberList";
	}
	
	@RequestMapping(value = "/infoReg")
	public String regResult(Model model,Member mb) throws Exception {
				
		service.insertList(mb);
		model.addAttribute("meminfo", mb);
		
		return "infra/user/infoFormReg";
	}
	
	
	@RequestMapping(value = "/main")
	public String main(Model model,Member mb,HttpSession httpSession) throws Exception {
		
		if(httpSession.getAttribute("sessSql") != null)
			return "infra/user/mainForm";
		
		Member item = service.chkLogin(mb);
		
		if(item == null) 
		{	
			model.addAttribute("item", 0);
			return "infra/user/loginForm";
		}
		
		if(httpSession.getAttribute("sessSql") == null) 
		{
			httpSession.setAttribute("sessSql", item.getSeq());
			httpSession.setAttribute("sessId", item.getId());
			httpSession.setAttribute("sessPassword", item.getPassword());
			httpSession.setAttribute("sessNickname", item.getNickname());
			httpSession.setAttribute("sessEmail", item.getEmail());
			httpSession.setAttribute("sessPhone", item.getPhone());
			httpSession.setAttribute("sessGender", item.getGender());
			httpSession.setAttribute("sessDob", item.getDob());
			httpSession.setAttribute("sessComment", item.getComment());
		}
		
		model.addAttribute("item", item);
		
		return "infra/user/mainForm";
	}
}

