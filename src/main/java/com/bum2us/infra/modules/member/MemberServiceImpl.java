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
	public List<Member> selectList(MemberVo vo) {
		
		System.out.println(vo.getShDateStart());
		
		
		if(vo.getShOption() == null)
			vo.setShOption(1);
		
		if(vo.getShDateRange() == null) {
			vo.setShDateRange(2);
			vo.setShDateStart("1700-01-01 00:00:00");
			vo.setShDateEnd("9999-01-01 00:00:00");
		}
		
		if(vo.getShDateRange() == 2) {
			vo.setShDateStart(vo.getShDateStart() + " 00:00:00");
			vo.setShDateEnd(vo.getShDateEnd() + " 23:59:59");
		}
		
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}
	
	
	
}
