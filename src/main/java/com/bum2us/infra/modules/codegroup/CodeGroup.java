package com.bum2us.infra.modules.codegroup;

import java.util.ArrayList;
import java.util.List;

public class CodeGroup {
	
	private String ccgSeq;
	private String ccgName;
	private Integer codeCount;
	private Integer ccgUseNy;
	private String ccgCreateDate;
	private String ccgEditDate;
	
	public static List<CodeGroup> cacheCodeGroupList = new ArrayList<CodeGroup>();

	public String getCcgSeq() {
		return ccgSeq;
	}

	public void setCcgSeq(String ccgSeq) {
		this.ccgSeq = ccgSeq;
	}

	public String getCcgName() {
		return ccgName;
	}

	public void setCcgName(String ccgName) {
		this.ccgName = ccgName;
	}

	public Integer getCodeCount() {
		return codeCount;
	}

	public void setCodeCount(Integer codeCount) {
		this.codeCount = codeCount;
	}

	public Integer getCcgUseNy() {
		return ccgUseNy;
	}

	public void setCcgUseNy(Integer ccgUseNy) {
		this.ccgUseNy = ccgUseNy;
	}

	public String getCcgCreateDate() {
		return ccgCreateDate;
	}

	public void setCcgCreateDate(String ccgCreateDate) {
		this.ccgCreateDate = ccgCreateDate;
	}

	public String getCcgEditDate() {
		return ccgEditDate;
	}

	public void setCcgEditDate(String ccgEditDate) {
		this.ccgEditDate = ccgEditDate;
	}

	public static List<CodeGroup> getCacheCodeGroupList() {
		return cacheCodeGroupList;
	}

	public static void setCacheCodeGroupList(List<CodeGroup> cacheCodeGroupList) {
		CodeGroup.cacheCodeGroupList = cacheCodeGroupList;
	}
	
	
	
}
