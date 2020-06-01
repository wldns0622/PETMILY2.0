package com.petmily.mypet.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.petmily.mypet.domain.PetVO;
import com.petmily.mypet.persistence.MypetMapper;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
@AllArgsConstructor
public class MypetServiceImpl implements MypetService {

	private MypetMapper mapper;
	
	@Override
	public String insertPet(PetVO petVO) {
		String memId = "c"; //테스트용

		int lastPetNo = 0;
		lastPetNo = mapper.selectLastPetNO(memId);
		if(lastPetNo != 0){
			petVO.setPetOdrNo(lastPetNo+1);
		}else{
			petVO.setPetOdrNo(1);
		}

		mapper.insertPet(petVO);
		return memId;
	}

	@Override
	public List<PetVO> petList(String memId) {
				
		return mapper.listPetAll(memId);
	}

	@Override
	public void updatePet(PetVO petVO) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<PetVO> deletePet(PetVO petVO) {
		mapper.deletePet(petVO.getPetNo());
		return mapper.listPetAll(petVO.getMemId());
	}

}
