package com.bum2us.infra.modules.code;

import java.util.List;

public interface CodeService {
	
	public List<Code> selectList(CodeVo vo) throws Exception;
	
	public int selectCount() throws Exception;
	
	public void insertCode(Code cd) throws Exception;
	
	public void updateCode(CodeVo vo) throws Exception;
	
	public List<Code> searchCode(CodeVo vo) throws Exception;
	
	public List<Code> selectListGroupName() throws Exception;
}
 