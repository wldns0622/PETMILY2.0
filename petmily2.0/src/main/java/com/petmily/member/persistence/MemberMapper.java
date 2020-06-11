package com.petmily.member.persistence;

import com.petmily.hospital.domain.HospitalOperationVO;
import com.petmily.hospital.domain.HospitalVO;
import com.petmily.member.domain.HospitalMemberVO;
import com.petmily.member.domain.LoginMemberVO;
import com.petmily.member.domain.MemberVO;

public interface MemberMapper {
	
	public int memberSignUp(MemberVO member);
	
	public MemberVO memberLogin(LoginMemberVO loginMember);
	
	//public LoginMemberVO memberLogin(LoginMemberVO loginMember);
	
	public int hospitalMemberSignUp(HospitalMemberVO hospitalMemberVO);
	
	public int hospitalOperationAdd(HospitalOperationVO hospitalOperationVO);
	
	public int hospitalUpdate(HospitalVO hospitalVO);
	
	public HospitalMemberVO hospitalMemberLogin(LoginMemberVO loginMember); //HospitalOperationVO hospitalOperationVO
	
	public HospitalOperationVO hospitalOperationInsert(HospitalOperationVO operationVO);
	
	public HospitalVO hospitalAgreementUpdate(HospitalVO hospitalVO);
}
