package com.bum2us.infra.modules.chat;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class ChatDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private String namespace = "com.bum2us.infra.modules.chat.ChatMapper";
	
	public List<Chat> selectListFromUser(int loginUserSeq) { return sqlSession.selectList(namespace+".selectListFromUser", loginUserSeq); }

	public Chat selectOneChat(Chat item) { return sqlSession.selectOne(namespace + ".selectOneChat", item); }

}
