package com.bum2us.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

public class Code {
	
	private String ccSeq;
	private String ccgName;
	private String groupSeq;
	private String ccKey;
	private String ccName;
	private Integer ccUseNy;
	private String ccCreateDate;
	private String ccEditDate;

	public static List<Code> cacheCodeList = new ArrayList<Code>();
	
	public void printAll() {
		System.out.println("-------------------");
		System.out.println("seq :"+ccSeq);
		System.out.println("groupName :"+ccgName);
		System.out.println("groupSeq :"+groupSeq);
		System.out.println("codeKey :"+ccKey);
		System.out.println("codeName :"+ccName);
		System.out.println("useNy :"+ccUseNy);
		System.out.println("createDate :"+ccCreateDate);
		System.out.println("editDate :"+ccEditDate);
	}

	public String getCcSeq() {
		return ccSeq;
	}

	public void setCcSeq(String ccSeq) {
		this.ccSeq = ccSeq;
	}

	public String getCcgName() {
		return ccgName;
	}

	public void setCcgName(String ccgName) {
		this.ccgName = ccgName;
	}

	public String getGroupSeq() {
		return groupSeq;
	}

	public void setGroupSeq(String groupSeq) {
		this.groupSeq = groupSeq;
	}

	public String getCcKey() {
		return ccKey;
	}

	public void setCcKey(String ccKey) {
		this.ccKey = ccKey;
	}

	public String getCcName() {
		return ccName;
	}

	public void setCcName(String ccName) {
		this.ccName = ccName;
	}

	public Integer getCcUseNy() {
		return ccUseNy;
	}

	public void setCcUseNy(Integer ccUseNy) {
		this.ccUseNy = ccUseNy;
	}

	public String getCcCreateDate() {
		return ccCreateDate;
	}

	public void setCcCreateDate(String ccCreateDate) {
		this.ccCreateDate = ccCreateDate;
	}

	public String getCcEditDate() {
		return ccEditDate;
	}

	public void setCcEditDate(String ccEditDate) {
		this.ccEditDate = ccEditDate;
	}

	public static List<Code> getCacheCodeList() {
		return cacheCodeList;
	}

	public static void setCacheCodeList(List<Code> cacheCodeList) {
		Code.cacheCodeList = cacheCodeList;
	}
	
	
	

	
}
