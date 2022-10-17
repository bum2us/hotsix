package com.bum2us.infra.modules.follow;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class FollowDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.bum2us.infra.modules.follow.FollowMapper";

	public void insert(Follow dto) { sqlSession.insert(namespace + ".insert", dto); }
	
	public int selectCountFollowed(Follow dto) { return sqlSession.selectOne(namespace+".selectCountFollowed", dto); } 
	
}
