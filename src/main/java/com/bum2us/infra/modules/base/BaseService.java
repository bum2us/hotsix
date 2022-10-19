package com.bum2us.infra.modules.base;

import java.util.List;

import com.bum2us.infra.modules.member.Member;
import com.bum2us.infra.modules.post.Post;
import com.bum2us.infra.modules.post.PostVo;

public interface BaseService {
	
	public Member Login(Member mb) throws Exception;
	
	public Member selectOneMember(PostVo vo) throws Exception;
	
	public Member selectProfileImg(PostVo vo) throws Exception;
	
	
	//검색 기능을 위한 메소드
	public List<Member> selectListForSearchNickName(String keyword)throws Exception;
	public List<Member> selectListForSearchName(String keyword)throws Exception;
	public List<Post> selectListForSearchPost(String keyword)throws Exception;
}
