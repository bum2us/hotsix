package com.bum2us.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	
	@RequestMapping(value = "/code/CodeList")
	public String codeList(@ModelAttribute("vo")CodeVo vo, Model model) throws Exception {
		
		vo.setPageTotal(service.selectCount(vo));
		vo.setPageSize(10);
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list",list);
		
		return "infra/adnnin/codeList";
	}
	
	@RequestMapping(value = "/codeForm")
	public String codeForm(@ModelAttribute("vo") CodeVo vo ,Model model) throws Exception {
		
		List<Code> list = service.selectListGroupName();
		model.addAttribute("list", list);
		
		if(vo.getUpCodeSeq() != null) 
		{		
			Code item = service.selectOne(vo);
			model.addAttribute("item", item);
			item.printAll();
		}
		
		return "infra/adnnin/codeForm";
	}
	
	@RequestMapping(value = "/code/src")
	public String codeSrc(Model model,@ModelAttribute("vo") CodeVo vo) throws Exception {
		
		vo.setPageTotal(service.selectCount(vo));
		vo.setPageSize(10);
		List<Code> list = service.searchCode(vo);
		model.addAttribute("list", list);		
		
		return "infra/adnnin/codeList";
	}
	
	@RequestMapping(value="/codeForm/add")
	public String codeAdd(Code cd) throws Exception {
		
		service.insertCode(cd);
		
		return "infra/adnnin/codeList";
	}
	
	@RequestMapping(value="/codeForm/upd")
	public String codeUpdate(Model model,Code cd) throws Exception {
		 
		service.updateCode(cd); 
		
		return "redirect:/code/CodeList";
	}
}
