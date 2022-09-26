package com.bum2us.infra.modules.member;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bum2us.infra.modules.code.CodeServiceImpl;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/member/memberList")
	public String memberList (@ModelAttribute("vo")MemberVo vo, Model model) throws Exception {
			
		vo.setVoData();		
	
		vo.setPageTotal(service.selectCount(vo));
		
		List<Member> list = service.selectList(vo);

		model.addAttribute("list", list);
		
		return "infra/adnnin/memberList";
	}
	
	@RequestMapping(value ="member/memberForm")
	public String memberForm(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		if(vo.getShSeq() != null) {
			
			Member item = service.selectOne(vo);
			model.addAttribute("item", item);
			
			System.out.println(item.getMmName());
			
		}
		
		return "infra/adnnin/memberForm";
	}
	
	@RequestMapping(value ="/member/formAction")
	public String memberAction(@ModelAttribute("vo")MemberVo vo, Member item, Model model) throws Exception{
		
		service.updateOne(item);
		
		vo.setVoData();		
		
		vo.setPageTotal(service.selectCount(vo));
		
		List<Member> list = service.selectList(vo);

		model.addAttribute("list", list);
		
		return "infra/adnnin/memberList";
	}
	
	@ResponseBody
	@RequestMapping(value="member/chkId")
	public Map<String,Object> memberChkId(Member vo) throws Exception{
		
		Map<String,Object> result = new HashMap<String,Object>();
		
		System.out.println("검색ID : "+ vo.getMmId());
		
		result.put("chkCount", service.chkId(vo.getMmId()));
		
		System.out.println("실행결과 count : " + result.get("chkCount"));
		
		return result; 
	}
	
	@RequestMapping(value = "/member/memberAdd")
	public String regResult(@ModelAttribute("vo") MemberVo vo, Model model,Member mb) throws Exception {
				
		service.insertList(mb);
		model.addAttribute("item", mb);
		
		
		//일반 회원 가입에서는 아래 폼으로 이동시키도록
		//return "infra/user/infoFormReg";
		
		return "infra/adnnin/memberForm";
	}
	
	@RequestMapping(value ="/member/memberUelete")
	public String memberUelete(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		service.uelete(vo);
		
		vo.setVoData();		
		
		vo.setPageTotal(service.selectCount(vo));
		
		List<Member> list = service.selectList(vo);

		model.addAttribute("list", list);
		
		return "infra/adnnin/memberList";
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
			/*
			 * httpSession.setAttribute("sessSql", item.getSeq());
			 * httpSession.setAttribute("sessId", item.getId());
			 * httpSession.setAttribute("sessPassword", item.getPassword());
			 * httpSession.setAttribute("sessNickname", item.getNickname());
			 * httpSession.setAttribute("sessEmail", item.getEmail());
			 * httpSession.setAttribute("sessPhone", item.getPhone());
			 * httpSession.setAttribute("sessGender", item.getGender());
			 * httpSession.setAttribute("sessDob", item.getDob());
			 * httpSession.setAttribute("sessComment", item.getComment());
			 */
		}
		
		model.addAttribute("item", item);
		
		return "infra/user/mainForm";
	}
}

