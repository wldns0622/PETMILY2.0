package com.petmily.mypet.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.petmily.mypet.domain.ImmuVO;
import com.petmily.mypet.persistence.HealthMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class HealthServiceImpl implements HealthService {

	private HealthMapper mapper;

	@Override
	public int insertBasicImmu(ImmuVO immuVO) {
		
		return mapper.insertBasicImmu(immuVO);
	}

	@Override
	public List<ImmuVO> selectBasicImmu(int petNo) {
		
		return mapper.selectBasicImmu(petNo);
	}

	@Override
	public int deleteBasicImmu(ImmuVO immuVO) {
		
		return mapper.deleteBasicImmu(immuVO);
	}


}
