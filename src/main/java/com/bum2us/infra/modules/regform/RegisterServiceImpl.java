package com.bum2us.infra.modules.regform;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bum2us.infra.modules.member.Member;

@Service
public class RegisterServiceImpl implements RegisterService{

	@Autowired
	RegisterDao dao;
	
	@Override
	public void insertList(Member mb) {
				
		// TODO Auto-generated method stub
		dao.insertList(mb);
	}

	
	
}
