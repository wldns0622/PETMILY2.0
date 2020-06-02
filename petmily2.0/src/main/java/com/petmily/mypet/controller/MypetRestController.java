package com.petmily.mypet.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.petmily.mypet.service.MypetService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/mypet/")
@RestController
@Log4j
@AllArgsConstructor
public class MypetRestController {
	private MypetService service;
	//context 연결 필요
	
}
