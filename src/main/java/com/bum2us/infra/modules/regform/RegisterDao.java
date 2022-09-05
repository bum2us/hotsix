package com.bum2us.infra.modules.regform;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bum2us.infra.modules.member.Member;

@Repository
public class RegisterDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private String namespace = "com.bum2us.infra.modules.regform.RegisterMapper";
	
	public void insertList(Member mb) { sqlSession.insert(namespace + ".insertList", mb); }
}
