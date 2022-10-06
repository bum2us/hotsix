package com.bum2us.infra.modules.post;

import org.springframework.web.multipart.MultipartFile;

public class Post {
	
	private Integer postSeq;
	private Integer postWriter;
	private Integer postBoard;
	private String  postCreateDate;
	private String  postEditDate;
	private String  postContent;
	private Integer postDelNy;
	
	private Integer loginUserSeq;
	private String mmNickname;
	private String bdName;
	
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
	
	public Integer getPostSeq() {
		return postSeq;
	}
	public void setPostSeq(Integer postSeq) {
		this.postSeq = postSeq;
	}
	public Integer getPostWriter() {
		return postWriter;
	}
	public void setPostWriter(Integer postWriter) {
		this.postWriter = postWriter;
	}
	public Integer getPostBoard() {
		return postBoard;
	}
	public void setPostBoard(Integer postBoard) {
		this.postBoard = postBoard;
	}
	public String getPostCreateDate() {
		return postCreateDate;
	}
	public void setPostCreateDate(String postCreateDate) {
		this.postCreateDate = postCreateDate;
	}
	public String getPostEditDate() {
		return postEditDate;
	}
	public void setPostEditDate(String postEditDate) {
		this.postEditDate = postEditDate;
	}
	public String getPostContent() {
		return postContent;
	}
	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}
	public Integer getPostDelNy() {
		return postDelNy;
	}
	public void setPostDelNy(Integer postDelNy) {
		this.postDelNy = postDelNy;
	}
	
	
	
	
	
	public Integer getLoginUserSeq() {
		return loginUserSeq;
	}
	public void setLoginUserSeq(Integer loginUserSeq) {
		this.loginUserSeq = loginUserSeq;
	}
	public String getMmNickname() {
		return mmNickname;
	}
	public void setMmNickname(String mmNickname) {
		this.mmNickname = mmNickname;
	}
	public String getBdName() {
		return bdName;
	}
	public void setBdName(String bdName) {
		this.bdName = bdName;
	}
	
	
	
	
	
	
	public MultipartFile[] getPostImage() {
		return postImage;
	}
	public void setPostImage(MultipartFile[] postImage) {
		this.postImage = postImage;
	}
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

	
	
	
	
	
	
}
