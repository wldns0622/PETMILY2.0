package com.petmily.admin.persistence;

import java.util.List;

import org.apache.ibatis.annotations.Mapper;

import com.petmily.admin.domain.StatisticsVO;
import com.petmily.common.domain.CodeVO;
import com.petmily.member.domain.MemberVO;
import com.petmily.pettalk.domain.ReportVO;
import com.petmily.pettalk.domain.SearchVO;

@Mapper
public interface AdminMapper {

	
	
	public List<ReportVO> reportList();
	public void reportCommit(int rptNo);
	public void reportReject(int rptNo);
	public List<CodeVO> codeList();
	public List<CodeVO> codeDetailList(int codeType);
	public void codeInsert(CodeVO codeVO);
	public List<MemberVO> adminMemberList(SearchVO searchVO);
	public List<CodeVO> adminCodeList();
	public void memberCodeUpdate(MemberVO memberVO);
	public List<StatisticsVO>memberTotalData();
	
	
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
