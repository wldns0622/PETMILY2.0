package com.petmily.noti.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.petmily.noti.domain.NotiVO;
import com.petmily.noti.service.NotiService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/noti/*")
@AllArgsConstructor
public class NotiController {
	
	private NotiService service;
	
	@ResponseBody
	@PostMapping("/notiList")
	public List<NotiVO> notiList(Model model) {

		NotiVO notiVO = new NotiVO();
		notiVO.setMemId("skgoddns");
		
		return service.listNoti(notiVO);
		
	}
	
	@GetMapping("/notiList")
	public String notiList() {
		
		System.out.println("けい焼たけい焼");
		
		return "/pettalk/notiList";
	}
	
	
	
}
	