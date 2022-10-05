package com.bum2us.infra.modules.comment;

public class Comment {
	
	private Integer cmSeq;
	private Integer cmWriter;
	private Integer cmPostId;
	private String cmContent;
	private String cmCreateDate;
	private String cmEditDate;
	private String mmNickname;
	
	
	public Integer getCmSeq() {
		return cmSeq;
	}
	public void setCmSeq(Integer cmSeq) {
		this.cmSeq = cmSeq;
	}
	public Integer getCmWriter() {
		return cmWriter;
	}
	public void setCmWriter(Integer cmWriter) {
		this.cmWriter = cmWriter;
	}
	public Integer getCmPostId() {
		return cmPostId;
	}
	public void setCmPostId(Integer cmPostId) {
		this.cmPostId = cmPostId;
	}
	public String getCmContent() {
		return cmContent;
	}
	public void setCmContent(String cmContent) {
		this.cmContent = cmContent;
	}
	public String getCmCreateDate() {
		return cmCreateDate;
	}
	public void setCmCreateDate(String cmCreateDate) {
		this.cmCreateDate = cmCreateDate;
	}
	public String getCmEditDate() {
		return cmEditDate;
	}
	public void setCmEditDate(String cmEditDate) {
		this.cmEditDate = cmEditDate;
	}
	public String getMmNickname() {
		return mmNickname;
	}
	public void setMmNickname(String mmNickname) {
		this.mmNickname = mmNickname;
	}
	
	
}
