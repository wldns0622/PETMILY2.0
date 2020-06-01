package com.petmily.common.domain;

import java.io.Serializable;

public class CodeVO implements Serializable {

	/**
	 *
	 */
	private static final long serialVersionUID = 1L;
	private String code;
	private String codeType;
	private String codeNm;
	private String codeEng;


	public CodeVO() {}

	@Override
	public String toString() {
		return "CodeVO [code=" + code + ", codeType=" + codeType + ", codeNm=" + codeNm + ", codeEng=" + codeEng + "]";
	}

	public CodeVO(String code, String codeType, String codeNm, String codeEng) {
		super();
		this.code = code;
		this.codeType = codeType;
		this.codeNm = codeNm;
		this.codeEng = codeEng;
	}
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	public String getCodeType() {
		return codeType;
	}
	public void setCodeType(String codeType) {
		this.codeType = codeType;
	}
	public String getCodeNm() {
		return codeNm;
	}
	public void setCodeNm(String codeNm) {
		this.codeNm = codeNm;
	}
	public String getCodeEng() {
		return codeEng;
	}
	public void setCodeEng(String codeEng) {
		this.codeEng = codeEng;
	}



}
