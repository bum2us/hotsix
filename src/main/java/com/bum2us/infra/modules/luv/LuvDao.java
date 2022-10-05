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
	
	
}
