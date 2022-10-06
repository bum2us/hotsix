package com.bum2us.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bum2us.infra.common.utils.UtilSecurity;

@Service
public class MemberServiceImpl implements MemberService{

	
	@Autowired
	MemberDao dao;
	
	
	@Override
	public List<Member> selectList(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		
		return dao.selectList(vo);
	}
	
	@Override
	public void insertList(Member mb) throws Exception {
		// TODO Auto-generated method stub
		
		mb.setMmPassword(UtilSecurity.encryptSha256(mb.getMmPassword()));		
		
		dao.insertList(mb);
	}


	@Override
	public Member selectOne(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub		
		return dao.selectOne(vo);
	}

	@Override
	public Member chkLogin(Member mb) throws Exception {
		// TODO Auto-generated method stub
		
		mb.setMmPassword(UtilSecurity.encryptSha256(mb.getMmPassword()));
		
		return dao.selectOne(mb);
	}


	@Override
	public Integer selectCount(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		
		return dao.selectCount(vo);
	}

	@Override
	public void updateOne(Member mb) throws Exception {
		// TODO Auto-generated method stub
		
		mb.setMmPassword(UtilSecurity.encryptSha256(mb.getMmPassword()));
		
		dao.updateOne(mb);
	}

	public int chkId(String id) throws Exception{
		// TODO Auto-generated method stub
		return dao.selectCount(id);
	}

	@Override
	public void uelete(MemberVo vo) throws Exception {
		// TODO Auto-generated method stub
		
		for (MemberVo item : vo.getSeqVoList()) {
			
			dao.uelete(item);
		}
		
		
	}
	
	
}
