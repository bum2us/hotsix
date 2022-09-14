package com.bum2us.infra.modules;

public class PageInfo {
	
	//현재 페이지
	private Integer pageNumber;
	//페이지당 데이터 수
	private Integer pageSize = 10;
	//페이지 첫번째 요소의 seq
	private Integer pageRangeStart;
	//페이지 마지막 요소의 seq
	private Integer pageRangeEnd;
	//페이지 수
	private Integer pageCount;
	//첫번째 페이지인지 확인
	private boolean isFirstPage;
	//마지막 페이지인지 확인
	private boolean isLastPage;
	
	
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
	public Integer getPageRangeStart() {
		return pageRangeStart;
	}
	public void setPageRangeStart(Integer pageRangeStart) {
		this.pageRangeStart = pageRangeStart;
	}
	public Integer getPageRangeEnd() {
		return pageRangeEnd;
	}
	public void setPageRangeEnd(Integer pageRangeEnd) {
		this.pageRangeEnd = pageRangeEnd;
	}
	public Integer getPageCount() {
		return pageCount;
	}
	public void setPageCount(Integer pageCount) {
		this.pageCount = pageCount;
	}
	public boolean isFirstPage() {
		return isFirstPage;
	}
	public void setFirstPage(boolean isFirstPage) {
		this.isFirstPage = isFirstPage;
	}
	public boolean isLastPage() {
		return isLastPage;
	}
	public void setLastPage(boolean isLastPage) {
		this.isLastPage = isLastPage;
	}
	
	public void showAll() {
		System.err.println("[PAGE INFO SHOW ALL]");
		System.out.println("pageNumber:"+pageNumber);
		System.out.println("pageSize:"+pageSize);
		System.out.println("pageRangeStart:"+pageRangeStart);
		System.out.println("pageRangeEnd:"+pageRangeEnd);
		System.out.println("pageCount:"+pageCount);
		System.out.println("isFirstPage:"+isFirstPage);
		System.out.println("isLastPage:"+isLastPage);
	}
}
