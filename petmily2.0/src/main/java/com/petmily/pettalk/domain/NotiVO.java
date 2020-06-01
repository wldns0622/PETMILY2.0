package com.petmily.pettalk.domain;

import java.io.Serializable;

public class NotiVO implements Serializable{

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;
	private int alertNo;
	private String alertCreateDt;
	private String alertReadDt;
	private int alertCode;
	private int boardNo;


	public int getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(int boardNo) {
		this.boardNo = boardNo;
	}
	public int getAlertCode() {
		return alertCode;
	}
	public void setAlertCode(int alertCode) {
		this.alertCode = alertCode;
	}
	private String memId;
	private String memToId;
	public String getMemToId() {
		return memToId;
	}
	public void setMemToId(String memToId) {
		this.memToId = memToId;
	}
	private String eventNm;



	public String getEventNm() {
		return eventNm;
	}
	public void setEventNm(String eventNm) {
		this.eventNm = eventNm;
	}
	@Override
	public String toString() {
		return "NotiVO [alertNo=" + alertNo + ", alertCreateDt=" + alertCreateDt + ", alertReadDt=" + alertReadDt
				+ ", alertCode=" + alertCode + ", memId=" + memId + ",eventnm="+ eventNm + "]";
	}
	public int getAlertNo() {
		return alertNo;
	}
	public void setAlertNo(int alertNo) {
		this.alertNo = alertNo;
	}
	public String getAlertCreateDt() {
		return alertCreateDt;
	}
	public void setAlertCreateDt(String alertCreateDt) {
		this.alertCreateDt = alertCreateDt;
	}
	public String getAlertReadDt() {
		return alertReadDt;
	}
	public void setAlertReadDt(String alertReadDt) {
		this.alertReadDt = alertReadDt;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}


}
