package com.petmily.pettalk.domain;

import java.io.Serializable;

import lombok.Data;

@Data
public class ReportVO implements Serializable{

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;
	private int boardNo;
	private String rptNo;
	private String memId;
	private String rptContents;
	private String rptDt;






}
