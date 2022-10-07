package com.bum2us.infra.modules.base;

import com.bum2us.infra.modules.member.Member;
import com.bum2us.infra.modules.post.PostVo;

public interface BaseService {
	
	public Member Login(Member mb) throws Exception;
	
	public Member selectOneMember(PostVo vo) throws Exception;
	
	public Member selectProfileImg(PostVo vo) throws Exception;
}
