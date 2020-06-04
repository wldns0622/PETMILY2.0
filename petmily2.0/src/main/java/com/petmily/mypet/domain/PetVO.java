package com.petmily.mypet.domain;


import java.io.Serializable;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
public class PetVO implements Serializable {
	private int petNo;
	private String memId;
	private String petNm;
	private Date petBirth;
	private char petSex;
	private int petSpecies;
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
	private Date petRegdt;
	
}
