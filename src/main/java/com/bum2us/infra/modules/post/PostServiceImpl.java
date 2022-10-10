package com.bum2us.infra.modules.post;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.bum2us.infra.common.utils.UtilUpload;

@Service
public class PostServiceImpl implements PostService{

	
	@Autowired
	PostDao dao;


	
	@Override
	public List<Post> selectListForProfile(PostVo vo) throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println("impl");
		
		return dao.selectListForProfile(vo);
	}


	@Override
	public List<Post> selectList(PostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectList(vo);
	}


	@Override
	public Integer selectCount(PostVo vo) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectCount(vo);
	}


	@Override
	public void insert(Post dto) throws Exception {
		// TODO Auto-generated method stub
			
		dao.insert(dto);
		
		int postSeq = dao.selectLastSeq(); //64
		
		int j = 0;
		for(MultipartFile myFile : dto.getPostImage()) {
			
			if(!myFile.isEmpty()) {
				// postServiceImpl
				String pathModule = this.getClass().getSimpleName().toString().toLowerCase().replace("serviceimpl", "");
				UtilUpload.uploadPost(myFile, pathModule, dto);
				
				dto.setUpType(2);
				dto.setUpDefaultNy(j == 0 ? 1 : 0);
				dto.setUpSort(j+1);
				dto.setPostSeq(postSeq);
				
				dao.insertUpload(dto);
				j++;
			}
			
		}
	}


	@Override
	public List<Post> selectListForMain(int i) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectListForMain(i);
	}


	@Override
	public Post selectOne(int i) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectOne(i);
	}


	public int selectCheckLoginUserLuved(Post dto) {
		// TODO Auto-generated method stub
		return dao.selectCheckLoginUserLuved(dto);
	}


	@Override
	public Post selectPostImg(Post dto) throws Exception {
		// TODO Auto-generated method stub
		return dao.selectPostImg(dto);
	}


	
	
	
	
}
