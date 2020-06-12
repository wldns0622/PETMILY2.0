package com.petmily.hospital.service;

import java.util.ArrayList;
import java.util.List;

import com.petmily.hospital.domain.HospitalVO;
import com.petmily.member.domain.HospitalMemberVO;
import com.petmily.mypet.domain.PetVO;

public interface HospitalService {

	public List<HospitalVO> hospitalInfos();
	
	public HospitalMemberVO hospitalDetail(HospitalMemberVO member);
	
	public ArrayList<PetVO> findUserPetList(String id);
	
	
	
}
