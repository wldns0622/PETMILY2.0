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

	@Override
	public int insertBoosterImmu(ImmuVO immuVO) {
		return mapper.insertBoosterImmu(immuVO);
	}

	@Override
	public List<ImmuVO> selectBoosterImmu(ImmuVO immuVO) {
		return mapper.selectBoosterImmu(immuVO);
	}

	@Override
	public int deleteBoosterImmu(ImmuVO immuVO) {
		return mapper.deleteBoosterImmu(immuVO);
	}

	@Override
	public int insertDiImmu(ImmuVO immuVO) {
		return mapper.insertDiImmu(immuVO);
	}

	@Override
	public List<ImmuVO> selectDiImmu(ImmuVO immuVO) {
		return mapper.selectDiImmu(immuVO);
	}

	@Override
	public int deleteDiImmu(ImmuVO immuVO) {
		return mapper.deleteDiImmu(immuVO);
	}


}
