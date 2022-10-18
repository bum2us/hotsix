package com.bum2us.infra.modules.follow;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bum2us.infra.modules.member.Member;


@Repository
public class FollowDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.bum2us.infra.modules.follow.FollowMapper";

	public void insert(Follow dto) { sqlSession.insert(namespace + ".insert", dto); }
	
	public void delete(Follow dto) { sqlSession.delete(namespace+ ".delete", dto); }
	
	public int selectChkFollow(Follow dto) { return sqlSession.selectOne(namespace+".selectChkFollow", dto); }

	public int selectCountFollowed(Integer target) { return sqlSession.selectOne(namespace + ".selectCountFollowed", target); }

	public int selectCountFollowing(Integer target) { return sqlSession.selectOne(namespace + ".selectCountFollowing", target); }

	public List<Member> selectListFollower(Follow dto) { return sqlSession.selectList(namespace + ".selectListFollower", dto); }
	
	public List<Member> selectListFollow(Follow dto) { return sqlSession.selectList(namespace + ".selectListFollow", dto); }

	
}
