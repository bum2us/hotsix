package com.bum2us.infra.modules.base;

import org.springframework.web.multipart.MultipartFile;

public class Base {
	
	private String shValue;
	
	public String getShValue() {
		return shValue;
	}

	public void setShValue(String shValue) {
		this.shValue = shValue;
	}

	private String  upPath; 
	private String  upOriginalName;
	private String  upUuidName;
	private String  upExt;
	private String  upSize;
	private Integer upSeq;
	private Integer upDefaultNy;
	private Integer upSort;
	private Integer upDelNy;
	private Integer upType;
	
	private MultipartFile[] postImage;

	public String getUpPath() {
		return upPath;
	}

	public void setUpPath(String upPath) {
		this.upPath = upPath;
	}
	
	public String getUpOriginalName() {
		return upOriginalName;
	}

	public void setUpOriginalName(String upOriginalName) {
		this.upOriginalName = upOriginalName;
	}

	public String getUpUuidName() {
		return upUuidName;
	}

	public void setUpUuidName(String upUuidName) {
		this.upUuidName = upUuidName;
	}

	public String getUpExt() {
		return upExt;
	}

	public void setUpExt(String upExt) {
		this.upExt = upExt;
	}

	public String getUpSize() {
		return upSize;
	}

	public void setUpSize(String upSize) {
		this.upSize = upSize;
	}

	public Integer getUpSeq() {
		return upSeq;
	}

	public void setUpSeq(Integer upSeq) {
		this.upSeq = upSeq;
	}

	public Integer getUpDefaultNy() {
		return upDefaultNy;
	}

	public void setUpDefaultNy(Integer upDefaultNy) {
		this.upDefaultNy = upDefaultNy;
	}

	public Integer getUpSort() {
		return upSort;
	}

	public void setUpSort(Integer upSort) {
		this.upSort = upSort;
	}

	public Integer getUpDelNy() {
		return upDelNy;
	}

	public void setUpDelNy(Integer upDelNy) {
		this.upDelNy = upDelNy;
	}

	public Integer getUpType() {
		return upType;
	}

	public void setUpType(Integer upType) {
		this.upType = upType;
	}

	public MultipartFile[] getPostImage() {
		return postImage;
	}

	public void setPostImage(MultipartFile[] postImage) {
		this.postImage = postImage;
	}
	
	
}
