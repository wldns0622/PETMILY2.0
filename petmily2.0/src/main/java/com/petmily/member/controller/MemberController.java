package com.petmily.member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petmily.member.domain.MemberVO;
import com.petmily.member.persistance.MemberMapper;
import com.petmily.member.service.MemberService;

import lombok.Setter;

@RequestMapping("/member/*")
@Controller
public class MemberController {
	
	@Setter(onMethod_ = @Autowired)
	private MemberService memberService;
	
	@GetMapping("/login")
	public String login() {
		
		return "login/login";
	}
	
	@PostMapping("/login")
	public String login(MemberVO member, HttpServletRequest request) {
		MemberVO resultMember = memberService.memberLogin(member);
		HttpSession session = request.getSession();
		
		session.setAttribute("member", resultMember);
		
		return "redirect:/";
	}

	@GetMapping("/memberSignUp") 
	public String memberSignUp() {
		
		return "/login/memberSignUp";
	}
	
	@PostMapping("/memberSignUp")
	public String memberSignUp(MemberVO member) {
		System.out.println("member : " + member);
		 memberService.memberSignUp(member);
		 
		 return "redirect:/member/login";
	}
	
}
