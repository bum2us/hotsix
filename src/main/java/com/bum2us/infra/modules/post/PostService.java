package com.bum2us.infra.modules.post;

import java.util.List;

public interface PostService {
	
	
	public List<Post> selectListForProfile(PostVo vo) throws Exception;
	
	public List<Post> selectList(PostVo vo) throws Exception;
	
	public Integer selectCount(PostVo vo) throws Exception;
	
	public void insert(Post dto) throws Exception;
}
