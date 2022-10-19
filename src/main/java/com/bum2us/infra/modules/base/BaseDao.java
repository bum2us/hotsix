package com.bum2us.infra.modules.base;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bum2us.infra.modules.member.Member;
import com.bum2us.infra.modules.post.Post;
import com.bum2us.infra.modules.post.PostVo;

@Repository
public class BaseDao {

	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private String namespace = "com.bum2us.infra.modules.base.BaseMapper";

	public Member Login(Member mb) { return sqlSession.selectOne(namespace + ".Login", mb); }

	public Member selectOneMember(PostVo vo) { return sqlSession.selectOne(namespace + ".selectOneMember", vo); }

	public Member selectProfileImg(PostVo vo) { return sqlSession.selectOne(namespace+".selectProfileImg", vo); }

	public List<Member> selectListForSearchNickName(String keyword) { return sqlSession.selectList(namespace+".selectListForSearchNickName", keyword); }
	
	public List<Member> selectListForSearchName(String keyword) { return sqlSession.selectList(namespace+".selectListForSearchName", keyword); }
	
	public List<Post> selectListForSearchPost(String keyword) { return sqlSession.selectList(namespace+".selectListForSearchPost", keyword); }
}
