package com.bum2us.infra.modules.comment;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommentController {

	@Autowired
	CommentServiceImpl service;
	
	@RequestMapping(value="/insertComment")
	public Map<String,Object> insertComment(HttpSession httpSession,Model model,Comment dto) throws Exception {
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		service.insert(dto);
		model.addAttribute("item", dto);
		
		return map;
	}
}
