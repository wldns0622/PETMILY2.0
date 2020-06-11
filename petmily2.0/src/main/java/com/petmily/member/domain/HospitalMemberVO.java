package com.petmily.member.domain;

import lombok.Data;

@Data
public class HospitalMemberVO {

	private String hsptId;
	private String hsptPass;
	private String hsptName;
	private String hsptAddr;
	private String hsptTel;
	private String hsptLicenseNum;
	//private String hsptBusinessDay; //병원 운영일 테이블 참조
	//private String hsptBusinessHours; //병원 운영시간 테이블 참조
}
