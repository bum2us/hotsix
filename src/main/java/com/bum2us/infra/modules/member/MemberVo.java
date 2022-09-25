package com.bum2us.infra.modules.member;

import com.bum2us.infra.modules.base.BaseVo;

public class MemberVo extends BaseVo{
	
	private String shId;
	private String shPassword;
	private Integer shSeq;
	private Integer shGender;

	public String getShId() {
		return shId;
	}
	public void setShId(String shId) {
		this.shId = shId;
	}
	public String getShPassword() {
		return shPassword;
	}
	public void setShPassword(String shPassword) {
		this.shPassword = shPassword;
	}
	public Integer getShSeq() {
		return shSeq;
	}
	public void setShSeq(Integer shSeq) {
		this.shSeq = shSeq;
	}
	public Integer getShGender() {
		return shGender;
	}
	public void setShGender(Integer shGender) {
		this.shGender = shGender;
	}
	
	
}
