package com.bum2us.infra.modules.chat;

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
import com.bum2us.infra.modules.member.MemberServiceImpl;
import com.bum2us.infra.modules.member.MemberVo;

@Controller
public class ChatController {

	@Autowired
	ChatServiceImpl service;
	
	@Autowired
	MemberServiceImpl serviceMember;

	@RequestMapping(value = "/chat")
	public String chat(Model model, HttpSession httpSession, Chat dto) throws Exception {
		
		int LoginUserSeq = (int)httpSession.getAttribute("sessSeq");
		
		List<Chat> list = service.selectListFromUser(LoginUserSeq);
		model.addAttribute("list", list);
		
		int existChatRoom = 0;
		
		for(Chat item : list) {
			if(dto.getCuMemberSeq() == item.getCuMemberSeq())
				existChatRoom = item.getChatSeq();
		}
		model.addAttribute("existChatRoom", existChatRoom);
		model.addAttribute("chatUser",dto.getCuMemberSeq());
		
		return "infra/user/chatForm";
	}
	
	@ResponseBody
	@RequestMapping(value="/createChat")
	public Map<String,Object> createChat(Model model,HttpSession httpSession,Chat dto) throws Exception {
		
		Map<String,Object> result = new HashMap<String,Object>();
		
		
		service.insert(dto);
		
		service.insertChatUser(dto);
		
		MemberVo vo = new MemberVo();
		vo.setShSeq(dto.getCuMemberSeq());
		Member item = serviceMember.selectOne(vo);
		
		result.put("chatSeq", dto.getChatSeq()); 
		result.put("profileImg", item.getUpPath() + item.getUpUuidName());
		result.put("nickName", item.getMmNickname());
		
		dto.setCuMemberSeq((int)httpSession.getAttribute("sessSeq"));
		service.insertChatUser(dto);
		
		return result;
	}
	
}
