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
	private String hsptApprove;
	private String hsptFile;
	private String hsptFilePath;
	
	//private String hsptBusinessDay; //蹂묒썝 �슫�쁺�씪 �뀒�씠釉� 李몄“
	//private String hsptBusinessHours; //蹂묒썝 �슫�쁺�떆媛� �뀒�씠釉� 李몄“
}
