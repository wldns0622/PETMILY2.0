package com.petmily.pettalk.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import com.petmily.common.domain.CodeVO;
import com.petmily.pettalk.domain.BoardVO;
import com.petmily.pettalk.domain.ReplyVO;
import com.petmily.pettalk.domain.SearchVO;

@Mapper
public interface PettalkMapper {

	
	public BoardVO detailBoard(@Param("seq")int seq);
	public List<BoardVO> getListPettalk(SearchVO cmd);
	public List<CodeVO> listPettalkCode();
	public void insertBoard(BoardVO boardVO);
	public List<ReplyVO> listReply(int seq);
	public void insertReply(ReplyVO replyVO);
	
	
	
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
