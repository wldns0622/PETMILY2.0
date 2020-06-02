package com.petmily.hospital.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.petmily.hospital.domain.HospitalVO;
import com.petmily.hospital.persistence.HospitalMapper;

import lombok.Setter;

@Service
public class HospitalServiceImpl implements HospitalService {

	@Setter(onMethod_ = @Autowired)
	private HospitalMapper hospitalMapper;
	
	@Override
	public List<HospitalVO> hospitalInfos() {
		
		return hospitalMapper.hospitalInfos();
		
		
	}

}
