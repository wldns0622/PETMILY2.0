package com.petmily.mypet.persistence;

import java.util.List;

import com.petmily.mypet.domain.ImmuVO;

public interface HealthMapper {
	int insertBasicImmu(ImmuVO immuVO);
	List<ImmuVO> selectBasicImmu(int petNo);
	int deleteBasicImmu(ImmuVO immuVO);
	
	int insertBoosterImmu(ImmuVO immuVO);
	List<ImmuVO> selectBoosterImmu(ImmuVO immuVO);
	int deleteBoosterImmu(ImmuVO immuVO);
	
	int insertDiImmu(ImmuVO immuVO);
	List<ImmuVO> selectDiImmu(ImmuVO immuVO);
	int deleteDiImmu(ImmuVO immuVO);
}
