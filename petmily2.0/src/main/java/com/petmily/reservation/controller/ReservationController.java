package com.petmily.reservation.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petmily.hospital.service.HospitalService;
import com.petmily.member.domain.HospitalMemberVO;
import com.petmily.member.domain.MemberVO;
import com.petmily.mypet.domain.PetVO;

import lombok.Setter;

@Controller
@RequestMapping("/reservation/*")
public class ReservationController {

	@Setter(onMethod_ = {@Autowired})
	private HospitalService service;
	
	@GetMapping("/")
	public String reservation(HttpServletRequest request, HospitalMemberVO hospitalMember, Model model) {
		/*
		 페이지 넘기면서 로직
		 1. 병원 번호를 읽어와 병원 객체를 조회한후 넘겨주기
		 2. 회원 정보를 세션에서 읽어와 펫정보를 읽어준후 넘겨주기(리스트)
		*/
		System.out.println("여기넘어옴");
		HttpSession session = request.getSession();
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
	
		// 1. 병원 번호를 읽어와 병원 객체를 조회한후 넘겨주기
		
		//멤버 주소값 수정
		System.out.println(hospitalMember);
		hospitalMember.setHsptAddr(hospitalMember.getHsptAddr().substring(6, 9));
		//병원 정보 저장
		//펫 정보 저장
		//모델 객체에 저장
		model.addAttribute("requestMember", service.hospitalDetail(hospitalMember));
		model.addAttribute("petList", service.findUserPetList(memberVO.getId()));
		
		
		return "/hospital/reservation";
	}
	
}
