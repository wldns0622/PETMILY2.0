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

}
