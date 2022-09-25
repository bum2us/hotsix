package com.bum2us.infra.modules.base;

import com.bum2us.infra.modules.code.CodeServiceImpl;

public class BaseVo {
	
	private String shValue;
	private Integer shOption;
	private Integer shDateOption;
	private String shDateStart;
	private String shDateEnd;
	private Integer shUseNy;
	
	private Integer pageNumber;
	private Integer pageSize;
	private Integer pageRange;
	private Integer pageTotal;
	
	public String getShValue() {
		return shValue;
	}
	public void setShValue(String shValue) {
		this.shValue = shValue;
	}
	public Integer getShOption() {
		return shOption;
	}
	public void setShOption(Integer shOption) {
		this.shOption = shOption;
	}
	public Integer getShDateOption() {
		return shDateOption;
	}
	public void setShDateOption(Integer shDateOption) {
		this.shDateOption = shDateOption;
	}
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
	
	public void ShowSh() 
	{
		System.out.println("---------------");
		System.out.println("shValue :"+shValue);
		System.out.println("shOption :"+shOption);
		System.out.println("shDateOption :"+shDateOption);
		System.out.println("shDateStart :"+shDateStart);
		System.out.println("shDateEnd :"+shDateEnd);
		System.out.println("shUseNy :"+shUseNy);
	}
	
	public Integer getPageNumber() {
		return pageNumber;
	}
	public void setPageNumber(Integer pageNumber) {
		this.pageNumber = pageNumber;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getPageRange() {
		return pageRange;
	}
	public void setPageRange(Integer pageRange) {
		this.pageRange = pageRange;
	}
	public Integer getPageTotal() {
		return pageTotal;
	}
	public void setPageTotal(Integer pageTotal) {
		this.pageTotal = pageTotal;
	}
	public void setPageParams(BaseVo vo) {	
		this.pageTotal = vo.pageTotal;
	}
	
    public void setVoData() throws Exception {
    	
    	if(shOption == null)
    		shOption = 1;
		
		if(this.shValue == null)
			this.shValue = "";	
		
		if(this.shDateOption == null) {
			this.shDateOption = 2;
			this.shDateStart = "1700-01-01 00:00:00";
			this.shDateEnd = "2023-01-01 00:00:00";
		}		
		else if( this.shDateOption == 2) {
			this.shDateStart = this.shDateStart + " 00:00:00";
			 this.shDateEnd =  this.shDateEnd + " 23:59:59";
		}
		 
		System.out.println("---------------");
		System.out.println("shOption : " + this.shOption);
		System.out.println("shValue : " + this.shValue);
		System.out.println("shDateOption : " + this.shDateOption);
		System.out.println("shDateStart : " + this.shDateStart);
		System.out.println("shDateEnd : " + this.shDateEnd);	
		
		
		if(this.pageNumber == null)
			this.pageNumber = 1;
		if(this.pageSize == null)
			this.pageSize = 10;
		this.pageRange = (this.pageNumber - 1) * this.pageSize;
    	
    }
}
