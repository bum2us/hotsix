package com.bum2us.infra.modules.post;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	
	@RequestMapping(value ="postUpload")
	public String postUpload(Model model,Post dto) throws Exception
	{
		
		service.insert(dto);
		
		return "infra/user/uploadForm";
	}
	
	@ResponseBody
	@RequestMapping(value="getPost")
	public Map<String,Object> getPost(Model model,Post dto) throws Exception{
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		System.out.println(dto.getPostSeq());
		
		Post item = service.selectOne(dto.getPostSeq());
		
		System.out.println(item);
		
		if(item != null) 
		{
			map.put("rt", "success");
			map.put("imgSrc", item.getUpPath() + item.getUpUuidName());
			map.put("nickname", item.getMmNickname());
			map.put("content", item.getPostContent());
		}
		else 
		{
			map.put("rt", "fail");
		}
		
		
		
		return map;
	}
}
