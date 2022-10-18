package com.bum2us.infra.modules.follow;

import java.util.List;

import com.bum2us.infra.modules.member.Member;

public interface FollowService {
	
	public void insert(Follow dto) throws Exception;
	

	public int selectChkFollow(int writer,int reader)throws Exception;
	public int selectCountFollowed(Integer target)throws Exception;
	public int selectCountFollowing(Integer target)throws Exception;
	
	public List<Member> selectListFollower(Follow dto) throws Exception;
	public List<Member> selectListFollow(Follow dto) throws Exception;
}
