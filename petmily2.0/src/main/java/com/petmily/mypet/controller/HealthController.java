package com.petmily.mypet.controller;

import java.text.SimpleDateFormat;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.petmily.mypet.domain.PetVO;
import com.petmily.mypet.service.MypetService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/health/*")
@AllArgsConstructor
public class HealthController {
	
	private MypetService service;

	@InitBinder
	public void initBinder(WebDataBinder binder){
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(java.util.Date.class, new CustomDateEditor(dateFormat, false));
	}
	
	@GetMapping("/home")
	public String home(Model model, @RequestParam("petNo") int petNo) {
		String memId = "c"; // 테스트용
		System.out.println("home의 petNo: " + petNo);
		PetVO petVO = new PetVO();
		petVO.setPetNo(petNo);
		petVO.setMemId(memId);
		model.addAttribute("pet", service.selectPetByNo(petVO));
		
		return "/mypet/health";
	}
}
