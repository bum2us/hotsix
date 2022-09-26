package com.bum2us.infra.modules.member;

import java.util.ArrayList;
import java.util.List;

import com.bum2us.infra.modules.base.BaseVo;

public class MemberVo extends BaseVo{
	
	private String shId;
	private String shPassword;
	private Integer shSeq;
	private Integer shGender;

	private List<MemberVo> seqVoList = new ArrayList<MemberVo>();
	
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
	public List<MemberVo> getSeqVoList() {
		return seqVoList;
	}
	public void setSeqVoList(List<MemberVo> seqVoList) {
		this.seqVoList = seqVoList;
	}
	
	
}
