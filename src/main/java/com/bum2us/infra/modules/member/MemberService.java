package com.bum2us.infra.modules.member;

import java.util.List;

public interface MemberService {
	
	public List<Member> selectList(MemberVo vo);
	
	public List<Member> insertList(MemberVo vo);
	
	public void insertList(Member mb);
	
	public Member selectOne(MemberVo vo);
	
	public Member chkLogin(MemberVo vo);
}
