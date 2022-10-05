package com.bum2us.infra.modules.comment;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class CommentDao {

	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private String namespace ="com.bum2us.infra.modules.comment.CommentMapper";

	public void insert(Comment dto) { sqlSession.insert(namespace + ".insert", dto); }

	public List<Comment> selectList(Comment dto) { return sqlSession.selectList(namespace + ".selectList", dto); }
	
	
}
