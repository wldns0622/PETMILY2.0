package com.petmily.member.service;

import com.petmily.hospital.domain.HospitalOperationVO;
import com.petmily.hospital.domain.HospitalVO;
import com.petmily.member.domain.HospitalMemberVO;
import com.petmily.member.domain.LoginMemberVO;
import com.petmily.member.domain.MemberVO;

public interface MemberService {

	public boolean memberSignUp(MemberVO member);
	
	public MemberVO memberLogin(LoginMemberVO loginMemberVO);
	
	//public int hospitalMemberSignUp(HospitalMemberVO hospitalMemberVO);
	
	public int hospitalMemberSignUp(HospitalMemberVO hospitalMemberVO, HospitalOperationVO operationVO);
	
	public HospitalMemberVO hospitalMemberLogin(LoginMemberVO loginMemberVO);
	
}
