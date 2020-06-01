package com.petmily.pettalk.domain;

import java.io.Serializable;

public class ReportVO implements Serializable{

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;
	private String boardNo;
	private String rptNo;
	private String memId;
	private String rptContents;
	private String rptDt;


	@Override
	public String toString() {
		return "ReportVO [boardNo=" + boardNo + ", rptNo=" + rptNo + ", memId=" + memId + ", rptContents=" + rptContents
				+ ", rptDt=" + rptDt + "]";
	}

	public String getBoardNo() {
		return boardNo;
	}
	public void setBoardNo(String boardNo) {
		this.boardNo = boardNo;
	}
	public String getRptNo() {
		return rptNo;
	}
	public void setRptNo(String rptNo) {
		this.rptNo = rptNo;
	}
	public String getMemId() {
		return memId;
	}
	public void setMemId(String memId) {
		this.memId = memId;
	}
	public String getRptContents() {
		return rptContents;
	}
	public void setRptContents(String rptContents) {
		this.rptContents = rptContents;
	}
	public String getRptDt() {
		return rptDt;
	}
	public void setRptDt(String rptDt) {
		this.rptDt = rptDt;
	}




}
