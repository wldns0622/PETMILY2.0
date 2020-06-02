package com.petmily.hospital.controller;

import java.util.List;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.petmily.hospital.domain.HospitalVO;
import com.petmily.hospital.service.HospitalService;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;

@RestController //@RestController = @Controller + @ResponseBody
@RequestMapping("/hospital/*")
@AllArgsConstructor
@NoArgsConstructor
public class HospitalRestController {

	private HospitalService hospitalService;
	
	@GetMapping("/hospitalInfos")
	public List<HospitalVO> hospitalInfos() {
		System.out.println("여기까지 왔음");
		List<HospitalVO> hospital = hospitalService.hospitalInfos();
		
		return hospital;
	}
	
}
