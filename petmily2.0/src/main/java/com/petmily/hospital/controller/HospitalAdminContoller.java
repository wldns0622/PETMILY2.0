package com.petmily.hospital.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/hospital/admin/*")
public class HospitalAdminContoller {

	@GetMapping("/main")
	public String main() {
		return "hospitalAdmin/hospitalAdminMain";
	}
	
	@GetMapping("/reservation")
	public String reservation() {
		return "hospitalAdmin/hospitalAdminReservation";

	}
}
