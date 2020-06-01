package com.petmily.mypet.domain;

import java.io.Serializable;

import lombok.Data;

@Data
public class PetVO implements Serializable {
	private int petNo;
	private String memId;
	private String petNm;
	private String petBirth;
	private char petSex;
	private int petSpecies;
	private BreedVO breedVO;
	private String breedNm;
	private int breedNo;
	private int code;
	private String petSize;
	private String petSt;
	private String petBasicVaccination;
	private char petNeutral;
	private int fileNo;
	private String fileOriginalNm;
	private String fileStoredNm;
	private int petOdrNo;
	
	
}
