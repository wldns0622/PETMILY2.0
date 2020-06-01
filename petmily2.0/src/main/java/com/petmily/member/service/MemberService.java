package com.petmily.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petmily.member.domain.MemberVO;
import com.petmily.member.persistance.MemberMapper;

import lombok.Setter;

@Service
public class MemberService {

	@Setter(onMethod_ = @Autowired)
	private MemberMapper memberMapper;
	
	public boolean memberSignUp(MemberVO member) {
		int result = memberMapper.memberSignUp(member);
		return result == 1;
	}
	
	public MemberVO memberLogin(MemberVO member) {
		return memberMapper.memberLogin(member);
	}
	
	
}
