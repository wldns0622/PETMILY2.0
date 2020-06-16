package com.petmily.mypet.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.petmily.mypet.domain.ImmuVO;
import com.petmily.mypet.domain.MedVO;
import com.petmily.mypet.domain.RsvnVO;
import com.petmily.mypet.domain.WeightVO;
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

	@Override
	public List<RsvnVO> allRSVN(int reservationPetNo) {
		
		return mapper.allRSVN(reservationPetNo);
	}

	@Override
	public RsvnVO selectRSVN(RsvnVO rsvnVO) {
		
		return mapper.selectRSVN(rsvnVO);
	}

	@Override
	public List<MedVO> allMed(MedVO medVO) {
		// !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		return mapper.allMed(medVO);
	}

	@Override
	public int insertMemMed(MedVO medVO) {
		
		return mapper.insertMemMed(medVO);
	}

	@Override
	public int deleteMemMed(int memMedRecordNo) {
		
		return mapper.deleteMemMed(memMedRecordNo);
	}

	@Override
	public RsvnVO latelyRSVN(int reservationNo) {
		
		return mapper.latelyRSVN(reservationNo);
	}

	@Override
	public int insertWt(WeightVO weightVO) {
		
		return mapper.insertWt(weightVO);
	}

	@Override
	public List<WeightVO> allWt(WeightVO weightVO) {
		
		return mapper.allWt(weightVO);
	}

	@Override
	public List<WeightVO> letelyWt(int petNo) {
		// TODO Auto-generated method stub
		return mapper.letelyWt(petNo);
	}


}
