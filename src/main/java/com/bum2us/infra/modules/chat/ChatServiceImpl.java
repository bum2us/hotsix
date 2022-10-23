package com.bum2us.infra.modules.chat;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class ChatServiceImpl implements ChatService{

	
	@Autowired
	ChatDao dao;
	
	
	@Override
	public List<Chat> selectListFromUser(int loginUserSeq) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectListFromUser(loginUserSeq);
	}

}
