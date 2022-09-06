package com.bum2us.infra.modules.codegroup;

import java.util.List;

public interface CodeGroupService {
	
	public List<CodeGroup> selectList() throws Exception; 
	
	public void insertGroup(CodeGroup cg) throws Exception;
	
}
