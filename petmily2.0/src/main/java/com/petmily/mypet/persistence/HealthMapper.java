package com.petmily.mypet.persistence;

import java.util.List;

import com.petmily.mypet.domain.ImmuVO;
import com.petmily.mypet.domain.RsvnVO;

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
	
	List<RsvnVO> allRSVN(int reservationPetNo);
	RsvnVO selectRSVN(RsvnVO rsvnVO);
}
