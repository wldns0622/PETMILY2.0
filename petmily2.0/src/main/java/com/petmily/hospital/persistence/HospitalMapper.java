package com.petmily.hospital.persistence;

import java.util.ArrayList;
import java.util.List;

import com.petmily.hospital.domain.HospitalOperationVO;
import com.petmily.hospital.domain.HospitalVO;
import com.petmily.member.domain.HospitalMemberVO;
import com.petmily.mypet.domain.PetVO;

public interface HospitalMapper {

	public List<HospitalVO> hospitalInfos();
	
	public HospitalMemberVO hospitalDetail(HospitalMemberVO member);
	
	public ArrayList<PetVO> findUserPetList(String id);
	
}
