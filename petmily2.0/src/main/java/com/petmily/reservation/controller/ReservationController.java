package com.petmily.reservation.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petmily.hospital.service.HospitalService;
import com.petmily.member.domain.HospitalMemberVO;
import com.petmily.member.domain.MemberVO;
import com.petmily.mypet.domain.PetVO;
import com.petmily.reservation.domain.ReservationVO;
import com.petmily.reservation.service.ReservationService;

import lombok.Setter;

@Controller
@RequestMapping("/reservation/*")
public class ReservationController {
	
	@Setter(onMethod_ = {@Autowired})
	private HospitalService hoptService;
	@Setter(onMethod_ = {@Autowired})
	private ReservationService rsvService;
	
	@GetMapping("/")
	public String reservation(HttpServletRequest request, HospitalMemberVO hospitalMember, Model model) {
		/*
		 페이지 넘기면서 로직
		 1. 병원 번호를 읽어와 병원 객체를 조회한후 넘겨주기
		 2. 회원 정보를 세션에서 읽어와 펫정보를 읽어준후 넘겨주기(리스트)
		*/
		HttpSession session = request.getSession();
		MemberVO memberVO = (MemberVO)session.getAttribute("member");
		
		//멤버 주소값 수정
		System.out.println(hospitalMember);
		hospitalMember.setHsptAddr(hospitalMember.getHsptAddr().substring(6, 9));
		model.addAttribute("requestMember", hoptService.hospitalDetail(hospitalMember));
		model.addAttribute("petList", hoptService.findUserPetList(memberVO.getId()));
		
		return "/hospital/reservation";
	}
	
	@PostMapping("/reservation")
	public String reservationAction(HttpServletRequest request, @ModelAttribute ReservationVO reservation) {
		System.out.println(reservation);
		rsvService.insertReservation(reservation);
		return "/hospital/completeReservation";
	}
	
	@GetMapping("/reservationList")
	public String reservationList(HttpServletRequest request, Model model) {
		HttpSession session = request.getSession();
		MemberVO member = (MemberVO)session.getAttribute("member");
		List<ReservationVO> list = rsvService.reservationList(member.getId());
		List<PetVO> petList = hoptService.findUserPetList(member.getId());
		
		//예약리스트
		//펫 목록
		System.out.println(petList);
		model.addAttribute("list", list);
		model.addAttribute("petList", petList);
		return "/hospital/reservationList";
	}
	
	@GetMapping("/reservationFail")
	public String reservationFail(int reservationNo) {
		rsvService.reservationFail(reservationNo);
		return "redirect:/reservation/reservationList";
	}
	
	@GetMapping("/reservationMedInfo")
	public String reservationMedInfo(int reservationNo) {
		
		
		return "";
	}
	
}
