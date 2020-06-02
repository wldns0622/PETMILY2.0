package com.petmily.mypet.domain;

import java.io.Serializable;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class HosptMedVO implements Serializable{
	private int hosptMedRecordsNo;
	private int petNo;
	private String memId;
	private Date hosptTmtDt;
	private String hosptTmtSort;
	private String hosptTmtContents;
	private int hosptNo;
}
