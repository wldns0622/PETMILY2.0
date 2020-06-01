package com.petmily.mypet.persistence;

import java.util.List;

import com.petmily.mypet.domain.BreedVO;
import com.petmily.mypet.domain.PetVO;

public interface MypetMapper {
	int insertPet(PetVO petVO);
	int insertFile(PetVO petVO);
	int selectFileNO(String fileStoredNm);
	List<BreedVO> selectBreedAll();
	List<BreedVO> selectBreedByCode(int code);
	List<BreedVO> selectBreedByNM(String breedNm);
	List<PetVO> listPetAll(String memId);
	PetVO selectFileByNO(int fileNo);
	String selectDate(int petNo);
	int updatePet(PetVO petVO);
	int deletePet(int petNo);
	int selectLastPetNO(String memId);
	int updatePetOdrNO(PetVO petVO);
	int updatePetFile(PetVO petVO);
	
}
