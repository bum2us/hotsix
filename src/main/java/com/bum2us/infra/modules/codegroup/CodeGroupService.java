package com.bum2us.infra.modules.codegroup;

import java.util.List;

public interface CodeGroupService {
	
	public List<CodeGroup> selectList(CodeGroupVo vo) throws Exception; 
	
	public void insertGroup(CodeGroup cg) throws Exception;
	
	public List<CodeGroup> srcList(CodeGroupVo vo) throws Exception;
	
	public void selecListCashedCodeGroupList() throws Exception;
	
	public Integer selectListCount(CodeGroupVo vo) throws Exception;
	
	public CodeGroup selectOne(CodeGroupVo vo) throws Exception;
	
	public void updateGroup(CodeGroup cg) throws Exception;
}
