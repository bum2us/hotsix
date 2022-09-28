package com.bum2us.infra.modules.post;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class PostServiceImpl implements PostService{

	
	@Autowired
	PostDao dao;
	
	
	@Override
	public List<Post> selectList(PostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}


	@Override
	public Integer selectCount(PostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectCount(vo);
	} 

	
	
}
