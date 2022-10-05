package com.bum2us.infra.modules.comment;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CommentController {

	@Autowired
	CommentServiceImpl service;
	
	@ResponseBody
	@RequestMapping(value="/insertComment")
	public Map<String,Object> insertComment(HttpSession httpSession,Model model,Comment dto) throws Exception {
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		service.insert(dto);
		
		List<Comment>list = service.selectList(dto);
		
		if(list != null) {
			map.put("rt", "success");
			map.put("list", list);
		}
		else {
			map.put("rt", "fail");
		}
		
		
		return map;
	}
}
