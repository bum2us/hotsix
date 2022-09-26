package com.bum2us.infra.modules.code;

import java.util.List;

public interface CodeService {
	
	public List<Code> selectList(CodeVo vo) throws Exception;
	
	public int selectCount(CodeVo vo) throws Exception;
	
	public void insertCode(Code cd) throws Exception;
	
	public void updateCode(Code cd) throws Exception;
	
	public Code selectOne(CodeVo vo) throws Exception;
	
	public List<Code> searchCode(CodeVo vo) throws Exception;
	
	public List<Code> selectListGroupName() throws Exception;
	
	public void selecListCachedCodeList() throws Exception;
	
}
 