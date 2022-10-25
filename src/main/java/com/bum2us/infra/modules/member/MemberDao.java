package com.bum2us.infra.modules.member;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDao {

	@Inject
	@Resource(name ="sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.bum2us.infra.modules.member.MemberMapper";
	
	public List<Member> selectList(MemberVo vo) { return sqlSession.selectList(namespace + ".selectList", vo); }
	
	public void insertList(Member mb) { sqlSession.insert(namespace + ".insertList", mb); }

	public Member selectOne(Member mb) { return sqlSession.selectOne(namespace + ".chkLogin", mb); }
	
	public Integer selectCount(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectCount",vo); }
	
	public Integer selectCount(String id) { return sqlSession.selectOne(namespace + ".selectOneCount", id); }

	public void updateOne(Member mb) { sqlSession.update(namespace + ".upadteOne", mb);	}

	public Member selectOne(MemberVo vo) { return sqlSession.selectOne(namespace + ".selectOne",vo); }
	
	public void uelete(MemberVo vo) { sqlSession.update(namespace + ".uelete" , vo); }

	public int selectLastSeq() { return sqlSession.selectOne(namespace + ".selectLastSeq"); }

	public void insertUpload(Member mb) {sqlSession.insert(namespace + ".insertUpload", mb); }

	public Integer selectProfileImg(int i) { return sqlSession.selectOne(namespace + ".selectProfileImg", i); }

	public void deleteProfileImg(Integer i) { sqlSession.update(namespace + ".deleteProfileImg", i); }

	public int chkPw(MemberVo vo) { return sqlSession.selectOne(namespace+".chkPw",vo); }

	public void updatePassword(Member mb) { sqlSession.update(namespace+".updatePassword",mb); }
}
