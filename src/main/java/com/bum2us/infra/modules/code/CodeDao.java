package com.bum2us.infra.modules.code;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class CodeDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.bum2us.infra.modules.code.CodeMapper";
	
	public List<Code> selectList() { return sqlSession.selectList(namespace + ".selectList",""); }
	
	public void insertCode(Code cd) { sqlSession.insert(namespace+".insertCode", cd); }

	public List<Code> searchCode(CodeVo vo) { return sqlSession.selectList(namespace + ".searchCode", vo);	}

	public List<Code> selectListGroupName() { return sqlSession.selectList(namespace + ".groupName","");	}
}
