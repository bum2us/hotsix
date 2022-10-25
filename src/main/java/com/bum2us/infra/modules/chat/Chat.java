package com.bum2us.infra.modules.chat;

import com.bum2us.infra.modules.base.Base;

public class Chat extends Base{
	
	private Integer cuMemberSeq;
	private Integer chatSeq;
	private String chatEditDate;
	
	private Integer mmSeq;
	private String mmNickname;
	private String upPath;
	private String upUuidName;
	

	
	public Integer getCuMemberSeq() {
		return cuMemberSeq;
	}
	public void setCuMemberSeq(Integer cuMemberSeq) {
		this.cuMemberSeq = cuMemberSeq;
	}
	public Integer getChatSeq() {
		return chatSeq;
	}
	public void setChatSeq(Integer chatSeq) {
		this.chatSeq = chatSeq;
	}
	public String getChatEditDate() {
		return chatEditDate;
	}
	public void setChatEditDate(String chatEditDate) {
		this.chatEditDate = chatEditDate;
	}
	public Integer getMmSeq() {
		return mmSeq;
	}
	public void setMmSeq(Integer mmSeq) {
		this.mmSeq = mmSeq;
	}
	public String getMmNickname() {
		return mmNickname;
	}
	public void setMmNickname(String mmNickname) {
		this.mmNickname = mmNickname;
	}
	public String getUpPath() {
		return upPath;
	}
	public void setUpPath(String upPath) {
		this.upPath = upPath;
	}
	public String getUpUuidName() {
		return upUuidName;
	}
	public void setUpUuidName(String upUuidName) {
		this.upUuidName = upUuidName;
	}
	
	
}
