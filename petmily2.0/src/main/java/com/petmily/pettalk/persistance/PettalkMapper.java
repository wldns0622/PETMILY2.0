package com.petmily.pettalk.persistance;


import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.petmily.common.domain.CodeVO;
import com.petmily.pettalk.domain.BoardVO;
import com.petmily.pettalk.domain.SearchVO;


@Mapper
public interface PettalkMapper {

	
	public BoardVO detailBoard(int seq);
	public List<BoardVO> getListPettalk(SearchVO cmd);
	public List<CodeVO> listPettalkCode();
	
	
	
	
	/*
	codeListService
	detailBoard
	insertBoardService
	insertReplyService
	listBoardService
	listNotiService
	listReplyService
	notiDeleteService
	reportListService
	reportService
*/
}
