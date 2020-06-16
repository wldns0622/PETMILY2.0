package com.petmily.member.domain;

import java.util.List;

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
	private String codeNm;
	private String address;
	private char emailCheck;
	private char smsCheck;
	private String registerDate;
	private boolean enabled;

	//private List<AuthVO> authList;

}
