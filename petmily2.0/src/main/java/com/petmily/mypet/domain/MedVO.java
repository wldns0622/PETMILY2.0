package com.petmily.mypet.domain;

import java.io.Serializable;
import java.util.Date;

import lombok.Data;

@Data
public class MedVO implements Serializable {
	private int hosptMedRecordsNo;
	private int petNo;
	private String memId;
	private String dtStart;
	private String dtEnd;
	private Date hosptTmtDt;
	private String hosptTmtSort;
	private String hosptTmtContents;
	private int hosptNo;
	private int reservationNo;
	private int memMedRecordNo;
	private Date memTmtDt;
	private String memTmtSort;
	private String memTmtContents;
	private String hosptNm;
	private String hsptName; //병원 멤버 컬럼
	private String sort;
	private Date dt;
}
