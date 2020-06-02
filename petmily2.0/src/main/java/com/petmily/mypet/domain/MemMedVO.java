package com.petmily.mypet.domain;

import java.io.Serializable;
import java.util.Date;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class MemMedVO implements Serializable{
	private int memMedRecordNo;
	private int petNo;
	private String memId;
	private Date memTmtDt;
	private String memTmtSort;
	private String memTmtContents;
}
