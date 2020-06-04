package com.petmily.pettalk.service;


import java.util.List;

import com.petmily.common.domain.CodeVO;
import com.petmily.pettalk.domain.BoardVO;
import com.petmily.pettalk.domain.ReplyVO;
import com.petmily.pettalk.domain.ReportVO;
import com.petmily.pettalk.domain.SearchVO;

public interface PettalkService {

	
	public List<BoardVO> listBoard(SearchVO cmd);
	public List<CodeVO> listPettalkCode();
	
	public void insertBoard(BoardVO board);
	public void insertReply(ReplyVO replyVO);
	public void insertReport(ReportVO reportVO);
	public BoardVO detailBoard(int seq);
	public List<ReplyVO> listReply(int seq);
	public int likeCheck(BoardVO board);
	public void likeUpdate(BoardVO board);
	public void likeDelete(BoardVO board);
	public int likeCount(int seq);
	

	
	/*
	codeListService
	detailBoard
	insertReplyService
	listBoardService
	listNotiService
	listReplyService
	notiDeleteService
	reportListService
	reportService
*/
}
