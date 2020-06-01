package com.petmily.pettalk.domain;

import lombok.Data;

@Data
public class BoardVO {
	
	private int boardNo;
	private String boardTitle;
	private String boardContent;
	private int likeCnt;
	private int replyCnt;
	private String createDt;
	private String memId;
	private String memNm;
	private int boardCd;
	private String modificationDt;
	private int boardHitcount;

}
