package com.petmily.hospital.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.petmily.hospital.service.HospitalService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/hospital/*")
@AllArgsConstructor
public class HospitalController {

	private HospitalService hospitalService;
	
	@GetMapping("/hospitall")
	public String hospital() {
		return "/hospital/hospital";
	}
	
	@GetMapping("/hospitalSignUp")
	public String hospitalSignUp() {
		
		return "/login/hospitalSignUp";
	}
}
