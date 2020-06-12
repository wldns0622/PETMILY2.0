package com.petmily.hospital.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petmily.hospital.domain.HospitalVO;
import com.petmily.hospital.persistence.HospitalMapper;
import com.petmily.member.domain.HospitalMemberVO;
import com.petmily.mypet.domain.PetVO;

import lombok.Setter;

@Service
public class HospitalServiceImpl implements HospitalService {

	@Setter(onMethod_ = @Autowired)
	private HospitalMapper hospitalMapper;
	
	@Override
	public List<HospitalVO> hospitalInfos() {
		
		return hospitalMapper.hospitalInfos();	
	}
	
	@Override
	public HospitalMemberVO hospitalDetail(HospitalMemberVO member) {
		return hospitalMapper.hospitalDetail(member);
	}
	
	
	@Override
	public ArrayList<PetVO> findUserPetList(String id){
		return hospitalMapper.findUserPetList(id);
	}

}
