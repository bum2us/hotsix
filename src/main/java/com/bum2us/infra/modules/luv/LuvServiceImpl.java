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

	
	
}
