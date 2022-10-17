package com.bum2us.infra.modules.follow;


public interface FollowService {
	
	public void insert(Follow dto) throws Exception;
	

	public int selectCountFollowed(int writer,int reader)throws Exception;
	
}
