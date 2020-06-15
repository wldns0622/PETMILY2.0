package com.petmily.mypet.domain;

import java.io.Serializable;
import java.util.Date;

import lombok.Data;

@Data
public class MedVO implements Serializable {
	private int hosptMedRecordsNo;
	private int petNo;
	private String memId;
	private Date dtStart;
	private Date dtEnd;
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
}
