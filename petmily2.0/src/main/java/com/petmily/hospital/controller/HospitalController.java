package com.petmily.hospital.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.petmily.hospital.domain.HospitalVO;
import com.petmily.hospital.service.HospitalService;

import lombok.AllArgsConstructor;

@Controller
@RequestMapping("/hospital/*")
@AllArgsConstructor
public class HospitalController {

	private HospitalService hospitalService;
	
	@GetMapping("/hospital")
	public String hospital() {
		return "/hospital/hospital";
	}
	
	@GetMapping("/hospitalSignUp")
	public String hospitalSignUp() {
		
		return "/login/hospitalSignUp";
	}
	
	
	
}
