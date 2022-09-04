package com.bum2us.infra.modules.regform;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class RegisterDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private String namespace = "com.bum2us.infra.modules.regform.RegisterMapper";
	
	public void insertList(Register rg) { sqlSession.insert(namespace + ".insertList", rg); }
}
