package com.petmily.hospital.domain;

import lombok.Data;

@Data
public class HospitalMedRecordsVO {
	private int hosptMedRecordsNo;
	private String PetNo;
	private String MemId;
	private String HosptTmtDt;
	private String hosptTmtSort;
	private String hosptTmtContents;
	private int reservationNo;
	private String hsptId;
}
