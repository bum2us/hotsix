package com.bum2us.infra.modules.member;

import java.util.List;

public interface MemberService {
	
	public List<Member> selectList(MemberVo vo) throws Exception;
	
	public void insertList(Member mb) throws Exception;
	
	public Member selectOne(MemberVo vo) throws Exception;
	
	public Member chkLogin(Member mb) throws Exception;
	
	public Integer selectCount(MemberVo vo) throws Exception;
	
	public void updatePassword(Member mb) throws Exception;
	
	public void updateOne(Member mb) throws Exception; 

	public int chkId(String id) throws Exception;
	
	public int chkPw(MemberVo vo) throws Exception;
	
	public void uelete(MemberVo vo) throws Exception;
}
