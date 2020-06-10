package com.petmily.member.persistence;

import com.petmily.hospital.domain.HospitalOperationVO;
import com.petmily.hospital.domain.HospitalVO;
import com.petmily.member.domain.HospitalMemberVO;
import com.petmily.member.domain.MemberVO;

public interface MemberMapper {
	
	public int memberSignUp(MemberVO member);
	public MemberVO memberLogin(MemberVO member);
	
	public int hospitalMemberSignUp(HospitalMemberVO hospitalMemberVO);
	
	public int hospitalOperationAdd(HospitalOperationVO hospitalOperationVO);
	
	public int hospitalUpdate(HospitalVO hospitalVO);
	
}
