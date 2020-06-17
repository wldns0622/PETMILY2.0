package com.petmily.reservation.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.petmily.hospital.domain.HospitalMedRecordsVO;
import com.petmily.reservation.service.ReservationService;

import lombok.Setter;

@RestController
@RequestMapping("/reservationAjax/*")
public class ReservationRestController {

	@Setter(onMethod_ = {@Autowired})
	ReservationService service;

	@GetMapping("/reservationFail")
	public void reservationFail(int reservationNo) {
		service.reservationFail(reservationNo);
	}

	@GetMapping("/checkMedInfo/{number}")
	public HospitalMedRecordsVO checkMedInfo(@PathVariable(value="number") int reservationNo){
		System.out.println(reservationNo + "컨트롤러");
		return service.checkMedInfo(reservationNo);
	}
}
