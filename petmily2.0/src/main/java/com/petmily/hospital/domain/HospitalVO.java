package com.petmily.hospital.domain;

import lombok.Data;

@Data
public class HospitalVO {
	
	private int hosptNo;
	private String hosptName;
	private String hosptTel;
	private String hosptAddress;
	private String hosptRoadAddress;
	private String hosptBusinessHours;
	private double hosptX;
	private double hosptY;
	private char hosptAgreement; //협약기업 여부 DB에는 컬럼 추가 되어 있음
	
}
