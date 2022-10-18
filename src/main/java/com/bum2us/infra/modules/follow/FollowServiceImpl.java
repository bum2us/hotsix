package com.bum2us.infra.modules.follow;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bum2us.infra.modules.member.Member;

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
	public void delete(Follow dto) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(dto);
	}



	@Override
	public int selectChkFollow(int writer, int reader) throws Exception {
		// TODO Auto-generated method stub
		
		Follow dto = new Follow();
		dto.setFwFollow(writer);
		dto.setFwFollower(reader);
		
		return dao.selectChkFollow(dto);
	}



	@Override
	public int selectCountFollowed(Integer target) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectCountFollowed(target);
	}



	@Override
	public int selectCountFollowing(Integer target) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectCountFollowing(target);
	}



	@Override
	public List<Member> selectListFollower(Follow dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectListFollower(dto);
	}



	@Override
	public List<Member> selectListFollow(Follow dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectListFollow(dto);
	}





	
	
	
}
