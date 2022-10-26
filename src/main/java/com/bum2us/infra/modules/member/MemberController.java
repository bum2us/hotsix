package com.bum2us.infra.modules.member;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import net.nurigo.sdk.NurigoApp;
import net.nurigo.sdk.message.exception.NurigoMessageNotReceivedException;
import net.nurigo.sdk.message.model.Message;
import net.nurigo.sdk.message.service.DefaultMessageService;

@Controller
public class MemberController {

	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/member/memberList")
	public String memberList (@ModelAttribute("vo")MemberVo vo, Model model) throws Exception {
	
		vo.setPageTotal(service.selectCount(vo));
		
		List<Member> list = service.selectList(vo);

		model.addAttribute("list", list);
		
		return "infra/adnnin/memberList";
	}
	
	@RequestMapping(value ="/member/memberForm")
	public String memberForm(@ModelAttribute("vo") MemberVo vo, Model model,HttpSession httpSession) throws Exception {
		
		/*
		if(vo.getShSeq() != null) {
			
			Member item = service.selectOne(vo);
			model.addAttribute("item", item);
			
			System.out.println(item.getMmName());
			
		}
		*/
		
		if(httpSession.getAttribute("sessSeq") != null) {
			
			vo.setShSeq((int)httpSession.getAttribute("sessSeq"));
			Member item = service.selectOne(vo);
			
			model.addAttribute("item", item);
			
		}
		
		return "infra/user/profileModForm";
	}
	
	@RequestMapping(value ="/member/formAction")
	public String memberAction(HttpSession httpSession, Member item, Model model) throws Exception{
		
		service.updateOne(item);
		
		httpSession.setAttribute("sessSeq", item.getMmSeq());
		httpSession.setAttribute("sessId", item.getMmId());
		httpSession.setAttribute("sessNickName", item.getMmNickname());
		httpSession.setAttribute("sessComment", item.getMmComment());
		httpSession.setAttribute("sessImg", item.getUpPath()+item.getUpUuidName());
		
		return "redirect:/profile";
	}
	
	@ResponseBody
	@RequestMapping(value="member/chkId")
	public Map<String,Object> memberChkId(Member vo) throws Exception{
		
		Map<String,Object> result = new HashMap<String,Object>();
		
		System.out.println("검색ID : "+ vo.getMmId());
		
		result.put("chkCount", service.chkId(vo.getMmId()));
		
		System.out.println("실행결과 count : " + result.get("chkCount"));
		
		return result; 
	}
	
	@ResponseBody
	@RequestMapping(value="member/chkPw")
	public Map<String,Object> memberChkId(HttpSession httpSession,MemberVo vo) throws Exception{
		
		Map<String,Object> result = new HashMap<String,Object>();
		
		vo.setShSeq((int)httpSession.getAttribute("sessSeq"));
		
		int count = service.chkPw(vo);
		
		if(count == 1)
			result.put("rt", "success");
		else
			result.put("rt", "fail");
		
		return result; 
	}
	
	@RequestMapping(value="/member/changePassword")
	public String changePassword(HttpSession httpSession,Member mb) throws Exception{
		
		mb.setMmSeq((int)httpSession.getAttribute("sessSeq"));
		
		service.updatePassword(mb);
		
		httpSession.invalidate();
		
		return "infra/user/loginForm";
	}
	
	@RequestMapping(value = "/member/memberIns")
	public String memberIns(@ModelAttribute("vo") MemberVo vo, Model model,Member mb) throws Exception {
		
		service.insertList(mb);
		model.addAttribute("item", mb);
		
		
		//일반 회원 가입에서는 아래 폼으로 이동시키도록
		//return "infra/user/infoFormReg";
		
		//return "infra/adnnin/memberForm";
		return "infra/user/infoFormReg";
	}
	
	@RequestMapping(value ="/member/memberUelete")
	public String memberUelete(@ModelAttribute("vo") MemberVo vo, Model model) throws Exception {
		
		service.uelete(vo);
		
		vo.setPageTotal(service.selectCount(vo));
		
		List<Member> list = service.selectList(vo);

		model.addAttribute("list", list);
		
		return "infra/adnnin/memberList";
	}

	@ResponseBody
	@RequestMapping(value="/member/login")
	public Map<String,Object> loginChk(Member mb,HttpSession httpSession) throws Exception{
		
		Map<String,Object> result = new HashMap<String,Object>();
		
		Member item = service.chkLogin(mb);
		
		if(item == null)
			result.put("rt", "error");
		else {
			result.put("rt","success");

			httpSession.setAttribute("sessSeq", item.getMmSeq());
			httpSession.setAttribute("sessId", item.getMmId());
			httpSession.setAttribute("sessNickName", item.getMmNickname());
			httpSession.setAttribute("sessComment", item.getMmComment());
			httpSession.setAttribute("sessImg", item.getUpPath()+item.getUpUuidName());
		}
		
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value="/member/checkSms")
	public Map<String,Object> checkSms(Member mb) throws Exception{
		
		Map<String,Object> result = new HashMap<String,Object>();
		
		//난수 생성
		String rndNo = "";
		for(int i = 0; i < 4; i++) {
			rndNo += (int)(Math.random()*10-1) + 1;
			System.out.println("난수: " + rndNo);
		}
		
		//sms 전송 API
		DefaultMessageService messageService =  NurigoApp.INSTANCE.initialize("NCSRGKX500EUG8BC", "TJTNRKKIV7PFFU4RVGVZF3IHEUZA19PY", "https://api.solapi.com");
		// Message 패키지가 중복될 경우 net.nurigo.sdk.message.model.Message로 치환하여 주세요
		Message message = new Message();
		message.setFrom("01068641896");
		message.setTo(mb.getMmPhone());
		message.setText("ALBUM'S 가입을 위한 인증 코드입니다.["+ rndNo +"]");

		try {
		  // send 메소드로 ArrayList<Message> 객체를 넣어도 동작합니다!
		  messageService.send(message);
		} catch (NurigoMessageNotReceivedException exception) {
		  // 발송에 실패한 메시지 목록을 확인할 수 있습니다!
		  System.out.println(exception.getFailedMessageList());
		  System.out.println(exception.getMessage());
		} catch (Exception exception) {
		  System.out.println(exception.getMessage());
		}
		
		result.put("rt", rndNo);
		
		return result;
	}
}

