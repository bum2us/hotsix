package com.bum2us.infra.modules.regform;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterServiceImpl implements RegisterService{

	@Autowired
	RegisterDao dao;
	
	@Override
	public void insertList(Register rg) {
		// TODO Auto-generated method stub
		dao.insertList(rg);
	}

	
	
}
