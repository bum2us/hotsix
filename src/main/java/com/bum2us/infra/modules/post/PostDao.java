package com.bum2us.infra.modules.post;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class PostDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	
	private String namespace = "com.bum2us.infra.modules.post.PostMapper";
	
	
	public List<Post> selectList(PostVo vo) { return sqlSession.selectList(namespace + ".selectList", vo); }


	public Integer selectCount(PostVo vo) { return sqlSession.selectOne(namespace + ".selectCount", vo); }
	
}
