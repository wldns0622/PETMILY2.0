package com.petmily.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petmily.member.domain.MemberVO;
import com.petmily.member.persistance.MemberMapper;

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
	public MemberVO memberLogin(MemberVO member) {
		return memberMapper.memberLogin(member);
	}

	
}
