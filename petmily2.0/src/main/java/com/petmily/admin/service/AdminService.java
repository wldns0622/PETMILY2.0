package com.petmily.admin.service;


import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.petmily.admin.domain.StatisticsVO;
import com.petmily.common.domain.CodeVO;
import com.petmily.member.domain.HospitalMemberVO;
import com.petmily.member.domain.MemberVO;
import com.petmily.pettalk.domain.ReportVO;
import com.petmily.pettalk.domain.SearchVO;

public interface AdminService {


	public List<ReportVO> reportList();
	public void reportCommit(int rptNo);
	public void reportReject(int rptNo);
	public List<CodeVO> codeList();
	public List<CodeVO> codeDetailList(int codeType);
	public void codeInsert(CodeVO codeVO);
	public List<MemberVO> adminMemberList(SearchVO searchVO);
	public List<CodeVO> adminCodeList();
	public void memberCodeUpdate (MemberVO memberVO);
	public List<StatisticsVO> memberTotalData();
	public List<StatisticsVO> pettalkTotalData(SearchVO searchVO);
	public List<HospitalMemberVO> approveList(String approveYn);
	public void approveUpdate(String hsptId);
	public void approveDelete(String memberId);
	public int approveCnt();
	public int reportCnt();
	
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
