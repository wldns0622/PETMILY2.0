package com.petmily.admin.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.condition.ProducesRequestCondition;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.util.JSONPObject;
import com.google.gson.Gson;
import com.google.gson.JsonArray;
import com.google.gson.JsonObject;
import com.petmily.admin.domain.StatisticsVO;
import com.petmily.admin.service.AdminService;
import com.petmily.common.domain.CodeVO;
import com.petmily.member.domain.MemberVO;
import com.petmily.pettalk.domain.SearchVO;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/admin/*")
@AllArgsConstructor
public class AdminController {

	private AdminService adminService;

	@GetMapping("/main.admin")
	public String pettalkList(HttpServletRequest request) {
		HttpSession loginSession = request.getSession();
		try {
			MemberVO loginMember = (MemberVO) loginSession.getAttribute("member");
			if (!loginMember.getCode().equals("3003")) {
				System.out.println(loginMember.getCode());
				return "redirect:/member/login";
			}

		} catch (Exception e) {
			return "redirect:/member/login";
		}

		return "/admin/adminMain";

	}

	@GetMapping("/reportList")
	public void reportList(Model model) {
		model.addAttribute("reportList", adminService.reportList());

	}

	@PostMapping("/reportCommit")
	public String reportCommit(@RequestParam("rptNo") int rptNo[]) {

		for (int i = 0; i < rptNo.length; i++) {
			adminService.reportCommit(rptNo[i]);
		}

		return "redirect:/admin/reportList";

	}

	@PostMapping("/reportReject")
	public String reportReject(@RequestParam("rptNo") int rptNo[], RedirectAttributes ratt) {

		for (int i = 0; i < rptNo.length; i++) {
			adminService.reportReject(rptNo[i]);
		}
		ratt.addFlashAttribute("ok", "ok");

		return "redirect:/admin/reportList";

	}

	@GetMapping("/codeList")
	public void codeList(Model model) {

		model.addAttribute("codeList", adminService.codeList());

	}

	@ResponseBody
	@PostMapping("/codeDetailList")
	public List<CodeVO> codeDetailList(@RequestParam("codeType") int codeType) {

		return adminService.codeDetailList(codeType);

	}

	@PostMapping("/codeUpdate")
	public String codeUpdate(HttpServletRequest request, RedirectAttributes ratt) {

		List<CodeVO> codeArr = new ArrayList<CodeVO>();

		String[] code = request.getParameterValues("code");
		String[] codeNm = request.getParameterValues("codeNm");
		String[] codeEng = request.getParameterValues("codeEng");
		String[] registId = request.getParameterValues("registId");
		String[] codeType = request.getParameterValues("codeType");

		for (int i = 0; i < code.length; i++) {
			CodeVO codeVO = new CodeVO();
			codeVO.setCode(code[i]);
			codeVO.setCodeNm(codeNm[i]);
			codeVO.setCodeEng(codeEng[i]);
			codeVO.setRegistId(registId[i]);
			codeVO.setCodeType(codeType[i]);
			codeArr.add(codeVO);
		}

		for (int i = 0; i < codeArr.size(); i++) {
			adminService.codeInsert(codeArr.get(i));
		}
		ratt.addFlashAttribute("result", "OK");

		return "redirect:/admin/codeList";

	}

	@GetMapping("/userManager")
	public void userManager(SearchVO searchVO, Model model) {
		
		System.out.println(searchVO);
		if(searchVO.getCodeSelect() == null){
			searchVO.setCodeSelect("3003");
		}
		System.out.println(searchVO);

		System.out.println(searchVO.getCodeSelect());
		model.addAttribute("userList", adminService.adminMemberList(searchVO));
		model.addAttribute("userCodeList", adminService.adminCodeList());

	}
	@ResponseBody
	@PostMapping("/userCodeUpdate")
	public String userCodeUpdate(@RequestBody List<MemberVO> updateMemberList) {
		for (int i = 0; i < updateMemberList.size(); i++) {
			System.out.println(updateMemberList.get(i).toString());

			adminService.memberCodeUpdate(updateMemberList.get(i));
		}
		
		return "ok";
	}

	
	@GetMapping("/statistics")
	public void statistics(){
		
	}
	
	@ResponseBody
	@PostMapping("/statisticsData")
	public String statisticsData(){
		Gson g = new Gson();
		List<StatisticsVO> list = adminService.memberTotalData();
			
		
		return g.toJson(list);
	}
	
	
	
}
