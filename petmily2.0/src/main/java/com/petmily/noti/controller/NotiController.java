package com.petmily.noti.controller;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.petmily.member.domain.MemberVO;
import com.petmily.noti.service.NotiService;
import com.petmily.pettalk.domain.BoardVO;
import com.petmily.pettalk.domain.CompareNameDesc;
import com.petmily.pettalk.domain.SearchVO;
import com.petmily.pettalk.service.PettalkService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RestController
@Log4j
@RequestMapping("/noti/*")
@AllArgsConstructor
public class NotiController {
	
	private NotiService service;
	
	@GetMapping("/notilist")
	public void pettalkList(@SessionAttribute("member")MemberVO vo, @RequestParam(value="selectSorting",required=false)String code,Model model, SearchVO searchVO) {

		
		service.listNoti();
		
		
		
	}
	
	
	
}
	