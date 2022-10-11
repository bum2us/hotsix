package com.bum2us.infra.modules.post;

import com.bum2us.infra.modules.base.Base;

public class Post extends Base{
	
	private Integer postSeq;
	private Integer postWriter;
	private Integer postBoard;
	private String  postCreateDate;
	private String  postEditDate;
	private String  postContent;
	private Integer postDelNy;
	
	private Integer loginUserSeq;
	private Integer mmSeq;
	private String mmNickname;
	private String bdName;
	
	
	
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
	public Integer getMmSeq() {
		return mmSeq;
	}
	public void setMmSeq(Integer mmSeq) {
		this.mmSeq = mmSeq;
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
	
	
}
