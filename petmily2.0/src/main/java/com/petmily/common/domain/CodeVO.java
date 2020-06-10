package com.petmily.common.domain;

import java.io.Serializable;

import lombok.Data;

@Data
public class CodeVO implements Serializable {

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;
	private String code;
	private String codeType;
	private String codeNm;
	private String codeEng;
	private String registDatetime;
	private String registId;
	private String ChildCodeCount;


}
