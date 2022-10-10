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


	public void insert(Post dto) { sqlSession.insert(namespace + ".insert", dto); }


	public void insertUpload(Post dto) { sqlSession.insert(namespace + ".insertUpload", dto);}


	public Integer selectLastSeq() { return sqlSession.selectOne(namespace + ".selectLastSeq");}


	public List<Post> selectListForProfile(PostVo vo) { return sqlSession.selectList(namespace + ".selectListForProfile", vo); }


	public List<Post> selectListForMain(int i) { return sqlSession.selectList(namespace + ".selectListForMain",i); }


	public Post selectOne(int i) { return sqlSession.selectOne(namespace + ".selectOne", i); }


	public int selectCheckLoginUserLuved(Post dto) { return sqlSession.selectOne(namespace + ".selectCheckLoginUserLuved", dto); }


	public Post selectPostImg(Post dto) { return sqlSession.selectOne(namespace + ".selectPostImg", dto); } 
	
}
