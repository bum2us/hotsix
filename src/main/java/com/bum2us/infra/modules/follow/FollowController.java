package com.bum2us.infra.modules.follow;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bum2us.infra.modules.member.Member;

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
	
	@ResponseBody
	@RequestMapping(value="/deleteFollow")
	public Map<String,Object> deleteFollow (Follow dto) throws Exception{
		
		Map<String , Object> result = new HashMap<String, Object>();
		
		service.delete(dto);
		
		return result;
		
	}
	
	@ResponseBody
	@RequestMapping(value="/selectFollower")
	public Map<String,Object> selectFollower (Follow dto) throws Exception{
		
		Map<String , Object> result = new HashMap<String, Object>();
		
		List<Member> list = service.selectListFollower(dto);
		
		if(list == null) {
			result.put("rt", "fail");
		}else {
			result.put("rt", "success");
			
			result.put("list", list);
		}
		
		return result;
		
		
	}
	
	@ResponseBody
	@RequestMapping(value="/selectFollow")
	public Map<String,Object> selectFollow (Follow dto) throws Exception{
		
		Map<String , Object> result = new HashMap<String, Object>();
		
		List<Member> list = service.selectListFollow(dto);
		
		if(list == null) {
			result.put("rt", "fail");
		}else {
			result.put("rt", "success");
			
			result.put("list", list);
		}
		
		return result;
		
		
	}
	
}
