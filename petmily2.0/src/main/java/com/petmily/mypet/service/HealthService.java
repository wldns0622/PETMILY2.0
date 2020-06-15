package com.petmily.mypet.service;

import java.util.List;

import com.petmily.mypet.domain.ImmuVO;
import com.petmily.mypet.domain.RsvnVO;

public interface HealthService {
	public int insertBasicImmu(ImmuVO immuVO);
	public List<ImmuVO> selectBasicImmu(int petNo);
	public int deleteBasicImmu(ImmuVO immuVO);
	
	public int insertBoosterImmu(ImmuVO immuVO);
	public List<ImmuVO> selectBoosterImmu(ImmuVO immuVO);
	public int deleteBoosterImmu(ImmuVO immuVO);
	
	public int insertDiImmu(ImmuVO immuVO);
	public List<ImmuVO> selectDiImmu(ImmuVO immuVO);
	public int deleteDiImmu(ImmuVO immuVO);
	
	public List<RsvnVO> allRSVN(int reservationPetNo);
	public RsvnVO selectRSVN(RsvnVO rsvnVO);
}
