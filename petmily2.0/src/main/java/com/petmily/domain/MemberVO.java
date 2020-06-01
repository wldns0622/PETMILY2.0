package com.petmily.domain;

import lombok.Data;

@Data
public class MemberVO {
	
	private String id;
	private String name;
	private String password;
	private String email;
	private String phoneNo;
	private String birth;
	private String nicknm;
	private String code;
	private String address;
	private char emailCheck;
	private char smsCheck;
	
}
