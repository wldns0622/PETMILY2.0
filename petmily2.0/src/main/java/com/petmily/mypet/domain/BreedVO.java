package com.petmily.mypet.domain;

import java.io.Serializable;

import lombok.Data;

@Data
public class BreedVO implements Serializable {
	private int breedNo;
	private int code;
	private String breedNm;
	
}
