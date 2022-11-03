package com.bum2us.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.PostConstruct;

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
	public Code selectOne(CodeVo vo) {
		// TODO Auto-generated method stub
		return dao.selectOne(vo);
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
	public void updateCode(Code cd) throws Exception {
		// TODO Auto-generated method stub
				
		dao.updateCode(cd); 
	}

	
	@PostConstruct
	public void selecListCachedCodeList() throws Exception {
		
		List<Code> codeListFromDb = dao.selectListCachedCodeList();
		Code.cacheCodeList.clear(); 
		Code.cacheCodeList.addAll(codeListFromDb);
		System.out.println("cacheCodeList: " + Code.cacheCodeList.size() + " cached !");
	}
	
	public static List<Code> selectListCachedCode(String code) throws Exception {
		List<Code> rt = new ArrayList<Code>();
		for(Code codeRow : Code.cacheCodeList) {
			if (codeRow.getGroupSeq().equals(code)) {
				rt.add(codeRow);
			} else {
				// by pass
			}
		}
		return rt;
	}
	
	public static String selectOneCachedName2Code(String name) throws Exception {
		String rt="";
		for(Code codeRow : Code.cacheCodeList) {
			if (codeRow.getCcName().equals(name)) {
				rt = codeRow.getCcKey();
			} else {
				// by pass
			}
		}
		return rt;
	}


	public static String selectOneCachedCode2Name(String code) throws Exception  {
		String rt="";
		for(Code codeRow : Code.cacheCodeList) {
			if (codeRow.getCcKey().equals(code)) {
				rt = codeRow.getCcName();
			} else {
				// by pass
			}
		}
		return rt;
	}
	
	public static String selectOneCachedCode2Name(String group,String code) throws Exception  {
		String rt="";
		for(Code codeRow : Code.cacheCodeList) {
			if (codeRow.getGroupSeq().equals(group) && codeRow.getCcKey().equals(code)) {
				rt = codeRow.getCcName();
			} else {
				// by pass
			}
		}
		return rt;
	}
	
}
