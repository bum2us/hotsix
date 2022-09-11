package com.bum2us.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	@Inject
	@Resource(name ="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.bum2us.infra.modules.member.MemberMapper";
	
	public List<Member> selectList() { return sqlSession.selectList(namespace + ".selectList", ""); }
	
	public List<Member> insertList(MemberVo vo) {return sqlSession.selectList(namespace + ".selectSrc", vo); }
	
	public void insertList(Member mb) { sqlSession.insert(namespace + ".insertList", mb); }

	public Member selectOne(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	
	
	
}
