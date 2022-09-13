package com.bum2us.infra.modules.code;

public class CodeVo {
	
	private Integer shUseNy;
	private Integer shDateOption;
	private String shDateStart;
	private String shDateEnd;
	private Integer shOption;
	private String shValue;
	
	private String upCodeGroupName;
	private String upCodeName;
	private Integer upCodeSeq;
	private String upUseNy;
	private Integer upCodeKey;
	
	public String getShDateStart() {
		return shDateStart;
	}
	public void setShDateStart(String shDateStart) {
		this.shDateStart = shDateStart;
	}
	public String getShDateEnd() {
		return shDateEnd;
	}
	public void setShDateEnd(String shDateEnd) {
		this.shDateEnd = shDateEnd;
	}	
	public Integer getShUseNy() {
		return shUseNy;
	}
	public void setShUseNy(Integer shUseNy) {
		this.shUseNy = shUseNy;
	}
	public Integer getShDateOption() {
		return shDateOption;
	}
	public void setShDateOption(Integer shDateOption) {
		this.shDateOption = shDateOption;
	}
	public Integer getShOption() {
		return shOption;
	}
	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}
	public String getShValue() {
		return shValue;
	}
	public void setShValue(String shValue) {
		this.shValue = shValue;
	}
	

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
	
	
	public void printAll() {
		System.out.println("------------");
		System.out.println(shUseNy);
		System.out.println(shDateOption);
		System.out.println(shDateStart);
		System.out.println(shDateEnd);
		System.out.println(shOption);
		System.out.println(shValue);
	}
}
