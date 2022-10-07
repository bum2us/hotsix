package com.bum2us.infra.modules.base;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bum2us.infra.modules.member.Member;
import com.bum2us.infra.modules.post.PostVo;

@Repository
public class BaseDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private String namesapce = "com.bum2us.infra.modules.base.BaseMapper";

	public Member Login(Member mb) { return sqlSession.selectOne(namesapce + ".Login", mb); }

	public Member selectOneMember(PostVo vo) { return sqlSession.selectOne(namesapce + ".selectOneMember", vo); }

	public Member selectProfileImg(PostVo vo) { return sqlSession.selectOne(namesapce+".selectProfileImg", vo); }
	
}
