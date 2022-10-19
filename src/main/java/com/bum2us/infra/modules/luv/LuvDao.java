package com.bum2us.infra.modules.luv;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class LuvDao {
	
	@Inject
	@Resource(name="sqlSession")
	private SqlSession sqlSession;
	
	private String namespace = "com.bum2us.infra.modules.luv.LuvMapper";

	public void insert(Luv dto) {  sqlSession.insert(namespace + ".insert",dto);  }

	public List<Luv> selectList(Luv dto) { return sqlSession.selectList(namespace + ".selectList", dto); }

	public int selectCount(Luv dto) { return sqlSession.selectOne(namespace + ".selectCount", dto); }

	public int selectChkLuvCount(int i) { return sqlSession.selectOne(namespace + ".selectChkLuvCount", i); }

	public void delete(Luv dto) { sqlSession.delete(namespace + ".delete", dto); }

	public void insert4Comment(Luv dto) { sqlSession.insert(namespace+".insert4Comment",dto); }
	
	public void delete4Comment(Luv dto) { sqlSession.insert(namespace+".delete4Comment",dto); }

	public List<Luv> selectList4Comment(Luv dto) { return sqlSession.selectList(namespace + ".selectList4Comment", dto); }
	
	public int selectCount4Comment(Luv dto) { return sqlSession.selectOne(namespace + ".selectCount4Comment",dto); }
}
