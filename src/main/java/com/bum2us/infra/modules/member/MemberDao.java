package com.bum2us.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bum2us.infra.modules.base.BaseVo;

@Repository
public class MemberDao {

	@Inject
	@Resource(name ="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.bum2us.infra.modules.member.MemberMapper";
	
	public List<Member> selectList(MemberVo vo) { return sqlSession.selectList(namespace + ".selectList", vo); }
	
	public void insertList(Member mb) { sqlSession.insert(namespace + ".insertList", mb); }

	public Member selectOne(Member mb) { return sqlSession.selectOne(namespace + ".chkLogin", mb); }
	
	public Integer selectCount() { return sqlSession.selectOne(namespace + ".selectCount"); }
	
	public Integer selectCount(String id) { return sqlSession.selectOne(namespace + ".selectOneCount", id); }

	public void updateOne(Member mb) { sqlSession.update(namespace + ".upadteOne", mb);	}

	public Member selectOne(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOne",vo); }
}
