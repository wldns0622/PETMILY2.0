package com.petmily.hospital.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import com.petmily.hospital.domain.HospitalVO;
import com.petmily.hospital.service.HospitalService;

import lombok.AllArgsConstructor;
import lombok.NoArgsConstructor;
import lombok.Setter;

@RestController //@RestController = @Controller + @ResponseBody
@RequestMapping("/hospitalRest/*")
/*@AllArgsConstructor
@NoArgsConstructor*/
public class HospitalRestController {

	@Setter(onMethod_ = @Autowired)
	private HospitalService hospitalService;
	
	@GetMapping("/hospitalInfos")
	public List<HospitalVO> hospitalInfos() {
		List<HospitalVO> hospital = hospitalService.hospitalInfos();
		
		return hospital;
	}
	
	/* 
	 * @ResController 사용하지 않고, @ResponseBody를 사용하는 경우 - 리턴받은 결과값을 JSON 또는 xml로 보낼 때(요청한 uri가 있는 곳으로) 사용하기 위함 
	 * public @ResponseBody List<HospitalVO> hospitalInfos() {
		
	      List<HospitalVO> hospital = hospitalService.hospitalInfos();
		
		  return hospital;
	   }
	 */

	
	
}
