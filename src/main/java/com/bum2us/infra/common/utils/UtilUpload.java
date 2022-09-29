package com.bum2us.infra.common.utils;

import java.io.File;
import java.util.UUID;

import org.springframework.web.multipart.MultipartFile;

import com.bum2us.infra.modules.post.Post;

public class UtilUpload {

	public static void upload (MultipartFile multipartFile, String className, Post dto) throws Exception {
		String fileName = multipartFile.getOriginalFilename();
		String ext = fileName.substring(fileName.lastIndexOf(".") + 1);
		String uuid = UUID.randomUUID().toString();
		String uuidFileName = uuid + "." + ext;
		String pathModule = className;
		String nowString = UtilDateTime.nowString();
		String pathDate = nowString.substring(0,4) + "/" + nowString.substring(5,7) + "/" + nowString.substring(8,10); 
		String path = "D://01_DEV/wsEzen/hotsix/src/main/webapp/resources/uploaded" + "/" + pathModule + "/" + pathDate + "/";
		String pathForView = "/resources/uploaded/" + pathModule + "/" + pathDate + "/";
		
		createPath(path);
		  
		multipartFile.transferTo(new File(path + uuidFileName));
		
		dto.setUpPath(pathForView);
		dto.setUpOriginalName(fileName);
		dto.setUpUuidName(uuidFileName);
		dto.setUpExt(ext);
		String size = ""+ multipartFile.getSize();
		dto.setUpSize(size); 
	}
	
	
	public static void createPath (String path) {
		File uploadPath = new File(path);
		
		if (!uploadPath.exists()) {
			uploadPath.mkdir();
		} else {
			// by pass
		}
	}
	
}
