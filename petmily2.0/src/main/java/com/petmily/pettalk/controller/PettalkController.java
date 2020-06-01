package com.petmily.pettalk.controller;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.petmily.pettalk.domain.BoardVO;
import com.petmily.pettalk.domain.CompareNameDesc;
import com.petmily.pettalk.domain.SearchVO;
import com.petmily.pettalk.service.PettalkService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/pettalk/*")
@AllArgsConstructor
public class PettalkController {
	
	private PettalkService service;
	
	@GetMapping("/list")
	public String pettalkList(@RequestParam(value="selectSorting",required=false)String code,Model model, SearchVO searchVO) {
		
		searchVO.setCodeSelect(code);
		
		model.addAttribute("list", service.listBoard(searchVO));
		List<BoardVO> sortList = service.listBoard(searchVO);
		Collections.sort(sortList, new CompareNameDesc());
		model.addAttribute("sortList", sortList);
		model.addAttribute("codeList", service.listPettalkCode());
		
		
		
		
		
		return "/pettalk/list";
	}
	
}
	