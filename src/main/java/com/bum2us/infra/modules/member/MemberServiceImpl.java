package com.bum2us.infra.modules.member;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.bum2us.infra.common.utils.UtilSecurity;
import com.bum2us.infra.common.utils.UtilUpload;

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
		
		int memberSeq = dao.selectLastSeq();
				
				int j = 0;
				for(MultipartFile myFile : mb.getPostImage()) {
					
					if(!myFile.isEmpty()) {
						
						String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
						UtilUpload.uploadProfile(myFile, pathModule, mb);
						
						mb.setUpType(2);
						mb.setUpDefaultNy(j == 0 ? 1 : 0);
						mb.setUpSort(j+1);
						mb.setMmSeq(memberSeq);
						
						dao.insertUpload(mb);
						j++;
					}
					
				}
		
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
