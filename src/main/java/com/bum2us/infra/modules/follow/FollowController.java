package com.bum2us.infra.modules.follow;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class FollowController {

	@Autowired
	FollowServiceImpl service;
	
	@ResponseBody
	@RequestMapping(value="/activeFollow")
	public Map<String,Object> activeFollow (Follow dto) throws Exception{
		
		Map<String , Object> result = new HashMap<String, Object>();

		
		service.insert(dto);
		
		
		return result;
	}
	
	
}
