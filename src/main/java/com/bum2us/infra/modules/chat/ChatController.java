package com.bum2us.infra.modules.chat;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ChatController {

	@Autowired
	ChatServiceImpl service;
	

	@RequestMapping(value = "/chat")
	public String chat(Model model, HttpSession httpSession, Chat dto) throws Exception {
		
		int LoginUserSeq = (int)httpSession.getAttribute("sessSeq");
		
		List<Chat> list = service.selectListFromUser(LoginUserSeq);
				
		model.addAttribute("list", list);
		
		return "infra/user/chatForm";
	}
	
}
