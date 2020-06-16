package com.petmily.mypet.domain;

import java.io.Serializable;

import lombok.Data;

@Data
public class WeightVO implements Serializable{
	private int wtNo;
	private int petNo;
	private String wtDt;
	private float wt;
	private String wtTm;
	private String wtDtStart;
	private String wtDtEnd;
}
