package com.bum2us.infra.modules.codegroup;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bum2us.infra.modules.code.Code;

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

	@PostConstruct
	public void selecListCashedCodeGroupList() throws Exception {
		// TODO Auto-generated method stub
		
		List<CodeGroup> codeGroupListFromDb = dao.selectListCachedCodeGroupList();
		CodeGroup.cacheCodeGroupList.clear();
		CodeGroup.cacheCodeGroupList.addAll(codeGroupListFromDb);
		System.out.println("cacheCodeGroupList: " + CodeGroup.cacheCodeGroupList.size() + " cached !");
	}

	public static List<CodeGroup> selectListCachedCodeGroup(String code) throws Exception {
		
		List<CodeGroup> rt = new ArrayList<CodeGroup>();
		
		for (CodeGroup codeGroupRow : CodeGroup.cacheCodeGroupList) {
			if(codeGroupRow.getCcgSeq().equals(code))
				rt.add(codeGroupRow);
		}	
		
		return rt;
	}
	
	public static String selectOneCachedCodeGroup2Name(String code) throws Exception {
		String rt = "";
		
		for (CodeGroup codeGroupRow : CodeGroup.cacheCodeGroupList) {
			if(codeGroupRow.getCcgSeq().equals(code))
				rt = codeGroupRow.getCcgName();
		}
		
		
		return rt;
	}
}
