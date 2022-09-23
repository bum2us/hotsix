package com.bum2us.infra.modules.member;

import java.util.List;

import com.bum2us.infra.modules.base.BaseVo;

public interface MemberService {
	
	public List<Member> selectList(MemberVo vo) throws Exception;
	
	public void insertList(Member mb) throws Exception;
	
	public Member selectOne(MemberVo vo) throws Exception;
	
	public Member chkLogin(Member mb) throws Exception;
	
	public Integer selectCount(MemberVo vo) throws Exception;
	
	public void updateOne(Member mb) throws Exception; 

	public int chkId(String id) throws Exception;
}
