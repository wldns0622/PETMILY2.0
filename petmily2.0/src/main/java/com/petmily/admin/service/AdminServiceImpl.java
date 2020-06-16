package com.petmily.admin.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.petmily.admin.domain.StatisticsVO;
import com.petmily.admin.persistence.AdminMapper;
import com.petmily.common.domain.CodeVO;
import com.petmily.member.domain.HospitalMemberVO;
import com.petmily.member.domain.MemberVO;
import com.petmily.pettalk.domain.ReportVO;
import com.petmily.pettalk.domain.SearchVO;

import lombok.AllArgsConstructor;

@AllArgsConstructor
@Service
public class AdminServiceImpl implements AdminService {

	private AdminMapper mapper;

	@Override
	public List<ReportVO> reportList() {
		return mapper.reportList();
	}

	@Override
	public void reportCommit(int rptNo) {
		mapper.reportCommit(rptNo);
		mapper.reportReject(rptNo);
	}

	@Override
	public void reportReject(int rptNo) {
		mapper.reportReject(rptNo);
	}

	@Override
	public List<CodeVO> codeList() {
		return mapper.codeList();
	}

	@Override
	public List<CodeVO> codeDetailList(int codeType) {
		return mapper.codeDetailList(codeType);
	}

	@Override
	public void codeInsert(CodeVO codeVO) {
		mapper.codeInsert(codeVO);
	}

	@Override
	public List<MemberVO> adminMemberList(SearchVO searchVO) {
		return mapper.adminMemberList(searchVO);
	}

	@Override
	public List<CodeVO> adminCodeList() {
		return mapper.adminCodeList();
	}

	@Override
	public void memberCodeUpdate(MemberVO memberVO) {
		mapper.memberCodeUpdate(memberVO);
	}

	@Override
	public List<StatisticsVO> memberTotalData() {

		return mapper.memberTotalData();
	}

	@Override
	public List<StatisticsVO> pettalkTotalData(SearchVO searchVO) {

		List<StatisticsVO> list = mapper.pettalkTotalData(searchVO);
		List<StatisticsVO> replyCnt = mapper.replyCnt();
		for (int i = 0; i < list.size(); i++) {
			list.get(i).setReplyCnt(replyCnt.get(i).getReplyCnt());
		}

		return list;
	}

	@Override
	public List<HospitalMemberVO> approveList(String approveYn) {
		return mapper.approveList(approveYn);
	}

	@Override
	public void approveUpdate(String hsptId) {
		mapper.approveUpdate(hsptId);
	}
	
	@Override
	public void approveDelete(String memberId) {
		
		mapper.approveDelete(memberId);
		
	}

	@Override
	public int approveCnt() {
		// TODO Auto-generated method stub
		return mapper.approveCnt();
	}

	@Override
	public int reportCnt() {
		// TODO Auto-generated method stub
		return mapper.reportCnt();
	}
	

}
