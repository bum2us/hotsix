package com.bum2us.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/codegroup/")
public class CodeGroupController {
	@Autowired
	CodeGroupServiceImpl service;
	

	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo,Model model) throws Exception {
		
		vo.setPageTotal(service.selectListCount(vo));
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/adnnin/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm(@ModelAttribute("vo") CodeGroupVo vo,Model model) throws Exception {
		
		System.out.println("-----" + vo.getUpCcgSeq());
		
		if(vo.getUpCcgSeq() != null) {
			
		   CodeGroup cg	= service.selectOne(vo);
		   model.addAttribute("item", cg);
		}
		
		return "infra/adnnin/codeGroupForm";
	}
	
	@RequestMapping(value = "add")
	public String codeGroupAdd(@ModelAttribute("vo") CodeGroupVo vo,CodeGroup cg,Model model) throws Exception {
		
		service.insertGroup(cg);
		
		vo.setPageTotal(service.selectListCount(vo));
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/adnnin/codeGroupList";
	}
	
	@RequestMapping(value= "edit")
	public String codeGroupEdit(@ModelAttribute("vo") CodeGroupVo vo,CodeGroup cg,Model model) throws Exception{
		
		System.out.println("----test: "+ cg.getCcgSeq());
		service.updateGroup(cg);
		
		vo.setPageTotal(service.selectListCount(vo));
		
		List<CodeGroup> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/adnnin/codeGroupList";
	}
	
}
