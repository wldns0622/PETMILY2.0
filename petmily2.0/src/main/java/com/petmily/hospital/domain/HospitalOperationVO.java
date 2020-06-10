package com.petmily.hospital.domain;

import com.petmily.member.domain.HospitalMemberVO;

import lombok.Data;

@Data
public class HospitalOperationVO {

	private String sunOper;
	private String monOper;
	private String tueOper;
	private String wedOper;
	private String thuOper;
	private String friOper;
	private String satOper;
	private String hsptId;
}
