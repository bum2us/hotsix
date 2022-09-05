package com.bum2us.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService{

	
	@Autowired
	MemberDao dao;
	
	
	@Override
	public List<Member> selectList() {
		// TODO Auto-generated method stub
		return dao.selectList();
	}


	@Override
	public void insertList(MemberVo vo) {
		// TODO Auto-generated method stub
		dao.insertList(vo);
	}
	
	
	
}
