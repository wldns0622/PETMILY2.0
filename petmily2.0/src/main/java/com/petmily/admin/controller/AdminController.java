package com.petmily.admin.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
@RequestMapping("/admin/*")
@AllArgsConstructor
public class AdminController {
	
	private NotiService notiService;
	private PettalkService service;
	@GetMapping("/main.admin")
	public String pettalkList(HttpServletRequest request) {
		HttpSession loginSession = request.getSession();
		try {
			MemberVO loginMember = (MemberVO)loginSession.getAttribute("member");
			if(!loginMember.getCode().equals("3003")){
				System.out.println(loginMember.getCode());
				return "redirect:/member/login";
			}
			
		} catch (Exception e) {
			return "redirect:/member/login";
		}
		
		return "/admin/adminMain";
		
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

		if(loginMember!=null){
			
			BoardVO board = service.detailBoard(seq);
			model.addAttribute("board", board);
			
			
			board.setMemId(loginMember.getId());
			int tmp = service.likeCheck(board);
			
			if(tmp>0){
				model.addAttribute("likeYn", "Y");
				System.out.println("Y");
				
			}else{
				model.addAttribute("likeYn", "N");
				System.out.println("N");
				
			}
			model.addAttribute("loginMember",loginMember);
			model.addAttribute("replys", service.listReply(seq));
			
		}else{
			BoardVO board = service.detailBoard(seq);
			model.addAttribute("board", board);
			
			
			int tmp = service.likeCheck(board);
			
			if(tmp>0){
				model.addAttribute("likeYn", "Y");
				System.out.println("Y");
				
			}else{
				model.addAttribute("likeYn", "N");
				System.out.println("N");
				
			}
			model.addAttribute("replys", service.listReply(seq));
			
			
		}
	
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
		noti.setMemId(boardVO.getMemId()); //¾Ë¸²¹ÞÀ»»ç¶÷
		noti.setMemToId(loginMember.getName()); //¾Ë¸²º¸³½»ç¶÷
		notiService.insertNoti(noti);
		System.out.println(noti.toString());
		return "redirect:/pettalk/detail?seq="+replyVO.getBoardNo();
	}

	@PostMapping("/reportAction")
	public String reportAction(ReportVO reportVO){
		reportVO.setMemId("hu");//ï¿½×½ï¿½Æ®
		service.insertReport(reportVO);
		
		return "redirect:/pettalk/detail?seq="+reportVO.getBoardNo();
	}
	
	@ResponseBody
	@PostMapping("/likeUpdate")
	public void likeUpdate(BoardVO boardVO,HttpServletRequest request,HttpServletResponse response) throws Exception{
		HttpSession session = request.getSession();
		MemberVO loginSession = (MemberVO)session.getAttribute("member");
		
		String copy = boardVO.getMemId();
		boardVO.setMemId(loginSession.getId());
		int tmp = service.likeCheck(boardVO);
		PrintWriter out = response.getWriter();
		
		if(tmp==0){
			service.likeUpdate(boardVO);
		
			NotiVO noti = new NotiVO();
			noti.setBoardNo(boardVO.getBoardNo());
			noti.setAlertCode(2001);
			noti.setMemId(boardVO.getMemId());
			noti.setMemToId(loginSession.getName());
			notiService.insertNoti(noti);
			
			
		}else{
			 out.print(5);
			 out.close();
			 service.likeDelete(boardVO);
			
		}
		
	}
	
	
	@ResponseBody
	@PostMapping("/likeCount")
	public void likeCount (@RequestParam("boardNo")int boardNo,HttpServletResponse response) throws IOException{
		
		PrintWriter out = response.getWriter();
		
		out.print(service.likeCount(boardNo));
	}
	
	
	
	
	
}
	