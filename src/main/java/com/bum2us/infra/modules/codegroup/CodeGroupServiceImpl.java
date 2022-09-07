package com.bum2us.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeGroupServiceImpl implements CodeGroupService{
	
	@Autowired
	CodeGroupDao dao;
	
	@Override
	public List<CodeGroup> selectList() throws Exception {
		return dao.selectList();
	}

	@Override
	public void insertGroup(CodeGroup cg) throws Exception {
		// TODO Auto-generated method stub
		dao.insertGroup(cg);
	}

	@Override
	public List<CodeGroup> srcList(CodeGroupVo vo) throws Exception {
		// TODO Auto-generated method stub
		
		if(vo.getShOption() == null)
			vo.setShOption(2);
		
		if(vo.getShUseNy() == null)
			vo.setShUseNy(2);
		
		vo.setShDateStart(vo.getShDateStart() + " 00:00:00");
		vo.setShDateEnd(vo.getShDateEnd() + " 23:59:59");
		
		return dao.srcList(vo);
	}

	
}
