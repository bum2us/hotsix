package com.bum2us.infra.modules.code;

import java.util.ArrayList;
import java.util.List;

public class Code {
	
	private String seq;
	private String groupName;
	private String groupSeq;
	private String codeKey;
	private String codeName;
	private Integer useNy;
	private String createDate;
	private String editDate;

	public static List<Code> cacheCodeList = new ArrayList<Code>();
	
	public void printAll() {
		System.out.println("-------------------");
		System.out.println("seq :"+seq);
		System.out.println("groupName :"+groupName);
		System.out.println("groupSeq :"+groupSeq);
		System.out.println("codeKey :"+codeKey);
		System.out.println("codeName :"+codeName);
		System.out.println("useNy :"+useNy);
		System.out.println("createDate :"+createDate);
		System.out.println("editDate :"+editDate);
	}
	
	
	public String getSeq() {
		return seq;
	}
	public void setSeq(String seq) {
		this.seq = seq;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	public String getGroupSeq() {
		return groupSeq;
	}
	public void setGroupSeq(String groupSeq) {
		this.groupSeq = groupSeq;
	}
	public String getCodeKey() {
		return codeKey;
	}
	public void setCodeKey(String codeKey) {
		this.codeKey = codeKey;
	}
	public String getCodeName() {
		return codeName;
	}
	public void setCodeName(String codeName) {
		this.codeName = codeName;
	}
	public Integer getUseNy() {
		return useNy;
	}
	public void setUseNy(Integer useNy) {
		this.useNy = useNy;
	}
	public String getCreateDate() {
		return createDate;
	}
	public void setCreateDate(String createDate) {
		this.createDate = createDate;
	}
	public String getEditDate() {
		return editDate;
	}
	public void setEditDate(String editDate) {
		this.editDate = editDate;
	}
	

	
}
