package com.petmily.mypet.controller;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.petmily.member.domain.MemberVO;
import com.petmily.mypet.domain.ImmuVO;
import com.petmily.mypet.domain.MedVO;
import com.petmily.mypet.domain.PetVO;
import com.petmily.mypet.domain.RsvnVO;
import com.petmily.mypet.service.HealthService;
import com.petmily.mypet.service.MypetService;

import lombok.AllArgsConstructor;
import lombok.extern.log4j.Log4j;

@RequestMapping("/hospitalAdmin/")
@RestController
@Log4j
@AllArgsConstructor
public class YourPetHealthRestController {
	private MypetService myService;
	private HealthService service;
	
	
	
	
	@PostMapping("/insertBasicImmu")
	public String insertBasicImmu(@RequestBody ImmuVO immuVO, HttpServletRequest request){
		HttpSession session = request.getSession();
		MemberVO member =  (MemberVO) session.getAttribute("member");
		
		immuVO.setMemId(member.getId());
		service.insertBasicImmu(immuVO);
		
		return "";
	}
	
	@PostMapping("/selectBasicImmu")
	public @ResponseBody List<ImmuVO> selectBasicImmu(@RequestBody int petNo, HttpServletRequest request){
		
		List<ImmuVO> immuVOList = service.selectBasicImmu(petNo);
		
		//System.out.println(immuVOList.toString());
		
		return immuVOList;
	}
	
	@PostMapping("/deleteBasicImmu")
	public String deleteBasicImmu(@RequestBody ImmuVO immuVO, HttpServletRequest request){
		HttpSession session = request.getSession();
		MemberVO member =  (MemberVO) session.getAttribute("member");
		
		immuVO.setMemId(member.getId());
		service.deleteBasicImmu(immuVO);
		
		return "";
	}
	
	@PostMapping("/insertBoosterImmu")
	public String insertBoosterImmu(@RequestBody ImmuVO immuVO, HttpServletRequest request){
		HttpSession session = request.getSession();
		MemberVO member =  (MemberVO) session.getAttribute("member");
		
		immuVO.setMemId(member.getId());
		service.insertBoosterImmu(immuVO);
		
		return "";
	}
	
	@PostMapping("/selectBoosterImmu")
	public @ResponseBody List<ImmuVO> selectBoosterImmu(@RequestBody ImmuVO immuVO, HttpServletRequest request){
		
		List<ImmuVO> immuVOList = service.selectBoosterImmu(immuVO);
		
		//System.out.println(immuVOList.toString());
		
		return immuVOList;
	}
	
	@PostMapping("/deleteBoosterImmu")
	public String deleteBoosterImmu(@RequestBody ImmuVO immuVO, HttpServletRequest request){
		HttpSession session = request.getSession();
		MemberVO member =  (MemberVO) session.getAttribute("member");
		
		immuVO.setMemId(member.getId());
		service.deleteBoosterImmu(immuVO);
		
		return "";
	}
	
	@PostMapping("/insertDiImmu")
	public String insertDiImmu(@RequestBody ImmuVO immuVO, HttpServletRequest request){
		HttpSession session = request.getSession();
		MemberVO member =  (MemberVO) session.getAttribute("member");
		
		immuVO.setMemId(member.getId());
		service.insertDiImmu(immuVO);
		
		return "";
	}
	
	@PostMapping("/selectDiImmu")
	public @ResponseBody List<ImmuVO> selectDiImmu(@RequestBody ImmuVO immuVO, HttpServletRequest request){
		
		List<ImmuVO> immuVOList = service.selectDiImmu(immuVO);
		
		//System.out.println(immuVOList.toString());
		
		return immuVOList;
	}
	
	@PostMapping("/deleteDiImmu")
	public String deleteDiImmu(@RequestBody ImmuVO immuVO, HttpServletRequest request){
		HttpSession session = request.getSession();
		MemberVO member =  (MemberVO) session.getAttribute("member");
		
		immuVO.setMemId(member.getId());
		service.deleteDiImmu(immuVO);
		
		return "";
	}
	
	@GetMapping("/allRSVN")
    public @ResponseBody Object allRSVN(@RequestParam("petNo") int reservationPetNo){
		System.out.println("������ ��ü");
		//List<RsvnVO> rsvnVOList = service.allRSVN(reservationPetNo);
		//System.out.println(rsvnVOList);
		

		  Map<String, Object> mp = new HashMap<String, Object>();
		  mp.put("data", service.allRSVN(reservationPetNo));
		  
		  Object result = mp;
		  System.out.println(result);
		  return result;

		
		
		//return rsvnVOList;
    }
	
	@GetMapping("/selectRSVN")
    public @ResponseBody RsvnVO selectRSVN(@RequestParam("reservationPetNo") int reservationPetNo, @RequestParam("reservationNo") int reservationNo){
		RsvnVO rsvnVO = new RsvnVO();
		System.out.println(reservationPetNo);
		System.out.println(reservationNo);
		rsvnVO.setReservationPetNo(reservationPetNo);
		rsvnVO.setReservationNo(reservationNo);
		System.out.println("reservationPetNo"+reservationPetNo);
		RsvnVO rsvnVO2 = service.selectRSVN(rsvnVO);
		System.out.println(rsvnVO2);
		return rsvnVO2;
    }
	
	@PostMapping("/allMed")
    public @ResponseBody List<MedVO> allMed(@RequestBody MedVO medVO){
		//@RequestParam("petNo") int petNo, @RequestParam("dtStart") Date dtStart, @RequestParam("dtEnd") Date dtEnd
		System.out.println(medVO.getDtStart());
//		MedVO medVO = new MedVO();
//		medVO.setPetNo(petNo);
//		medVO.setDtEnd(dtEnd);
//		medVO.setDtStart(dtStart);
		List<MedVO> medVOList = service.allMed(medVO);
		System.out.println(medVOList);
		return service.allMed(medVO);
    }
	
	@PostMapping("/insertMemTmt")
	public String insertMemTmt(@RequestBody MedVO medVO, HttpServletRequest request){
		HttpSession session = request.getSession();
		MemberVO member =  (MemberVO) session.getAttribute("member");
		
		medVO.setMemId(member.getId());
		service.insertMemMed(medVO);
		
		return "";
	}
	
	@PostMapping("/deleteMemTmt")
	public String deleteMemTmt(@RequestBody int memMedRecordNo){
		service.deleteMemMed(memMedRecordNo);
		
		return "";
	}
}