package com.petmily.pettalk.controller;

import java.util.Collections;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.petmily.member.domain.MemberVO;
import com.petmily.noti.domain.NotiVO;
import com.petmily.noti.service.NotiService;
import com.petmily.pettalk.domain.BoardVO;
import com.petmily.pettalk.domain.CompareNameDesc;
import com.petmily.pettalk.domain.ReplyVO;
import com.petmily.pettalk.domain.ReportVO;
import com.petmily.pettalk.domain.SearchVO;
import com.petmily.pettalk.service.PettalkService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/pettalk/*")
@AllArgsConstructor
public class PettalkController {
	
	private NotiService notiService;
	private PettalkService service;
	@GetMapping("/list")
	public String pettalkList(@RequestParam(value="selectSorting",required=false)String code,Model model, SearchVO searchVO) {
		
		

		searchVO.setCodeSelect(code);
		
		model.addAttribute("list", service.listBoard(searchVO));
		List<BoardVO> sortList = service.listBoard(searchVO);
		Collections.sort(sortList, new CompareNameDesc());
		model.addAttribute("sortList", sortList);
		model.addAttribute("codeList", service.listPettalkCode());
		
		return "/pettalk/list";
		
	}
	
	@GetMapping("/insertform")
	public void pettalkInsertForm(Model model) {
		model.addAttribute("codeList", service.listPettalkCode());
		
	}
	
	@PostMapping("/insertform")
	public String pettalkInsertForm(BoardVO boardVO) {
		
		service.insertBoard(boardVO);

		
		return "redirect:/pettalk/list";
	}
	
	@GetMapping("/detail")
	public void pettalkDetail(@RequestParam("seq")int seq, Model model,HttpServletRequest request) {
		HttpSession session = request.getSession();
		MemberVO loginMember = (MemberVO)session.getAttribute("member");
		
		model.addAttribute("loginMember",loginMember);
		model.addAttribute("board", service.detailBoard(seq));
		model.addAttribute("replys", service.listReply(seq));
	}
	
	@PostMapping("/insertReply")
	public String insertReply(ReplyVO replyVO,HttpServletRequest request){
		service.insertReply(replyVO);
		
		HttpSession session = request.getSession();
		
		
		MemberVO loginMember = (MemberVO)session.getAttribute("member");
		
		BoardVO boardVO = service.detailBoard(replyVO.getBoardNo());
		
		NotiVO noti = new NotiVO();
		noti.setBoardNo(replyVO.getBoardNo());
		noti.setAlertCode(2003);
		noti.setMemId(boardVO.getMemId());
		noti.setMemToId(loginMember.getName());
		notiService.insertNoti(noti);
		
		return "redirect:/pettalk/detail?seq="+replyVO.getBoardNo();
	}

	@PostMapping("/reportAction")
	public String reportAction(ReportVO reportVO){
		reportVO.setMemId("hu");//�׽�Ʈ
		service.insertReport(reportVO);
		
		return "redirect:/pettalk/detail?seq="+reportVO.getBoardNo();
	}
	
	
	
}
	