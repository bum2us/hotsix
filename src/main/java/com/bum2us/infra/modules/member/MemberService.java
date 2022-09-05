package com.bum2us.infra.modules.member;

import java.util.List;

public interface MemberService {
	public List<Member> selectList();
	
	public void insertList(MemberVo vo);
}
