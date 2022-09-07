package com.bum2us.infra.modules.codegroup;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeGroupDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.bum2us.infra.modules.codegroup.CodeGroupMapper";
	
	public List<CodeGroup> selectList(){ return sqlSession.selectList(namespace + ".selectList", ""); }
	
	public void insertGroup(CodeGroup cg) { sqlSession.insert(namespace + ".insertGroupCode", cg); }

	public List<CodeGroup> srcList(CodeGroupVo vo) { return sqlSession.selectList(namespace + ".srcList", vo); 	}
}
