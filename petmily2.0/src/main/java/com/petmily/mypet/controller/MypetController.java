package com.petmily.mypet.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.petmily.mypet.domain.PetVO;
import com.petmily.mypet.service.MypetService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/mypet/*")
@AllArgsConstructor
public class MypetController {

	private MypetService service;

	@GetMapping("/list")
	public void list(Model model) {
		String memId = "c"; // 테스트용
		
		log.info("List Pet.....");
		model.addAttribute("petList", service.petList(memId));
	}

	@PostMapping("/insertPet")
	public String insertPet(RedirectAttributes rttr, PetVO petVO) {

		log.info("Insert Pet: " + petVO);

		rttr.addFlashAttribute("result", service.insertPet(petVO));

		return "redirect:/board/list";
	}

	@PostMapping("/deletePet")
	public String deletePet(RedirectAttributes rttr, int petNo) {

		String memId = "c"; //테스트 코드
		log.info("Delete Pet: " + petNo);
		
		PetVO petVO = new PetVO();
		petVO.setPetNo(petNo);
		petVO.setMemId(memId);
		service.deletePet(petVO);
		rttr.addFlashAttribute("result", memId);

		return "redirect:/board/list";
	}

	@GetMapping("/health")
	public void health(Model model) {
		log.info("health");
	}
}
