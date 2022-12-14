package com.bum2us.infra.modules.luv;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class LuvController {
	
	@Autowired
	LuvServiceImpl service;
	
	@ResponseBody
	@RequestMapping(value="/insertLuv")
	public Map<String,Object> insertLuv(Luv dto) throws Exception{
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		service.insert(dto);
		
		List<Luv> list = service.selectList(dto);
		
		map.put("list", list);		
		
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value="/deleteLuv")
	public Map<String,Object> deleteLuv(Luv dto) throws Exception{
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		service.delete(dto);
		
		List<Luv> list = service.selectList(dto);
		
		map.put("list", list);
		
		return map;
	}

	@ResponseBody
	@RequestMapping(value="/insertCommentLuv")
	public Map<String,Object> insertCommentLuv(Luv dto) throws Exception{
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		service.insert4Comment(dto);
		
		List<Luv> list = service.selectList4Comment(dto);
		
		map.put("list", list);		
		
		return map;
	}
	
	@ResponseBody
	@RequestMapping(value="/deleteCommentLuv")
	public Map<String,Object> deleteCommentLuv(Luv dto) throws Exception{
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		service.delete4Comment(dto);
		
		List<Luv> list = service.selectList4Comment(dto);
		
		map.put("list", list);
		
		return map;
	}
	
}
