package com.petmily.mypet.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Service;

import com.petmily.mypet.domain.BreedVO;
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
		
		int lastPetNo = 0;
		lastPetNo =  mapper.selectLastPetNO(petVO.getMemId());
		if(lastPetNo > 0){
			petVO.setPetOdrNo(lastPetNo+1);
		}else{
			petVO.setPetOdrNo(1);
		}

		mapper.insertPet(petVO);

		return petVO.getMemId();
	}

	@Override
	public List<PetVO> petList(String memId) {
		List<PetVO> petList =  mapper.listPetAll(memId);
		for(int i = 0; i< petList.size(); i++){
			if(petList.get(i).getFileNo() > 0){
				petList.get(i).setFileStoredNm(mapper.selectFileByNO(petList.get(i).getFileNo()).getFileStoredNm());
				System.out.println(petList.get(i).getFileStoredNm());
			}
			
		}
		return petList;
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

	@Override
	public List<BreedVO> selectBreedByCode(int petSpecies) {
		
		return mapper.selectBreedByCode(petSpecies);
	}

	@Override
	public List<BreedVO> selectBreedByNM(int petSpecies, String sBreedNm) {
		BreedVO breedVO = new BreedVO();
		breedVO.setBreedNm(sBreedNm);
		breedVO.setCode(petSpecies);
		return mapper.selectBreedByNM(breedVO);
	}

	@Override
	public PetVO selectPetByNo(PetVO petVO) {
		PetVO petVO2 =  mapper.selectPetByNo(petVO);
		if(petVO2.getFileNo() > 0){
			petVO2.setFileStoredNm(mapper.selectFileByNO(petVO2.getFileNo()).getFileStoredNm());
		}
		
		return petVO2;
	}

	@Override
	public int insertFile(PetVO petVO) {
		mapper.insertFile(petVO);
		int fileNo = mapper.selectFileNO(petVO.getFileStoredNm());
		petVO.setFileNo(fileNo);
		mapper.insertFileNo(petVO);
		return 0;
	}


}
