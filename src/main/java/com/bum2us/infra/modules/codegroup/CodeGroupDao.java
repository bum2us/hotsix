package com.bum2us.infra.modules.codegroup;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.bum2us.infra.modules.code.Code;

@Repository
public class CodeGroupDao {
	
	@Inject
	@Resource(name = "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.bum2us.infra.modules.codegroup.CodeGroupMapper";
	
	public List<CodeGroup> selectList(CodeGroupVo vo){ return sqlSession.selectList(namespace + ".selectList", vo); }
	
	public void insertGroup(CodeGroup cg) { sqlSession.insert(namespace + ".insertGroupCode", cg); }

	public List<CodeGroup> srcList(CodeGroupVo vo) { return sqlSession.selectList(namespace + ".srcList", vo); 	}

	public List<CodeGroup> selectListCachedCodeGroupList() { return sqlSession.selectList(namespace + ".selectListCachedCodeGroupList");	}

	public Integer selectListCount(CodeGroupVo vo) { return sqlSession.selectOne(namespace + ".selectListCount" , vo); }

	public CodeGroup selectOne(CodeGroupVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }

	public void updateGroup(CodeGroup cg) { sqlSession.update(namespace + ".updateGroup", cg); }
	
}
