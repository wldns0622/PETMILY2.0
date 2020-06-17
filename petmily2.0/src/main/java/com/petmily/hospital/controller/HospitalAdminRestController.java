package com.petmily.hospital.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.petmily.hospital.domain.HospitalMedRecordsVO;
import com.petmily.hospital.service.HospitalAdminService;

import lombok.Setter;

@RestController
@RequestMapping("/reservationAdminRest/*")
public class HospitalAdminRestController {

	@Setter(onMethod_ = {@Autowired})
	private HospitalAdminService service;

	@GetMapping("/reservationApprove/{reservationNo}")
	public void reservationApprove(@PathVariable("reservationNo") int reservationNo) {
		System.out.println("컨트롤러" + reservationNo);
		service.statusUpdate(reservationNo);
	}

}
