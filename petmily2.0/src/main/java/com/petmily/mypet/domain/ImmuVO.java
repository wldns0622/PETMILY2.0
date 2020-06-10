package com.petmily.mypet.domain;

import java.io.Serializable;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
public class ImmuVO implements Serializable{
	private int immuNo;
	private int petNo;
	private String memId;
	private String immuNm;
	private String immuSeries;
	private Date immuDt;
	private String petMonth;
	private String hosptNm;
	private String immuSort;
}
