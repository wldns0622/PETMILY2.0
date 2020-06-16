package com.petmily.reservation.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.petmily.reservation.service.ReservationService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@RequestMapping("/reservationAjax/*")
@AllArgsConstructor
public class ReservationRestController {
	
	ReservationService service;
	
	@GetMapping("/reservationFail")
	public void reservationFail(int reservationNo) {
		service.reservationFail(reservationNo);
	}
}
