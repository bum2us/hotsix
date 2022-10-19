package com.bum2us.infra.modules.luv;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class LuvServiceImpl implements LuvService{

	@Autowired
	LuvDao dao;

	@Override
	public void insert(Luv dto) throws Exception {
		// TODO Auto-generated method stub
		dao.insert(dto);
	}

	@Override
	public List<Luv> selectList(Luv dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectList(dto);
	}

	@Override
	public int selectCount(Luv dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectCount(dto);
	}

	@Override
	public void delete(Luv dto) throws Exception {
		// TODO Auto-generated method stub
		dao.delete(dto);
	}

	@Override
	public void insert4Comment(Luv dto) throws Exception {
		// TODO Auto-generated method stub
		dao.insert4Comment(dto);
	}

	@Override
	public void delete4Comment(Luv dto) throws Exception {
		// TODO Auto-generated method stub
		dao.delete4Comment(dto);
	}

	@Override
	public List<Luv> selectList4Comment(Luv dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectList4Comment(dto);
	}

	@Override
	public int selectCount4Comment(Luv dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectCount4Comment(dto);
	}

	
	
	


	
}
