package com.bum2us.infra.modules.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService{

	@Autowired
	CodeDao dao;
	
	@Override
	public List<Code> selectList(CodeVo vo) throws Exception {
		// TODO Auto-generated method stub
		
		if(vo.getPageNumber() == null)
			vo.setPageNumber(1);
		if(vo.getPageSize() == null)
			vo.setPageSize(5);
		vo.setPageRange((vo.getPageNumber()-1) * vo.getPageSize());
		
		return dao.selectList(vo);
	}
	
	

	@Override
	public int selectCount(CodeVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectCount(vo);
	}



	@Override
	public void insertCode(Code cd) throws Exception {
		// TODO Auto-generated method stub
		dao.insertCode(cd);
	}

	@Override
	public List<Code> searchCode(CodeVo vo) throws Exception {
		// TODO Auto-generated method stub
		
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
		
		return dao.searchCode(vo);
	}

	@Override
	public List<Code> selectListGroupName() throws Exception {
		// TODO Auto-generated method stub
		return dao.selectListGroupName();
	}

	@Override
	public void updateCode(CodeVo vo) throws Exception {
		// TODO Auto-generated method stub
		
		vo.printAll2();
		
		dao.updateCode(vo); 
	}

	
	
	
}
