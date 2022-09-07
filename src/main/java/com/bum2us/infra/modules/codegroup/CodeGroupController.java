package com.bum2us.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value = "/codegroup/")
public class CodeGroupController {
	@Autowired
	CodeGroupServiceImpl service;
	

	@RequestMapping(value = "codeGroupList")
	public String codeGroupList(Model model) throws Exception {

		List<CodeGroup> list = service.selectList();
		model.addAttribute("list", list);
		
		return "infra/adnnin/codeGroupList";
	}
	
	@RequestMapping(value = "codeGroupForm")
	public String codeGroupForm() throws Exception {
		
		return "infra/adnnin/codeGroupForm";
	}
	
	@RequestMapping(value = "Add")
	public String codeGroupAdd(CodeGroup cg) throws Exception {
		
		service.insertGroup(cg);
		
		return "infra/adnnin/codeGroupList";
	}
	
	@RequestMapping(value = "Src")
	public String codeGroupSrc(Model model, CodeGroupVo vo) throws Exception {
		
		List<CodeGroup> list = service.srcList(vo);
		model.addAttribute("list", list);
		
		return "infra/adnnin/codeGroupList";
	}
}
