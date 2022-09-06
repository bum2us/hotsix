package com.bum2us.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService{

	@Autowired
	CodeDao dao;
	
	@Override
	public List<Code> selectList() throws Exception {
		// TODO Auto-generated method stub
		return dao.selectList();
	}

	@Override
	public void insertCode(Code cd) throws Exception {
		// TODO Auto-generated method stub
		dao.insertCode(cd);
	}

	@Override
	public List<Code> searchCode(CodeVo vo) throws Exception {
		// TODO Auto-generated method stub
		
		vo.printAll();
		
		if(vo.getShDateOption() == null)
			vo.setShDateOption(2);
		
		if(vo.getShDateStart() == null || vo.getShDateStart().equals(""))
			vo.setShDateStart("1700-01-01 00:00:00");
		
		if(vo.getShDateEnd() == null || vo.getShDateEnd().equals(""))
			vo.setShDateEnd("2300-12-31 00:00:00");
		
		if(vo.getShUseNy() == null)
			vo.setShUseNy(0);

		if(vo.getShOption() == null)
			vo.setShOption(3);
		
		vo.printAll();
		
		return dao.searchCode(vo);
	}

	@Override
	public List<Code> selectListGroupName() throws Exception {
		// TODO Auto-generated method stub
		return dao.selectListGroupName();
	}	
	
	
}
