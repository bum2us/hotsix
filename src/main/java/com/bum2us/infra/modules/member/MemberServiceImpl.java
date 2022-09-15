package com.bum2us.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bum2us.infra.modules.base.BaseVo;

@Service
public class MemberServiceImpl implements MemberService{

	
	@Autowired
	MemberDao dao;
	
	
	@Override
	public List<Member> selectList(MemberVo vo) {
		// TODO Auto-generated method stub
		
		if(vo.getPageNumber() == null)
			vo.setPageNumber(1);
		if(vo.getPageSize() == null)
			vo.setPageSize(10);
		vo.setPageRange((vo.getPageNumber()-1) * vo.getPageSize());
		
		return dao.selectList(vo);
	}


	@Override
	public List<Member> insertList(MemberVo vo) {
		// TODO Auto-generated method stub
		
		if(vo.getShOption() == null)
			vo.setShOption(1);
		
		if(vo.getShDateOption() == null) {
			vo.setShDateOption(2);
			vo.setShDateStart("1700-01-01 00:00:00");
			vo.setShDateEnd("2023-01-01 00:00:00");
		}		
		else if(vo.getShDateOption() == 2) {
			vo.setShDateStart(vo.getShDateStart() + " 00:00:00");
			vo.setShDateEnd(vo.getShDateEnd() + "23:59:59");
		}
		
		System.out.println("---------------");
		System.out.println(vo.getShOption());
		System.out.println(vo.getShValue());
		System.out.println(vo.getShDateOption());
		System.out.println(vo.getShDateStart());
		System.out.println(vo.getShDateEnd());	
		
		
		return dao.insertList(vo);
	}
	
	@Override
	public void insertList(Member mb) {
				
		// TODO Auto-generated method stub
		dao.insertList(mb);
	}


	@Override
	public Member selectOne(MemberVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}

	@Override
	public Member chkLogin(MemberVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
	}


	@Override
	public Integer selectCount() {
		// TODO Auto-generated method stub
		return dao.selectCount();
	}
	
	
	
	
}
