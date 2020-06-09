package com.petmily.mypet.service;

import java.util.List;

import com.petmily.mypet.domain.BreedVO;
import com.petmily.mypet.domain.PetVO;

public interface MypetService {
	public List<PetVO> petList(String memId);
	public PetVO selectPetByNo(PetVO petVO);
	public String insertPet(PetVO petVO);
	public int insertFile(PetVO petVO);
	public void updatePet(PetVO petVO);
	public List<PetVO> deletePet(PetVO petVO);
	public List<BreedVO> selectBreedByCode(int petSpecies);
	public List<BreedVO> selectBreedByNM(int petSpecies, String sBreedNm);
	
}
