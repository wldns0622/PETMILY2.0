package com.petmily.mypet.domain;

import java.io.Serializable;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BreedVO implements Serializable{
	private int breedNo;
	private int code;
	private String breedNm;
	
}
