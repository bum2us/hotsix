package com.bum2us.infra.modules.comment;

import java.util.List;


public interface CommentService {

	
	public void insert(Comment dto) throws Exception;
	public List<Comment> selectList(Comment dto) throws Exception;
	
}
