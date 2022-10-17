package com.bum2us.infra.modules.follow;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class FollowServiceImpl implements FollowService{
	
	@Autowired
	FollowDao dao;

	@Override
	public void insert(Follow dto) throws Exception {
		// TODO Auto-generated method stub
		dao.insert(dto);
	}

	
	
	@Override
	public int selectCountFollowed(int writer, int reader) throws Exception {
		// TODO Auto-generated method stub
		
		Follow dto = new Follow();
		dto.setFwFollow(writer);
		dto.setFwFollower(reader);
		
		return dao.selectCountFollowed(dto);
	}

	
	
}
