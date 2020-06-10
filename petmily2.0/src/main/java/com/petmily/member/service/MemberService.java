package com.petmily.member.service;

import com.petmily.hospital.domain.HospitalOperationVO;
import com.petmily.member.domain.HospitalMemberVO;
import com.petmily.member.domain.MemberVO;

public interface MemberService {

	public boolean memberSignUp(MemberVO member);
	
	public MemberVO memberLogin(MemberVO member);
	
	public int hospitalMemberSignUp(HospitalMemberVO hospitalMemberVO);
}
