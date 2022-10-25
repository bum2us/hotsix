package com.bum2us.infra.modules.post;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.bum2us.infra.modules.comment.Comment;
import com.bum2us.infra.modules.comment.CommentServiceImpl;
import com.bum2us.infra.modules.follow.FollowServiceImpl;
import com.bum2us.infra.modules.luv.Luv;
import com.bum2us.infra.modules.luv.LuvServiceImpl;
import com.bum2us.infra.modules.member.Member;

@Controller
public class PostController {

	
	@Autowired
	PostServiceImpl service;
	
	@Autowired
	CommentServiceImpl serviceComment;
	
	@Autowired
	LuvServiceImpl serviceLuv;
	
	@Autowired
	FollowServiceImpl serviceFollow;
	
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
		System.out.println(dto.getPostImage());
		
		service.insert(dto);
		
		return "infra/user/uploadForm";
	}
	
	@ResponseBody
	@RequestMapping(value="getPost")
	public Map<String,Object> getPost(HttpSession httpSession,Model model,Post dto) throws Exception{
		
		Map<String,Object> map = new HashMap<String,Object>();
		
		Post item = service.selectOne(dto.getPostSeq());
		
		
		if(item != null)
		{
			
			Member postWriterImg = service.selectPostWriteImg(item.getMmSeq());

			if(postWriterImg != null) {
				map.put("img", postWriterImg.getUpPath()+postWriterImg.getUpUuidName());
			}
			
			int loginUserSeq = (int)httpSession.getAttribute("sessSeq");
			
			dto.setLoginUserSeq(loginUserSeq);
			int i = service.selectCheckLoginUserLuved(dto);
			
			if(i != 0)
				map.put("luved", "true");
			else
				map.put("luved", "false");
			
			//좋아요 체크
			Luv lv = new Luv();
			lv.setLuvPostId(dto.getPostSeq());
			int luvCount = serviceLuv.selectCount(lv);

			map.put("luvCount", luvCount);
			
			//댓글 정보 select
			Comment cm = new Comment();
			cm.setCmPostId(dto.getPostSeq());
			cm.setLoginUserSeq(loginUserSeq);
			
			List<Comment> list =  serviceComment.selectList(cm);
			map.put("list", list);
			
			//게시자 팔로우 체크
			if(item.getPostWriter() != loginUserSeq) {
				int count = serviceFollow.selectChkFollow(item.getPostWriter(),loginUserSeq);
				
				if(count == 1) {
					map.put("followed", "true");
				}else {
					map.put("followed", "false");
				}
			}else
				map.put("followed", "true");
			

			map.put("rt", "success");
			map.put("sourceType", item.getUpType());
			map.put("imgSrc", item.getUpPath() + item.getUpUuidName());
			map.put("nickname", item.getMmNickname());
			map.put("content", item.getPostContent());
			map.put("writer", item.getPostWriter());
			map.put("date", item.getPostEditDate());
			
		}
		else 
		{
			map.put("rt", "fail");
		}
		
		
		
		return map;
	}
	
	
	@RequestMapping(value="imgLoad")
	public String imgLoad(Post dto,Model model) throws Exception {
		
		dto.setPostSeq(23);
		Post item = service.selectPostImg(dto);
		
		model.addAttribute("item", item);
		
		return "infra/user/test";
	}
	
}
