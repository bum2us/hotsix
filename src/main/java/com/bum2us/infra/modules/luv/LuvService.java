package com.bum2us.infra.modules.luv;

import java.util.List;

public interface LuvService {
	
	public void insert(Luv dto) throws Exception;
	
	public List<Luv> selectList(Luv dto) throws Exception;
	
	public int selectCount(Luv dto) throws Exception;
	
	public void delete(Luv dto) throws Exception;

	
	public void insert4Comment(Luv dto) throws Exception;
	public void delete4Comment(Luv dto) throws Exception;
	public List<Luv> selectList4Comment(Luv dto) throws Exception;
	public int selectCount4Comment(Luv dto) throws Exception;
	
}
