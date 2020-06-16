package com.petmily.mypet.service;

import java.util.List;

import com.petmily.mypet.domain.ImmuVO;
import com.petmily.mypet.domain.MedVO;
import com.petmily.mypet.domain.RsvnVO;
import com.petmily.mypet.domain.WeightVO;

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
	
	public List<MedVO> allMed(MedVO medVO);
	public int insertMemMed(MedVO medVO);
	public int deleteMemMed(int memMedRecordNo);
	
	public RsvnVO latelyRSVN (int reservationNo);
	
	public int insertWt(WeightVO weightVO);
	public List<WeightVO> allWt(WeightVO weightVO);
	public List<WeightVO> letelyWt(int petNo);
}
