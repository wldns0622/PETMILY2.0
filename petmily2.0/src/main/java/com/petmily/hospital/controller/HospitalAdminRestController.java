package com.petmily.hospital.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.petmily.hospital.service.HospitalAdminService;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@RestController
@RequestMapping("/reservationAdminRest/*")
@AllArgsConstructor
@NoArgsConstructor
public class HospitalAdminRestController {

	private HospitalAdminService service;

	@GetMapping("/reservationApprove/{reservationNo}")
	public String reservationApprove(@PathVariable("reservationNo") int reservationNo) {
		System.out.println(reservationNo);
		service.statusUpdate(reservationNo);

		return "";
	}
}
