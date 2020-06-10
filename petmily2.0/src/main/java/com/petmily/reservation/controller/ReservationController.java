package com.petmily.reservation.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/reservation/*")
public class ReservationController {

	@GetMapping("/")
	public String reservation() {
		/*
		 페이지 넘기면서 로직
		 1. 병원 번호를 읽어와 병원 객체를 조회한후 넘겨주기
		 2. 회원 정보를 세션에서 읽어와 펫정보를 읽어준후 넘겨주기(리스트)
		*/
		return "/hospital/reservation";
	}
	
	
	
}
