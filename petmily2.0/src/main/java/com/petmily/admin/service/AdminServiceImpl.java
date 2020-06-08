package com.petmily.admin.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.petmily.common.domain.CodeVO;
import com.petmily.pettalk.domain.BoardVO;
import com.petmily.pettalk.domain.ReplyVO;
import com.petmily.pettalk.domain.ReportVO;
import com.petmily.pettalk.domain.SearchVO;
import com.petmily.pettalk.persistence.PettalkMapper;

import lombok.AllArgsConstructor;


@AllArgsConstructor
@Service
public class AdminServiceImpl implements AdminService {
	
	private PettalkMapper pettalkMapper;

	
	@Override
	public List<BoardVO> listBoard(SearchVO cmd) {
		return pettalkMapper.getListPettalk(cmd);
	}


	@Override
	public List<CodeVO> listPettalkCode() {
		return pettalkMapper.listPettalkCode();
	}


	@Override
	public void insertBoard(BoardVO board) {
	
		pettalkMapper.insertBoard(board);
		
	}


	@Override
	public BoardVO detailBoard(int seq) {
		
		BoardVO board = pettalkMapper.detailBoard(seq);
		
		board.setBoardHitcount(board.getBoardHitcount() +1);
		pettalkMapper.updateHitCnt(board);
		
		return board;
	}
	@Override
	public List<ReplyVO> listReply(int seq) {
		return pettalkMapper.listReply(seq);
	}


	@Override
	public void insertReply(ReplyVO replyVO) {
		pettalkMapper.insertReply(replyVO);
		
	}


	@Override
	public void insertReport(ReportVO reportVO) {
		
		pettalkMapper.insertReport(reportVO);
		
	}


	@Override
	public int likeCheck(BoardVO board) {
		
		return pettalkMapper.likeCheck(board);
	}

	@Override
	public void likeUpdate(BoardVO board) {
		
		pettalkMapper.likeUpdate(board);
	}
	
	@Override
	public void likeDelete(BoardVO board) {
		
		pettalkMapper.likeDelete(board);
	}
	@Override
	public int likeCount(int seq) {
		
		return pettalkMapper.likeCount(seq);
	}


	
	
}
