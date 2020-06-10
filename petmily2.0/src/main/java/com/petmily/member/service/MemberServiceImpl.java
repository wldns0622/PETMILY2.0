package com.petmily.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petmily.member.domain.HospitalMemberVO;
import com.petmily.member.domain.LoginMemberVO;
import com.petmily.member.domain.MemberVO;
import com.petmily.member.persistence.MemberMapper;

import lombok.Setter;

@Service
public class MemberServiceImpl implements MemberService {

	@Setter(onMethod_ = @Autowired)
	private MemberMapper memberMapper;
	
	@Override
	public boolean memberSignUp(MemberVO member) {
		System.out.println("service member : " + member);
		
		int result = memberMapper.memberSignUp(member);
		System.out.println("result : " + result);
		return result == 1;
	}

	@Override
	public MemberVO memberLogin(LoginMemberVO loginMember) {
		return memberMapper.memberLogin(loginMember);
	}
	
	/*@Override
	public LoginMemberVO memberLogin(LoginMemberVO loginMember) {
		return memberMapper.memberLogin(loginMember);
	}*/

	@Override
	public int hospitalMemberSignUp(HospitalMemberVO hospitalMemberVO) {
		int result = memberMapper.hospitalMemberSignUp(hospitalMemberVO);
		
		return result;
	}
	
	@Override
	public HospitalMemberVO hospitalMemberLogin(LoginMemberVO loginMember) {
		
		return memberMapper.hospitalMemberLogin(loginMember);
	}
	
	/*@Override
	public LoginMemberVO hospitalMemberLogin(LoginMemberVO loginMember) {
		
		return memberMapper.hospitalMemberLogin(loginMember);
	}*/
}
