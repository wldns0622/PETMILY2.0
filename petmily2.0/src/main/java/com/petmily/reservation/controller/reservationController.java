package com.petmily.reservation.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.petmily.hospital.domain.HospitalVO;
import com.petmily.hospital.service.HospitalService;

import lombok.Setter;

@Controller
@RequestMapping("/reservation/*")
public class reservationController {

	@Setter(onMethod_ = @Autowired)
	private HospitalService hospitalService;
	
	@GetMapping("/hospital")
	public String hospital() {
		return "/hospital/hospital";
	}
	
}
