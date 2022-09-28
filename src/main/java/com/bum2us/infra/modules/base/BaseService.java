package com.bum2us.infra.modules.base;

import com.bum2us.infra.modules.member.Member;

public interface BaseService {
	
	public Member Login(Member mb) throws Exception;
}
