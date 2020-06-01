package com.petmily.persistance;

import com.petmily.domain.MemberVO;

public interface MemberMapper {
	
	public int memberSignUp(MemberVO member);
	public MemberVO memberLogin(MemberVO member);
	
	
}
