package com.petmily.hospital.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petmily.hospital.service.HospitalAdminService;
import com.petmily.member.domain.HospitalMemberVO;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/hospitalAdmin/*")
@AllArgsConstructor
public class HospitalAdminContoller {

	private HospitalAdminService service;

	@GetMapping("/main")
	public String main(HttpServletRequest request, Model model) {
		//병원으로 로그인 했을때 세션에 병원값 저장 및 header에 관리자 메뉴 하나 추가하기
		//병원 관리자 홈으로 이동시 병원의 아이디를 읽어와 operation 테이블 읽어와서 뿌려주기.
		HttpSession session = request.getSession();
		HospitalMemberVO hospitalMember = (HospitalMemberVO) session.getAttribute("hospitalMember");
		model.addAttribute("oper", service.getOper(hospitalMember.getHsptId()));
		return "/hospitalAdmin/hospitalAdminMain";
	}

	@GetMapping("/reservation")
	public String reservation(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		HospitalMemberVO hospitalMember = (HospitalMemberVO) session.getAttribute("hospitalMember");
		model.addAttribute("list", service.getReservation(hospitalMember.getHsptId()));
		return "/hospitalAdmin/hospitalAdminReservation";
	}
}
