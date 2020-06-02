package com.petmily.noti.domain;

import java.io.Serializable;

import lombok.Data;

@Data
public class NotiVO implements Serializable{

	
	private static final long serialVersionUID = 1L;
	private int alertNo;
	private String alertCreateDt;
	private String alertReadDt;
	private int alertCode;
	private int boardNo;
	private String memId;
	private String memToId;
	private String eventNm;



}
