package com.bum2us.infra.modules.base;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.bum2us.infra.common.utils.UtilSecurity;
import com.bum2us.infra.modules.member.Member;
import com.bum2us.infra.modules.post.PostVo;

@Service
public class BaseServiceImpl implements BaseService{

	@Autowired
	BaseDao dao;
	
	@Override
	public Member Login(Member mb) throws Exception {
		// TODO Auto-generated method stub
		
		mb.setMmPassword(UtilSecurity.encryptSha256(mb.getMmPassword()));
		
		return dao.Login(mb);
	}

	@Override
	public Member selectOneMember(PostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOneMember(vo);
	}

	@Override
	public Member selectProfileImg(PostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectProfileImg(vo);
	}

	

	
	
}
