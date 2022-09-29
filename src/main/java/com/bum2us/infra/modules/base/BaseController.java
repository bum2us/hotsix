package com.bum2us.infra.modules.base;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bum2us.infra.modules.member.Member;
import com.bum2us.infra.modules.post.Post;
import com.bum2us.infra.modules.post.PostServiceImpl;
import com.bum2us.infra.modules.post.PostVo;

@Controller
public class BaseController {
	
	@Autowired
	BaseServiceImpl service;
	
	@Autowired
	PostServiceImpl servicePost;

	@RequestMapping(value ="/")
	public String login() throws Exception {
		
		return "infra/user/loginForm";
	}
	
	@RequestMapping(value = "/signup")
	public String register() throws Exception {
		
		return "infra/user/regForm";
	}
	
	@RequestMapping(value = "/bookmark")
	public String bookmark() throws Exception {
		
		return "infra/user/bookmarkForm";
	}
	
	@RequestMapping(value = "/chat")
	public String chat() throws Exception {
		
		return "infra/user/chatForm";
	}
	
	@RequestMapping(value = "/upload")
	public String upload() throws Exception {
		
		return "infra/user/uploadForm";
	}
	
	@RequestMapping(value = "/profile")
	public String profile(Model model,PostVo vo,HttpSession httpSession) throws Exception {
		
		System.out.println("sessSeq : " + httpSession.getAttribute("sessSeq"));
		
		vo.setShOption((Integer)httpSession.getAttribute("sessSeq"));
		
		System.out.println(vo.getShOption());
		
		List<Post> list = servicePost.selectListForProfile(vo);
		
		
		model.addAttribute("list", list);
		
		return "infra/user/profileForm";
	}
	
	@RequestMapping(value = "/post")
	public String postForm() throws Exception {
		return "infra/user/postForm";
	}
	
	@RequestMapping(value = "/administrator/logout")
	public String adnninLogout(HttpSession httpSession) throws Exception{
		
		httpSession.invalidate();
		
		return "infra/adnnin/adnninLoginForm";	
	}
	
	@RequestMapping(value = "/administrator")
	public String adnnin() throws Exception{
		return "infra/adnnin/adnninLoginForm";	
	}
	
	@RequestMapping(value="/administrator/main")
	public String adnninMain() throws Exception{
		
		return "infra/adnnin/adnninMainForm"; 
	}
	
	@ResponseBody
	@RequestMapping(value = "/administrator/login")
	public Map<String,Object> adnninLogin(HttpSession httpSession ,Member mb,Model model) throws Exception{
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		Member item = service.Login(mb);
		
		System.out.println(item.getMmId());
		
		if(item != null) {
			
			map.put("rt", "success");
			
			httpSession.setAttribute("sessSeq", item.getMmSeq());
			httpSession.setAttribute("sessName", item.getMmName());
		}
		
		return map;
	}
}
