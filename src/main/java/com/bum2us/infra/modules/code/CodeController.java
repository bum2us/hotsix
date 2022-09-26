package com.bum2us.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	
	@RequestMapping(value = "/code/CodeList")
	public String codeList(@ModelAttribute("vo")CodeVo vo, Model model) throws Exception {
		
		vo.setVoData();	
		vo.setPageTotal(service.selectCount(vo));
		
		List<Code> list = service.selectList(vo);
		model.addAttribute("list",list);
		
		return "infra/adnnin/codeList";
	}
	
	@RequestMapping(value = "/codeForm")
	public String codeForm(@ModelAttribute("vo") CodeVo vo ,Model model) throws Exception {
		
		List<Code> list = service.selectListGroupName();
		model.addAttribute("list", list);
		
		if(vo.getUpCcSeq() != null && vo.getUpCcSeq() != 0) 
		{		
			Code item = service.selectOne(vo);
			model.addAttribute("item", item);
			item.printAll();
		}
		
		return "infra/adnnin/codeForm";
	}
	
	@RequestMapping(value = "/code/src")
	public String codeSrc(Model model,@ModelAttribute("vo") CodeVo vo) throws Exception {
		
		vo.setVoData();	
		vo.setPageTotal(service.selectCount(vo));
		
		List<Code> list = service.searchCode(vo);
		model.addAttribute("list", list);		
		
		return "infra/adnnin/codeList";
	}
	
	@RequestMapping(value="/codeForm/add")
	public String codeAdd(Code cd,@ModelAttribute("vo")CodeVo vo, RedirectAttributes redirectAttributes) throws Exception {
		
		vo.setVoData();	
		vo.setPageTotal(service.selectCount(vo));
		
		System.out.println("getPageNumber : " + vo.getPageNumber());
		System.out.println("getPageRange : " + vo.getPageRange());
		System.out.println("getPageSize : " + vo.getPageSize());
		System.out.println("getPageTotal : " + vo.getPageTotal());
		
		
		service.insertCode(cd);
		
		redirectAttributes.addFlashAttribute("vo", vo);
		
		return "redirect:/code/CodeList";
	}
	
	@RequestMapping(value="/codeForm/upd")
	public String codeUpdate(Model model,Code cd,@ModelAttribute("vo")CodeVo vo) throws Exception {
		
		vo.setVoData();	
		vo.setPageTotal(service.selectCount(vo));
		
		System.out.println("getPageNumber : " + vo.getPageNumber());
		System.out.println("getPageRange : " + vo.getPageRange());
		System.out.println("getPageSize : " + vo.getPageSize());
		System.out.println("getPageTotal : " + vo.getPageTotal());
		
		service.updateCode(cd); 
		
		return "infra/adnnin/codeList";
	}
}
