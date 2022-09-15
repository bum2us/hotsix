package com.bum2us.infra.modules.code;

import com.bum2us.infra.modules.base.BaseVo;

public class CodeVo extends BaseVo{
	
	private String upCodeGroupName;
	private String upCodeName;
	private Integer upCodeSeq;
	private String upUseNy;
	private Integer upCodeKey;

	public String getUpCodeGroupName() {
		return upCodeGroupName;
	}
	public void setUpCodeGroupName(String upCodeGroupName) {
		this.upCodeGroupName = upCodeGroupName;
	}
	public String getUpCodeName() {
		return upCodeName;
	}
	public void setUpCodeName(String upCodeName) {
		this.upCodeName = upCodeName;
	}
	public Integer getUpCodeSeq() {
		return upCodeSeq;
	}
	public void setUpCodeSeq(Integer upCodeSeq) {
		this.upCodeSeq = upCodeSeq;
	}
	public String getUpUseNy() {
		return upUseNy;
	}
	public void setUpUseNy(String upUseNy) {
		this.upUseNy = upUseNy;
	}	
	public Integer getUpCodeKey() {
		return upCodeKey;
	}
	public void setUpCodeKey(Integer upCodeKey) {
		this.upCodeKey = upCodeKey;
	}	
	
	public void printAll2() {
		System.out.println("-----------");
		System.out.println(upCodeGroupName);
		System.out.println(upCodeName);
		System.out.println(upCodeSeq);
		System.out.println(upUseNy);
		System.out.println(upCodeKey);
	}
}
