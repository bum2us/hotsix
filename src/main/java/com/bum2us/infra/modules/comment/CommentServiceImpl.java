package com.bum2us.infra.modules.comment;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


@Service
public class CommentServiceImpl implements CommentService{

	
	@Autowired
	CommentDao dao;
	
	@Override
	public void insert(Comment dto) throws Exception {
		// TODO Auto-generated method stub
		dao.insert(dto);
	}

	@Override
	public List<Comment> selectList(Comment dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectList(dto);
	}

	
	
	
}
