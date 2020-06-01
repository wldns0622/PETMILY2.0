package com.petmily.member.persistance;

import com.petmily.member.domain.MemberVO;

public interface MemberMapper {
	
	public int memberSignUp(MemberVO member);
	public MemberVO memberLogin(MemberVO member);
	
	
}
