package com.petmily.mypet.service;

import java.util.List;

import com.petmily.mypet.domain.PetVO;

public interface MypetService {
	public List<PetVO> petList(String memId);
	public String insertPet(PetVO petVO);
	public void updatePet(PetVO petVO);
	public List<PetVO> deletePet(PetVO petVO);
}
