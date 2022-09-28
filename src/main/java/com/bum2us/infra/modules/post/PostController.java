package com.bum2us.infra.modules.post;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class PostController {

	
	@Autowired
	PostServiceImpl service;
	
	@RequestMapping(value="postList")
	public String postList(Model model,@ModelAttribute("vo")PostVo vo) throws Exception{
		
		vo.setPageTotal(service.selectCount(vo));
		
		List<Post> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/adnnin/postList";
	}
	
}
