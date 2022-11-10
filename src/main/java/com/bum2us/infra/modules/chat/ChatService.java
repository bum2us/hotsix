package com.bum2us.infra.modules.chat;

import java.util.List;

public interface ChatService {

	public List<Chat> selectListFromUser(int loginUserSeq) throws Exception;
	public void insert(Chat dto) throws Exception;
}
