package com.petmily.mypet.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
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

	@InitBinder
	public void initBinder(WebDataBinder binder){
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		binder.registerCustomEditor(java.util.Date.class, new CustomDateEditor(dateFormat, false));
	}
	
	@GetMapping("/list")
	public void list(Model model) {
		String memId = "c"; // 테스트용
		System.out.println("아무말");
		log.info("List Pet.....");
		model.addAttribute("petList", service.petList(memId));
	}

	@PostMapping("/insertPet")
	public String insertPet(RedirectAttributes rttr,PetVO petVO) {
		//폼에서 Date 값 받을 때 변환 주의!!!
		log.info("Insert Pet: " + petVO.toString());
		service.insertPet(petVO);
		rttr.addFlashAttribute("petList", service.petList("c"));
		return "redirect:/mypet/list";
	}

	@GetMapping("/petBreedSearch")
	public void insertPet(@RequestParam("petSpecies") int petSpecies, Model model) {

		log.info("Search Breed, Pet Species: " + petSpecies);

		model.addAttribute("petSpecies", petSpecies);
		model.addAttribute("breedVOList", service.selectBreedByCode(petSpecies));

	}
	
	@PostMapping("/petBreedName")
	public String insertPet(@Param("code") int petSpecies, @Param("breedNm") String sBreedNm, Model model) {

		log.info("Search Breed by Name, Pet Species: " + petSpecies);

		model.addAttribute("petSpecies", petSpecies);
		model.addAttribute("breedVOList", service.selectBreedByNM(petSpecies, sBreedNm));
		
		return "/mypet/petBreedSearch";
	}
	
	@PostMapping("/deletePet")
	public String deletePet(RedirectAttributes rttr, @RequestParam("petNo") int petNo) {

		String memId = "c"; //테스트 코드
		log.info("Delete Pet: " + petNo);
		
		PetVO petVO = new PetVO();
		petVO.setPetNo(petNo);
		petVO.setMemId(memId);
		service.deletePet(petVO);
		rttr.addFlashAttribute("result", memId);

		return "redirect:/mypet/list";
	}

}
