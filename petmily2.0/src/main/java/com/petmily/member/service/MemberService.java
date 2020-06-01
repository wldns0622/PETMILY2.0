package com.petmily.member.service;

import com.petmily.member.domain.MemberVO;

public interface MemberService {

	public boolean memberSignUp(MemberVO member);
	
	public MemberVO memberLogin(MemberVO member);
	
}
