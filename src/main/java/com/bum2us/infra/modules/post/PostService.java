package com.bum2us.infra.modules.post;

import java.util.List;

import com.bum2us.infra.modules.member.Member;

public interface PostService {
	
	
	public List<Post> selectListForProfile(PostVo vo) throws Exception;
	
	public List<Post> selectList(PostVo vo) throws Exception;
	
	public Integer selectCount(PostVo vo) throws Exception;
	
	public void insert(Post dto) throws Exception;
	
	public List<Post> selectListForMain(int i)throws Exception;
	
	public int selectCheckLoginUserLuved(Post dto)throws Exception;
	
	public Post selectOne(int i)throws Exception;
	
	public Post selectPostImg(Post dto)throws Exception;
	
	public Member selectPostWriteImg(Integer postSeq)throws Exception;
	
}
