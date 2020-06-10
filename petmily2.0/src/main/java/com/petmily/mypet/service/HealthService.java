package com.petmily.mypet.service;

import java.util.List;

import com.petmily.mypet.domain.ImmuVO;

public interface HealthService {
	public int insertBasicImmu(ImmuVO immuVO);
	public List<ImmuVO> selectBasicImmu(int petNo);
	
}
